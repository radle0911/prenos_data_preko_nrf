Sad, problem zašto ti je FPS samo 1–1.5 iako si na 2 Mbps i bez ACK-a, zapravo nije u samom nRF čipu, nego u:

1. nRF24L01 throughput limit
   Iako si ga stavio na 2 Mbps, u praksi nRF24 nikad ne izvuče više od ~1–1.2 Mbps efektivnog throughputa (zbog preambule, adrese, CRC, inter-packet gap, itd).
   → To znači da maksimalno možeš prenijeti ~120 kB/s.

Tvoj frame:
19200 elemenata × 2 bajta = 38400 bajtova
Ako bi slao idealno bez gubitaka:

38400 / 120000 ≈ 0.32 s po frameu → teoretski max oko 3 FPS.
Dakle 6 FPS je nerealno za nRF24 na ovako velikim frameovima.

2. Software overhead
   sendFrameNRF() ti pravi ogroman overhead jer svaki put kad sakupiš 32 bajta, ti praviš poziv txDataNRF24L01().
   Ako to funkcija radi tako što kroz SPI byte-by-byte puni TX FIFO, onda gubiš stotine hiljada instrukcija po frameu.
   Na RX strani još gore — ti trenutno radiš byte-po-byte upis (if % 2), što je brutalno sporo.

3. Gdje gubiš FPS
   Čak i da je link perfektan, CPU overhead ubija sve.
   Realno sad si limitiran na 1–1.5 FPS, što je baš ono što vidiš.
