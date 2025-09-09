# STM32 Video Auto Project  

Ovaj repozitorij sadrži kod korišten za završni ispit iz predmeta **MSUT**.  

## Opis projekta  
U okviru fajla `stm32_video_auto_project` primijećen je povećan **CPU overhead** prilikom korištenja akcelerometra.  

### Direktoriji  
- **stm32_tx_rx_video**  
  Kod za prijenos slike preko NRF modula.  
  Dobijen je framerate od ~1 FPS. Ograničenje je uzrokovano CPU-om, i procjena je da bi se moglo poboljšati na maksimalno 2–2.5 FPS.  

- **rx_nrf_car_control**  
  Kod za STM32 pločicu koja prima podatke od STM32 pločice zadužene za prijem slike.  
  - Podaci koji se primaju dolaze od akcelerometra i koristili su se za upravljanje autićem (naprijed–nazad).  
  - Zbog CPU overheada rješenje nije bilo naročito upotrebljivo.  
  - Iskoristiv je dio sa **SPI3 kodom** i podešenim NRF modulom koji radi na frekvenciji 2480 MHz.  

### Ostali fajlovi  
Ostale verzije fajlova na GitHub-u uglavnom su samodokumentovane i same po sebi objašnjavaju svrhu.  

---

## Napomena  
Na laptopu (**Lenovo ThinkPad**) u direktoriju `svi_projekti_msut` nalaze se dodatne verzije za kameru koje omogućavaju direktan prikaz slike:  

**Tok rada:**  
kamera → STM32 → PC (bez prijenosa preko NRF modula).  

- Verzija koja funkcioniše: **_V1.8**  
- Za prikaz slika koristi se `venv` iz direktorija `svi_projekti_msut`.  

**Pokretanje:**  
```bash
source /home/eldar/svi_projekti_msut/venv/bin/activate
python video_prikazV2.py
```
Za dodatne detalje pogledati privatne bilješke (rokovnik).


