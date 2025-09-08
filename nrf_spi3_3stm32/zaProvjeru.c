#include "nRF24L01/nRF24L01.h"
#include "../spi/spi.h"
#include "../delay/delay.h"
#include <stdint.h>
#include "../usart/usart.h"




volatile uint8_t g_nrf24l01_node_type;

const char c_nrf_master_addr[6] = "MDR01";
const char c_nrf_slave_addr[6] = "SDR00";


volatile uint8_t* g_node_address;
volatile uint8_t nrf_mode;






void initnRF24L01(uint8_t node_type)
{
  // Inicijalizacija na PB11 - PB15
  //wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
  // PB11 - nRF24L01 CE
  // PB12 - nRF24L01 CS
  // PB13 - nRF24L01 CLK
  // PB14 - nRF24L01 MISO
  // PB15 - nRF24L01 MOSI
  //---------------------------------------------------------------------	


  //---------------------------------------------------------------------------------------------
  // Potrebno nam je da odredimo da li zelimo da inicijaliziramo nRF modul
  // kao Tx ili Rx zbog dodjeljivanja adresa.

  g_nrf24l01_node_type = node_type;
  if (g_nrf24l01_node_type == NRF24L01_NODE_TYPE_RX) {
    // inicijaliziramo adresu za prijemnik
    g_node_address = (uint8_t*)c_nrf_slave_addr;    // ovo se koristi za uporedjivanje 2 nRF modula pri komunikaciji izmedju (moraju biti isti na oba)
  }else {                                           // kako bi komunikacija izmedju njih funkcionisala 
    // predajnik
    g_node_address = (uint8_t*)c_nrf_master_addr;
  }

  // RX ≠ uvijek "slave", TX ≠ uvijek "master"
  // Kod nRF24L01 nema pravog “master/slave” kao kod I2C-a.
  // Termin "master/slave" koristi logički:
  // Master = onaj koji inicira komunikaciju (prvi šalje podatke)
  // Slave = onaj koji uglavnom samo sluša i odgovara kad primi podatke

  initSPI2_nRF24lO1_carrier(SPI_BaudRate_Prescaler_8);
  // CS, CLK, MISO, MOSI su podeseni u funkciji iznad. Potrebno je podesiti
  // jos CE (chip enable); 
  //
  // Ovaj pin kontroliše radio modul, ne SPI.
  //
  // U RX modu: CE = HIGH → čip aktivno sluša kanale i prima podatke.
  // U TX modu: CE se drži LOW dok pripremiš podatke u SPI registrima, pa se nakratko digne HIGH da započne slanje.
  // CE = LOW → čip je u standby-u ili konfiguraciji.
  // Ukratko: CE = “počni raditi” prekidač za bežični dio čipa.

  { // podesavanje pina PB11 kao CE (chip enable)
    GPIOB->MODER &= ~GPIO_MODER_MODER11;          // reset moder
    GPIOB->MODER |= GPIO_MODER_MODER11_0;         // output mode
    GPIOB->OTYPER &= ~(0x00C00000);		  // bio podesio : GPIO_OTYPER_OT_11 i nije radilo
    GPIOB->OSPEEDR |= GPIO_OSPEEDER_OSPEEDR11_1;  // fast speed
    //GPIOB->PUPDR &= ~GPIO_PUPDR_PUPDR11;          // 
  }
  //---------------------------------------------------------------------------------------------
  NRF_CE_LOW;     // CE = LOW = “ne radi ništa, čekaj da ti sve podestim”. 
  // Ako je CE HIGH dok podešavaš registre, čip može biti usred prijema/slanja
  // i ignorisati ili pogrešno primiti SPI komande.
  // Zato se uvijek drži CE = LOW dok traje inicijalizacija, a digneš ga tek 
  // kad si sve podesio i spreman za rad.
  //
  // 💡 Ukratko:
  //            CE = LOW = “ne radi ništa, čekaj da ti sve podestim”.
  //---------------------------------------------------------------------------------------------
  //  CS (ili CSN) = chip select. Aktivno stanje mu je LOW (negativna logika).
  SPI2_CS_HIGH;   //  CSN = HIGH = “ne pričam s tobom dok ne budem spreman”.
  //---------------------------------------------------------------------------------------------
  delay_ms(100);  // Razlog:
  // 
  // Nakon napajanja ili resetovanja, nRF24L01-u treba Tpd2stby vrijeme iz datasheet-a 
  // da bi prešao u Standby-I režim (spreman da primi SPI komande).
  // To vrijeme je tipično 100 ms da bude sigurno (iako datasheet kaže da je manje).
  // Ako pokušaš slati SPI komande prerano, čip ih može ignorisati ili raditi nestabilno.
  // 💡 Ukratko:
  //            Delay = “čekam da se čip probudi prije nego što mu počnem pričati”.
  //---------------------------------------------------------------------------------------------

  // sljedece sto nam je potrebno da inicijaliziramo to sve u nRF modul

  //prvo je sto radimo da podesavamo Rx adresu od nRF modula


  setRxAddrNRF24L01((uint8_t *)g_node_address,NRF24L01_RX_ADDR_P1);		        // set Rx address 
  /*
    Postavljanjem adrese u RX_ADDR_P1, omogućavaš modulu da prima podatke koji su poslati na tu adresu.
    Pri komunikaciji, pošiljalac šalje paket na tu adresu, a prijemnik (sa ovom postavljenom adresom u RX_ADDR_P1) ga prihvata.
   */

  conRegNRF24L01(NRF24L01_RF_CH, NRF24L01_ACTIVE_CHANNEL);        			// set active channel
  /*
      Frekvencija = 2400 MHz + (vrijednost * 1 MHz)
      1 – vrijednost koju upisuješ
      Ovdje znači da postavljaš kanal na 1 MHz iznad 2.400 GHz → 2401 MHz.
      Ako bi stavio 40, dobio bi 2.440 GHz, itd.
  */


  conRegNRF24L01(NRF24L01_RX_PW_P0, NRF24L01_PIPE_LENGTH);			// set length of pipe 0
  conRegNRF24L01(NRF24L01_RX_PW_P1, NRF24L01_PIPE_LENGTH);			// set length of pipe 1

  
	

  
  /*
     Zašto se podešava RX_PW_P0 i RX_PW_P1?

        Kod prijema (RX) modul mora znati unaprijed koliko bajtova očekuje u paketu, jer u suprotnom ne zna kad je paket kompletan.
        To se postavlja u RX_PW_Pn registarskim poljima za svaki “pipe” (kanal prijema).
        P0 i P1 su dva najčešće korištena pipe-a jer:
        P0 se automatski koristi za acknowledgment reply adresu kod Auto-ACK-a.
        P1 se obično koristi kao glavna RX adresa za aplikaciju (kao što si ti napravio master/slave adresiranje).
        Ostali pipe-ovi (P2–P5) dijele većinu adrese s P1 i rijetko se koriste u osnovnim primjerima.
*/
  setRxModeNRF24L01();    // podesi nRF da radi kao prijemnik i ukljuci ga da aktivno slusa. || (uključi modul u RX režim)
  flushRxNRF24L01();      // cistimo prijemni FIFO bafer nRF-a.  || (ocisti sve što je bilo primljeno ranije )
  

//uint8_t who = getRegNRF24L01(NRF24L01_CONFIG);
//printUSART2("TEST READ CONFIG = 0x%x\n", who);

}
