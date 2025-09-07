===================== Promjena iz snapshot u continuous mode ==================

1.  Pravimo novu funkciju :

                "DCMI_Init_OV7670_continuous_mode();"

    - Necemo raditi update preko snapshot funkcije, kompletno nova
    - se pravi funkcija i korsiti za continuous mode.

    -> Sada u ovoj funkciji se mijenj samo stanje:

                    DCMI->CR &= ~DCMI_CR_CM; // continuous mode

---

void initDMA2_for_OV7670_continuous_mode(volatile uint16_t\* buff0, uint16_t tsize);

-> Za ovu funkciju tj init DMA2 se mijenja par stvari i ukljucuje NVIC interupt.
-> Takodjer se pise funkcija u main.c file :

                void DMA2_Stream1_IRQHandler(void)

    - 1. Prvo izvrsavamo da li cirkularni bufer radi.

Primjer izmijenjenog dijela za continuous (jedan buffer, CIRC):
DMA2_Stream1->CR |= DMA_SxCR_CIRC; // circular mode uključen
DMA2_Stream1->CR &= ~DMA_SxCR_DBM; // single buffer

Primjer izmijenjenog dijela za continuous (double buffer):
DMA2_Stream1->CR |= DMA_SxCR_CIRC; // circular mode
DMA2_Stream1->CR |= DMA_SxCR_DBM; // double buffer mode

DMA2_Stream1->M0AR = (uint32_t)buff0;
DMA2_Stream1->M1AR = (uint32_t)buff1;

Pozivom ove linije pocinje prijenost slike iz kamere u frame_buffer
DCMI->CR |= DCMI_CR_CAPTURE; // start capture (DCMI ga automatski gasi kad završi frame)
