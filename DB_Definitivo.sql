SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storedb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `acquisto`
--

CREATE TABLE `acquisto` (
  `id_ordine` int(11) NOT NULL,
  `id_articolo` int(11) NOT NULL,
  `stato` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT 'pending',
  `prezzo` double DEFAULT NULL,
  `data` date NOT NULL,
  `quantità` int(11) NOT NULL,
  `lettura` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Struttura della tabella `articolo`
--

CREATE TABLE `articolo` (
  `id_articolo` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descrizione` text,
  `foto` varchar(255) DEFAULT NULL,
  `prezzo` double NOT NULL,
  `media_recensioni` double NOT NULL DEFAULT '0',
  `n_recensioni` int(11) DEFAULT NULL,
  `negozio` varchar(255) NOT NULL,
  `data_inserimento` date NOT NULL,
  `categoria_1` varchar(255) NOT NULL,
  `categoria_2` varchar(255) DEFAULT NULL,
  `categoria_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `articolo`
--

INSERT INTO `articolo` (`id_articolo`, `nome`, `descrizione`, `foto`, `prezzo`, `media_recensioni`, `n_recensioni`, `negozio`, `data_inserimento`, `categoria_1`, `categoria_2`, `categoria_3`) VALUES
(1, 'AMD Ryzen 5 1600x 3.6AGHz Socket AM4', 'Il Processore AMD Ryzen 5 1600X fa parte della nuova famiglia di processori Ryzen 5, basati su architettura Zen. I processori Ryzen 5 si rivolgono ad appasionati e gamer, assicurando performance senza precedenti con un incremento notevole di prestazioni. I processori appartenenti alla famiglia Ryzen 5 sono caratterizzati dalla presenza della tecnologia SMT (Simultaneous Multi Threading) , che raddoppia il numero di core logici. Come i processori Ryzen 7, anche i nuovi Ryzen 5 arrivano sul mercato con tutte le novità dell\'architettura Zen; prima fra tutte SenseMI, tecnologia che ottimizza prestazioni e consumi del chip, non solo in tempo reale, ma anche con una precisione fino ad ora mai vista. La X nel nome del prodotto denota la presenza della tecnologia XFR (eXtended Frequency Range) , che permette di raggiungere frequenze persino più alte in presenza di un sistema di raffreddamento adeguato. La confezione non include il dissipatore.', 'img_prodotti/ryzen1600x.jpg', '240', '4', 1, 'ipermercato', '2017-09-18', 'CPU', NULL, NULL),
(2, 'Intel Core i5-7600K 3.8GHz 6MB Boxed', 'Fai di più e perdi meno tempo nelle attese grazie ai livelli senza precedenti di potenza e reattività della tecnologia Intel Turbo Boost 2.0.1 2 La batteria che dura a lungo e la ricarica più veloce ti offrono la libertà per sperimentare velocità e prestazioni ottimizzate senza la necessità di una presa di corrente. Crea, modifica e condividi contenuti 4K e a 360 gradi con facilità e scopri la visualizzazione immersiva a tutto schermo 4K e a 360 gradi. In altre parole, il migliore processore Intel è stato migliorato ulteriormente.\r\n\r\nPrestazioni\r\nNumero di core 4\r\n\r\nFrequenza turbo massima 4.20 GHz\r\n\r\nNumero di link QPI 0\r\n\r\nNumero di thread 4\r\n\r\nCache 6 MB SmartCache\r\n\r\nTDP 91 W\r\n\r\nFrequenza base del processore 3.80 GHz\r\n\r\nVelocità del bus 8 GT/s DMI3', 'img_prodotti/inteli56700k.jpg', '225', '1', 5, 'ipermercato', '2017-09-18', 'CPU', NULL, NULL),
(3, 'SSD Samsung 850 EVO 500GB SATA3, 540/520MBs', '<strong>Cos\'è la 3D V-NAND e in che cosa si distingue dalla tecnologia esistente?</strong><br>\r\nL\'esclusiva e innovativa architettura di memoria flash 3D V-NAND di Samsung è un\'assoluta novità che supera le limitazioni di densità, le prestazioni e la durata dell\'attuale architettura planare della NAND tradizionale. La 3D V-NAND del 850 EVO è prodotta impilando verticalmente 32 strati di celle uno sull\'altro invece di ridurre le dimensioni delle celle e cercare di adattarle in uno spazio orizzontale; questo processo porta un miglioramento delle prestazioni a parità di spazio.\r\n<br>\r\n<br>\r\n<strong>Ottimizza le operazioni quotidiane di calcolo con la tecnologia TurboWrite per velocità di lettura / scrittura senza rivali.</strong>\r\nGrazie alla tecnologia TurboWrite di Samsung ottieni prestazioni di lettura / scrittura imbattibili per massimizzare la tua esperienza quotidiana di calcolo. L\'850EVO offre le prestazioni migliori della sua categoria nelle velocità di lettura (549 MB/s) e di scrittura (520 MB/s) sequenziale. **Scrittura random (QD32,120 GB): 36000 IOPS (840 EVO) > 88000 IOPS (850 EVO).\r\n<br>\r\n<br>\r\n<strong>Con la modalità migliorata RAPID sei in pole position.</strong>\r\nAbilita la modalita Rapid dal Software Magician per raddoppiare la velocità di elaborazione dei dati;infatti la modalità Rapid sfrutta la memoria Dram inutilizzata del PC come cache per aumentare le performance . Inoltre grazie alla nuova versione di Magician puoi Rapid utilizzerà fino a 4 GB di Dram (se il pc è dotato di 16 GB di dram).\r\n<br>\r\n<br>\r\n<strong>Durabilità e affidabilità garantite grazie alla tecnologia 3D V-NAND.</strong>\r\nL\'850 EVO offre durabilità e affidabilità garantite raddoppiando i TBW* rispetto alla generazione precedente 840 EVO** oltre a offrire una garanzia di 5 anni. Inoltre le prestazioni del 850 EVO risultano migliori del 30% rispetto al 840 EVO, quando il ssd è sottoposto a carichi di lavoro elevati, dimostrandosi uno dei dispositivi per l\'archiviazione più affidabili***. *TBW: byte totali scritti nel periodo di garanzia. **TBW: 43 (840 EVO) > 75 (850 EVO 120 / 250 GB),150 (850 EVO 500 / 1 TB). ***Prestazioni prolungate nel tempo (250 GB): 3300 IOPS (840 EVO) > 6500 IOPS (850 EVO), prestazioni misurate dopo 12 ore di test di “Scrittura random”.\r\n<br>\r\n<br>\r\n<strong>Aumenta la durata della batteria del tuo notebook grazie alla 3D V-NAND.</strong>\r\nIl nuovo controller del 850 EVO supporta la modalità Sleep del tuo notebook permettendoti di lavorare o videogiocare più a lungo. L\'850 EVO è ora più efficiente dal punto di vista energetico del 25% rispetto all\'840 EVO grazie alla 3D V-NAND che consuma solo metà dell\'energia rispetto a una NAND 2D planare. *Alimentazione (250 GB): 3,2 Watt (840 EVO) > 2,4 Watt (850 EVO).', 'img_prodotti/ssdsamsung500.jpg', '163', '2', 1, 'ipermercato', '2017-09-25', 'Memoria', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `categoria`
--

CREATE TABLE `categoria` (
  `nome_categoria` varchar(255) NOT NULL,
  `desc_categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `categoria`
--

INSERT INTO `categoria` (`nome_categoria`, `desc_categoria`) VALUES
('CPU', NULL),
('Memoria', NULL),
('Hard disk', NULL),
('Schede madri', NULL),
('NAS', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `citta`
--

CREATE TABLE `citta` (
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `citta`
--

INSERT INTO `citta` (`nome`) VALUES
('Pergine Valsugana'),
('Trento');

-- --------------------------------------------------------

--
-- Struttura della tabella `coordinate`
--

CREATE TABLE `coordinate` (
  `id` int(11) NOT NULL,
  `latitudine` double NOT NULL,
  `longitudine` double NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `coordinate`
--

INSERT INTO `coordinate` (`id`, `latitudine`, `longitudine`, `address`) VALUES
(0, 46.059535, 11.233824, 'Via Graberi 70');

-- --------------------------------------------------------

--
-- Struttura della tabella `negozio`
--

CREATE TABLE `negozio` (
  `nome` varchar(255) NOT NULL,
  `venditore` varchar(255) NOT NULL,
  `descrizione` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `negozio` (`nome`, `venditore`, `descrizione`, `foto`, `link`) VALUES
('ipermercato', 'simoberny@gmail.com', 'Vendiamo prodotti rubati!', 'img/store.png', 'wwww.buono.com');


--
-- Struttura della tabella `negozio_fisico`
--

CREATE TABLE `negozio_fisico` (
  `nome` varchar(255) NOT NULL,
  `orari` varchar(255) DEFAULT NULL,
  `coordinate` int(11) NOT NULL,
  `citta` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `negozio_fisico` (`nome`, `orari`, `coordinate`, `citta`) VALUES
('ipermercato', NULL, 0, 'Pergine Valsugana');

--
-- Struttura della tabella `ordine`
--

CREATE TABLE `ordine` (
  `id_ordine` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `totale` double NOT NULL,
  `data` date NOT NULL,
  `pagamento` varchar(255) DEFAULT NULL,
  `modalità` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Struttura della tabella `recensione`
--

CREATE TABLE `recensione` (
  `utente` varchar(255) NOT NULL,
  `id_articolo` int(11) NOT NULL,
  `testo` varchar(255) NOT NULL,
  `voto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `recensione`
--

INSERT INTO `recensione` (`utente`, `id_articolo`, `testo`, `voto`) VALUES
('simoberny@gmail.com', 1, 'Ottimo processore!\r\nQualità  prezzo incredibile, per questo 12 core che può essere utilizzato in ogni ambito!', 4),
('simoberny@gmail.com', 3, 'SSD veramento lento!', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `segnalazione`
--

CREATE TABLE `segnalazione` (
  `id_messaggio` int(11) NOT NULL,
  `id_mittente` varchar(255) NOT NULL,
  `id_destinatario` varchar(255) NOT NULL,
  `id_ordine` int(11) NOT NULL,
  `id_articolo` int(11) NOT NULL,
  `data_acquisto` date NOT NULL,
  `oggetto` varchar(255) NOT NULL,
  `testo` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `stato` varchar(255) DEFAULT 'aperta',
  `conseguenza` varchar(1) DEFAULT NULL,
  `lettura` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Struttura della tabella `utente`
--

CREATE TABLE `utente` (
  `nome` varchar(100) NOT NULL,
  `cognome` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `data_registrazione` date NOT NULL,
  `data_conferma_registrazione` date DEFAULT NULL,
  `tipo_utente` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `utente`
--

INSERT INTO `utente` (`nome`, `cognome`, `email`, `password`, `avatar`, `data_registrazione`, `data_conferma_registrazione`, `tipo_utente`) VALUES
('Simone', 'Bernabè', 'simoberny@gmail.com', '$s0$41010$cYl+r/uOp9O/fo7gtwTqbg==$pNjBoFJ9JKok6C7kDtxWtLkjrdNljyGH7gd7BuL2wEI=', 'avatar/default.png', '2017-09-16', '2017-09-28', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `venditore`
--

CREATE TABLE `venditore` (
  `utente` varchar(255) NOT NULL,
  `data_registrazione` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indici per le tabelle `acquisto`
--
ALTER TABLE `acquisto`
  ADD PRIMARY KEY (`id_ordine`,`id_articolo`,`data`),
  ADD KEY `id_articolo` (`id_articolo`);

--
-- Indici per le tabelle `articolo`
--
ALTER TABLE `articolo`
  ADD PRIMARY KEY (`id_articolo`),
  ADD KEY `categoria_1` (`categoria_1`),
  ADD KEY `categoria_2` (`categoria_2`),
  ADD KEY `categoria_3` (`categoria_3`),
  ADD KEY `negozio` (`negozio`);

--
-- Indici per le tabelle `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`nome_categoria`);

--
-- Indici per le tabelle `citta`
--
ALTER TABLE `citta`
  ADD PRIMARY KEY (`nome`);

--
-- Indici per le tabelle `coordinate`
--
ALTER TABLE `coordinate`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `negozio`
--
ALTER TABLE `negozio`
  ADD PRIMARY KEY (`nome`),
  ADD KEY `venditore` (`venditore`);

--
-- Indici per le tabelle `negozio_fisico`
--
ALTER TABLE `negozio_fisico`
  ADD PRIMARY KEY (`nome`),
  ADD KEY `coordinate` (`coordinate`),
  ADD KEY `citta` (`citta`);

--
-- Indici per le tabelle `ordine`
--
ALTER TABLE `ordine`
  ADD PRIMARY KEY (`id_ordine`,`data`),
  ADD KEY `user` (`user`);

--
-- Indici per le tabelle `recensione`
--
ALTER TABLE `recensione`
  ADD PRIMARY KEY (`utente`,`id_articolo`),
  ADD KEY `id_articolo` (`id_articolo`);

--
-- Indici per le tabelle `segnalazione`
--
ALTER TABLE `segnalazione`
  ADD PRIMARY KEY (`id_messaggio`),
  ADD KEY `id_mittente` (`id_mittente`),
  ADD KEY `id_destinatario` (`id_destinatario`),
  ADD KEY `id_ordine` (`id_ordine`),
  ADD KEY `id_articolo` (`id_articolo`);

--
-- Indici per le tabelle `utente`
--
ALTER TABLE `utente`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `venditore`
--
ALTER TABLE `venditore`
  ADD PRIMARY KEY (`utente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articolo`
--
ALTER TABLE `articolo`
  MODIFY `id_articolo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `ordine`
--
ALTER TABLE `ordine`
  MODIFY `id_ordine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT per la tabella `segnalazione`
--
ALTER TABLE `segnalazione`
  MODIFY `id_messaggio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `acquisto`
--
ALTER TABLE `acquisto`
  ADD CONSTRAINT `acquisto_ibfk_1` FOREIGN KEY (`id_ordine`) REFERENCES `ordine` (`id_ordine`),
  ADD CONSTRAINT `acquisto_ibfk_2` FOREIGN KEY (`id_articolo`) REFERENCES `articolo` (`id_articolo`);

--
-- Limiti per la tabella `articolo`
--
ALTER TABLE `articolo`
  ADD CONSTRAINT `articolo_ibfk_1` FOREIGN KEY (`categoria_1`) REFERENCES `categoria` (`nome_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articolo_ibfk_2` FOREIGN KEY (`categoria_2`) REFERENCES `categoria` (`nome_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articolo_ibfk_3` FOREIGN KEY (`categoria_3`) REFERENCES `categoria` (`nome_categoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articolo_ibfk_4` FOREIGN KEY (`negozio`) REFERENCES `negozio` (`nome`);

--
-- Limiti per la tabella `negozio`
--
ALTER TABLE `negozio`
  ADD CONSTRAINT `negozio_ibfk_1` FOREIGN KEY (`venditore`) REFERENCES `utente` (`email`);

--
-- Limiti per la tabella `negozio_fisico`
--
ALTER TABLE `negozio_fisico`
  ADD CONSTRAINT `negozio_fisico_ibfk_1` FOREIGN KEY (`nome`) REFERENCES `negozio` (`nome`),
  ADD CONSTRAINT `negozio_fisico_ibfk_2` FOREIGN KEY (`coordinate`) REFERENCES `coordinate` (`id`),
  ADD CONSTRAINT `negozio_fisico_ibfk_3` FOREIGN KEY (`citta`) REFERENCES `citta` (`nome`);

--
-- Limiti per la tabella `ordine`
--
ALTER TABLE `ordine`
  ADD CONSTRAINT `ordine_ibfk_1` FOREIGN KEY (`user`) REFERENCES `utente` (`email`);

--
-- Limiti per la tabella `recensione`
--
ALTER TABLE `recensione`
  ADD CONSTRAINT `recensione_ibfk_1` FOREIGN KEY (`utente`) REFERENCES `utente` (`email`),
  ADD CONSTRAINT `recensione_ibfk_2` FOREIGN KEY (`id_articolo`) REFERENCES `articolo` (`id_articolo`);

--
-- Limiti per la tabella `segnalazione`
--
ALTER TABLE `segnalazione`
  ADD CONSTRAINT `segnalazione_ibfk_1` FOREIGN KEY (`id_mittente`) REFERENCES `utente` (`email`),
  ADD CONSTRAINT `segnalazione_ibfk_2` FOREIGN KEY (`id_destinatario`) REFERENCES `utente` (`email`),
  ADD CONSTRAINT `segnalazione_ibfk_3` FOREIGN KEY (`id_ordine`) REFERENCES `acquisto` (`id_ordine`),
  ADD CONSTRAINT `segnalazione_ibfk_4` FOREIGN KEY (`id_articolo`) REFERENCES `acquisto` (`id_articolo`);

--
-- Limiti per la tabella `venditore`
--
ALTER TABLE `venditore`
  ADD CONSTRAINT `venditore_ibfk_1` FOREIGN KEY (`utente`) REFERENCES `utente` (`email`);
COMMIT;

CREATE TRIGGER after_insert_recensione AFTER INSERT ON recensione FOR EACH ROW
    UPDATE articolo
    SET  media_recensioni = (n_recensioni * media_recensioni + NEW.voto) / (n_recensioni + 1),
		 n_recensioni = n_recensioni+1
    WHERE articolo.id_articolo = NEW.id_articolo;



CREATE TRIGGER after_update_recensione AFTER UPDATE ON recensione FOR EACH ROW
    UPDATE articolo
    SET  media_recensioni = (n_recensioni * media_recensioni - OLD.voto + NEW.voto) / (n_recensioni)
    WHERE articolo.id_articolo = NEW.id_articolo;



CREATE TRIGGER after_delete_recensione AFTER DELETE ON recensione FOR EACH ROW
    UPDATE articolo
    SET  media_recensioni = (n_recensioni * media_recensioni - OLD.voto) / (n_recensioni -1),
		 n_recensioni = n_recensioni-1
    WHERE articolo.id_articolo = OLD.id_articolo;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
