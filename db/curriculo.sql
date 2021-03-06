
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DELIMITER $$
CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `salvar_pessoa` (IN `pnomepessoa` VARCHAR(65), IN `psobrenomepessoa` VARCHAR(65), IN `psexopessoa` CHAR(1), IN `pdatanascimentopessoa` DATE, IN `vid_usuario` INT(11), IN `pestado_civil` VARCHAR(12))  NO SQL
BEGIN

	INSERT INTO tb_pessoa (id_pessoa, nomepessoa, sobrenomepessoa, sexopessoa, datanascimentopessoa, id_usuario, estado_civil) VALUES (vid_usuario, pnomepessoa, psobrenomepessoa, psexopessoa, pdatanascimentopessoa, vid_usuario, pestado_civil);

SELECT * FROM tb_pessoa WHERE id_pessoa = vid_usuario;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_delete_experiencias_id` (IN `vid_experiencias` INT, IN `vid_pessoa` INT)  NO SQL
BEGIN

DELETE FROM tb_experiencias WHERE id_experiencias = vid_experiencias;

SELECT * FROM tb_experiencias WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_delete_habilidades_id` (IN `vid_habilidades` INT, IN `vid_pessoa` INT)  NO SQL
BEGIN

DELETE FROM tb_habilidades WHERE id_habilidades = vid_habilidades;

SELECT * FROM tb_habilidades WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_area_interesse` (IN `vid_pessoa` INT, IN `parea_interesse` VARCHAR(255))  NO SQL
BEGIN

	INSERT INTO tb_area_interesse (id_pessoa, area_interesse) VALUES (vid_pessoa, parea_interesse);

	SELECT * FROM tb_area_interesse WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_endereco` (IN `plogradouro_endereco` VARCHAR(60), IN `pcomplemento` VARCHAR(100), IN `pcidade_endereco` VARCHAR(45), IN `pestado_endereco` VARCHAR(45), IN `pcep_endereco` CHAR(8), IN `vid_pessoa` INT, IN `pbairro_endereco` VARCHAR(45), IN `pnumero_endereco` CHAR(8))  NO SQL
BEGIN

INSERT INTO tb_endereco (logradouro_endereco, complemento, cidade_endereco, estado_endereco, cep_endereco, id_pessoa, bairro_endereco, numero_endereco) VALUES (plogradouro_endereco, pcomplemento, pcidade_endereco, pestado_endereco, pcep_endereco, vid_pessoa, pbairro_endereco, pnumero_endereco);

SELECT * FROM tb_endereco WHERE id_endereco = LAST_INSERT_ID(); 
END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_experiencias` (IN `pempresa_experiencias` VARCHAR(100), IN `pcargo_experiencias` VARCHAR(100), IN `pinicio_experiencias` DATE, IN `pfim_experiencias` DATE, IN `vid_pessoa` INT)  NO SQL
BEGIN

INSERT INTO tb_experiencias (empresa_experiencias, cargo_experiencias, inicio_experiencias, fim_experiencias, id_pessoa) VALUES (pempresa_experiencias, pcargo_experiencias, pinicio_experiencias, pfim_experiencias, vid_pessoa);

SELECT * FROM tb_experiencias WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_fone` (IN `pddd_fone` CHAR(2), IN `pnumero_fone` CHAR(9), IN `vid_pessoa` INT)  NO SQL
BEGIN

INSERT INTO tb_fone (ddd_fone, numero_fone, id_pessoa) VALUES (pddd_fone, pnumero_fone, vid_pessoa);

SELECT * FROM tb_fone WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_formacao_academica` (IN `pformacao_academica` VARCHAR(150), IN `pano_formacao_academica` DATE, IN `vid_pessoa` INT, IN `pinstituicao` VARCHAR(150), IN `conclusao` CHAR(10), IN `pinicio_formacao_academica` DATE)  NO SQL
BEGIN

	INSERT INTO tb_formacao_academica (formacao_academica, ano_formacao_academica, id_pessoa, instituicao, conclusao, inicio_formacao_academica) VALUES (pformacao_academica, pano_formacao_academica, vid_pessoa, pinstituicao, conclusao, pinicio_formacao_academica);
    
    SELECT * FROM tb_formacao_academica WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_habilidades` (IN `phabilidade` VARCHAR(500), IN `ptb_habilidadescol` MEDIUMBLOB, IN `vid_pessoa` INT)  NO SQL
BEGIN

INSERT INTO tb_habilidades (habilidade, tb_habilidadescol, id_pessoa) VALUES (phabilidade, ptb_habilidadescol, vid_pessoa);

SELECT * FROM tb_habilidades WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_nascionalidade` (IN `pnascionalidade` VARCHAR(60), IN `vid_pessoa` INT)  NO SQL
BEGIN

INSERT INTO tb_nascionalidade (nascionalidade, id_pessoa) VALUES (pnascionalidade, vid_pessoa);

SELECT * FROM tb_nascionalidade WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_pessoa` (IN `pnomepessoa` VARCHAR(65), IN `psobrenomepessoa` VARCHAR(65), IN `psexopessoa` CHAR(1), IN `pdatanascimentopessoa` DATE, IN `vid_usuario` INT, IN `pestado_civil ` VARCHAR(12))  NO SQL
BEGIN
    
    INSERT INTO tb_pessoa (id_pessoa, nomepessoa, sobrenomepessoa, sexopessoa, datanascimentopessoa, id_usuario, estado_civil) VALUES (vid_usuario, pnomepessoa, psobrenomepessoa, psexopessoa, pdatanascimentopessoa, vid_usuario, pestado_civil);
    
    SELECT * FROM tb_pessoa WHERE id_pessoa = vid_usuario;
    
END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_recuperar_senha` (IN `pid_pessoa` INT)  NO SQL
BEGIN

INSERT INTO tb_recuperar_senha (id_pessoa) VALUES (pid_pessoa);

SELECT * FROM tb_recuperar_senha WHERE id_recuperar_senha = LAST_INSERT_ID();

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_sugestao` (IN `pnome_pessoa` VARCHAR(150), IN `pemail_pessoa` VARCHAR(150), IN `psujestao_pessoa` VARCHAR(255))  NO SQL
BEGIN

INSERT INTO tb_sujestoes (nome_pessoa, email_pessoa, sujestao_pessoa) VALUES (pnome_pessoa, pemail_pessoa, psujestao_pessoa);

SELECT * FROM tb_sujestoes WHERE id_sujestao = LAST_INSERT_ID();

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_salvar_usuario` (IN `pemailusuario` VARCHAR(60), IN `psenhausuario` VARCHAR(60), IN `pinadmin` INT, IN `pinhabilitado` INT, IN `pnomeusuario` VARCHAR(70))  NO SQL
BEGIN
    
    INSERT INTO tb_user (emailusuario, senhausuario, inadmin, inhabilitado, nomeusuario) VALUES (pemailusuario, psenhausuario, pinadmin, pinhabilitado, pnomeusuario);
    
    SELECT * FROM tb_user  WHERE id_usuario = LAST_INSERT_ID();
    
END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_area_interesse` (IN `vid_pessoa` INT, IN `parea_interesse` VARCHAR(255))  NO SQL
BEGIN

	UPDATE tb_area_interesse set id_pessoa = vid_pessoa, area_interesse = 		parea_interesse WHERE id_pessoa = vid_pessoa;
    
    SELECT * FROM tb_area_interesse WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_codigo_usado_tb_recupera_senha` (IN `vid_recuperar_senha` INT)  NO SQL
BEGIN

UPDATE tb_recuperar_senha SET dt_expira = NOW() WHERE id_recuperar_senha = vid_recuperar_senha;

SELECT * FROM tb_recuperar_senha WHERE id_recuperar_senha = vid_recuperar_senha;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_endereco` (IN `plogradouro_endereco` VARCHAR(60), IN `pcomplemento` VARCHAR(100), IN `pcidade_endereco` VARCHAR(45), IN `pestado_endereco` VARCHAR(45), IN `pcep_endereco` CHAR(8), IN `vid_pessoa` INT, IN `pbairro_endereco` VARCHAR(45), IN `pnumero_endereco` CHAR(8))  NO SQL
BEGIN

UPDATE tb_endereco set logradouro_endereco = plogradouro_endereco, complemento = pcomplemento, cidade_endereco = pcidade_endereco, estado_endereco = pestado_endereco, cep_endereco = pcep_endereco, id_pessoa = vid_pessoa, bairro_endereco = pbairro_endereco, numero_endereco = pnumero_endereco WHERE id_pessoa = vid_pessoa;

SELECT * FROM tb_endereco WHERE id_pessoa = vid_pessoa; 
END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_experiencia_id` (IN `pempresa_experiencias` VARCHAR(100), IN `pcargo_experiencias` VARCHAR(100), IN `pinicio_experiencias` DATE, IN `pfim_experiencias` DATE, IN `vid_pessoa` INT, IN `vid_experiencias` INT)  NO SQL
BEGIN

UPDATE tb_experiencias set empresa_experiencias = pempresa_experiencias, cargo_experiencias = pcargo_experiencias, inicio_experiencias = pinicio_experiencias, fim_experiencias = pfim_experiencias WHERE id_experiencias = vid_experiencias;

SELECT * FROM tb_experiencias WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_fone` (IN `pddd_fone` CHAR(2), IN `pnumero_fone` CHAR(9), IN `vid_pessoa` INT)  NO SQL
BEGIN

UPDATE tb_fone set ddd_fone = pddd_fone, numero_fone = pnumero_fone, id_pessoa = vid_pessoa WHERE id_pessoa = vid_pessoa;

SELECT * FROM tb_fone WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_formacao_academica` (IN `pformacao_academica` VARCHAR(150), IN `pano_formacao_academica` DATE, IN `vid_pessoa` INT, IN `pinstituicao` VARCHAR(150), IN `conclusao` CHAR(10), IN `pinicio_formacao_academica` DATE)  NO SQL
BEGIN

UPDATE tb_formacao_academica set formacao_academica = pformacao_academica, ano_formacao_academica = pano_formacao_academica, id_pessoa = vid_pessoa, instituicao = pinstituicao, conclusao = conclusao, inicio_formacao_academica = pinicio_formacao_academica WHERE id_pessoa = vid_pessoa;

SELECT * FROM tb_formacao_academica WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_habilidades` (IN `phabilidade` MEDIUMBLOB, IN `ptb_habilidadescol` MEDIUMBLOB, IN `vid_pessoa` INT)  NO SQL
BEGIN

UPDATE tb_habilidades set habilidade = phabilidade, tb_habilidadescol = ptb_habilidadescol, id_pessoa = vid_pessoa WHERE id_pessoa = vid_pessoa;

SELECT * FROM tb_habilidades WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_habilidades_id` (IN `phabilidade` VARCHAR(500), IN `vid_habilidades` INT, IN `vid_pessoa` INT)  NO SQL
BEGIN

UPDATE tb_habilidades set habilidade = phabilidade WHERE id_habilidades = vid_habilidades;

SELECT * FROM tb_habilidades WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_nascionalidade` (IN `pnascionalidade` VARCHAR(60), IN `vid_pessoa` INT)  NO SQL
BEGIN

UPDATE tb_nascionalidade set nascionalidade = pnascionalidade, id_pessoa = vid_pessoa WHERE id_pessoa = vid_pessoa;

SELECT * FROM tb_nascionalidade WHERE id_pessoa = vid_pessoa;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_pessoa` (IN `pnomepessoa` VARCHAR(65), IN `psobrenomepessoa` VARCHAR(65), IN `psexopessoa` CHAR(1), IN `pdatanascimentopessoa` DATE, IN `vid_usuario` INT, IN `pestado_civil ` VARCHAR(12))  NO SQL
BEGIN
    
    UPDATE tb_pessoa set nomepessoa = pnomepessoa, sobrenomepessoa = 			psobrenomepessoa, sexopessoa = psexopessoa, datanascimentopessoa = 			pdatanascimentopessoa, estado_civil = pestado_civil WHERE id_usuario = 		vid_usuario;
    
    SELECT * FROM tb_pessoa WHERE id_usuario = vid_usuario;
    
END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `sp_up_usuario_nova_senha` (IN `psenhausuario` VARCHAR(60), IN `vid_usuario` INT)  NO SQL
BEGIN

UPDATE tb_user SET senhausuario = psenhausuario WHERE id_usuario = vid_usuario;

SELECT * FROM tb_user WHERE id_usuario = vid_usuario;

END$$

CREATE DEFINER=`unaux_26891980`@`sql302.unaux.com` PROCEDURE `up_pessoa` (IN `pnomepessoa` VARCHAR(65), IN `psobrenomepessoa` VARCHAR(65), IN `psexopessoa` CHAR(1), IN `pdatanascimentopessoa` DATE, IN `vid_usuario` INT, IN `pestado_civil` VARCHAR(12))  NO SQL
BEGIN

UPDATE tb_pessoa set nomepessoa = pnomepessoa, sobrenomepessoa = psobrenomepessoa, sexopessoa = psexopessoa, datanascimentopessoa = pdatanascimentopessoa,  estado_civil = pestado_civil WHERE id_usuario = vid_usuario;

SELECT * FROM tb_pessoa WHERE id_usuario = vid_usuario;

END$$

DELIMITER ;



CREATE TABLE `tb_area_interesse` (
  `id_area_interesse` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `area_interesse` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;


CREATE TABLE `tb_cursos_adicionais` (
  `id_cursos_adicionais` int(11) NOT NULL,
  `dt_cadastro_cursos_adicionais` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descricao_cursos_adicionais` varchar(255) COLLATE utf8_swedish_ci DEFAULT NULL,
  `titulo_cursos_adicionais` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;



CREATE TABLE `tb_endereco` (
  `id_endereco` int(11) NOT NULL,
  `logradouro_endereco` varchar(60) COLLATE utf8_swedish_ci NOT NULL,
  `complemento` varchar(100) COLLATE utf8_swedish_ci DEFAULT NULL,
  `cidade_endereco` varchar(45) COLLATE utf8_swedish_ci NOT NULL,
  `estado_endereco` varchar(45) COLLATE utf8_swedish_ci NOT NULL,
  `cep_endereco` char(8) COLLATE utf8_swedish_ci NOT NULL,
  `dt_cadastro_endereco` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pessoa` int(11) NOT NULL,
  `bairro_endereco` varchar(45) COLLATE utf8_swedish_ci NOT NULL,
  `numero_endereco` char(8) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

CREATE TABLE `tb_experiencias` (
  `id_experiencias` int(11) NOT NULL,
  `dt_cadastro_experiencias` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empresa_experiencias` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `cargo_experiencias` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `inicio_experiencias` date NOT NULL,
  `fim_experiencias` date DEFAULT NULL,
  `id_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

CREATE TABLE `tb_fone` (
  `id_fone` int(11) NOT NULL,
  `ddd_fone` char(2) COLLATE utf8_swedish_ci NOT NULL,
  `numero_fone` char(9) COLLATE utf8_swedish_ci NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `dt_cadastro_fone` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

CREATE TABLE `tb_formacao_academica` (
  `id_formacao_academica` int(11) NOT NULL,
  `dt_cadastro_formacao_academica` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `formacao_academica` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `ano_formacao_academica` date NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `instituicao` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `conclusao` char(10) COLLATE utf8_swedish_ci NOT NULL,
  `inicio_formacao_academica` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

CREATE TABLE `tb_habilidades` (
  `id_habilidades` int(11) NOT NULL,
  `dt_cadastro_habilidades` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `habilidade` varchar(500) COLLATE utf8_swedish_ci NOT NULL,
  `tb_habilidadescol` mediumblob,
  `id_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

CREATE TABLE `tb_nascionalidade` (
  `id_nascionalidade` int(11) NOT NULL,
  `nascionalidade` varchar(60) COLLATE utf8_swedish_ci NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `dt_cadastro_nascionalidade` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;


CREATE TABLE `tb_objetivo` (
  `id_objetivo` int(11) NOT NULL,
  `dt_cadastro_objetivo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descricao_objetivo` mediumblob,
  `id_pessoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

CREATE TABLE `tb_recuperar_senha` (
  `id_recuperar_senha` int(11) NOT NULL,
  `id_pessoa` int(11) NOT NULL,
  `dt_expira` datetime DEFAULT NULL,
  `dt_registro_cadastro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

CREATE TABLE `tb_sujestoes` (
  `id_sujestao` int(11) NOT NULL,
  `nome_pessoa` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `email_pessoa` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `sujestao_pessoa` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

ALTER TABLE `tb_area_interesse`
  ADD PRIMARY KEY (`id_area_interesse`),
  ADD KEY `fk_tb_area_interesse_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_cursos_adicionais`
  ADD PRIMARY KEY (`id_cursos_adicionais`),
  ADD KEY `fk_tb_cursos_adicionais_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_endereco`
  ADD PRIMARY KEY (`id_endereco`),
  ADD KEY `fk_tb_endereco_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_experiencias`
  ADD PRIMARY KEY (`id_experiencias`),
  ADD KEY `fk_tb_experiencias_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_fone`
  ADD PRIMARY KEY (`id_fone`),
  ADD KEY `fk_tb_fone_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_formacao_academica`
  ADD PRIMARY KEY (`id_formacao_academica`),
  ADD KEY `fk_tb_formacao_academica_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_habilidades`
  ADD PRIMARY KEY (`id_habilidades`),
  ADD KEY `fk_tb_habilidades_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_nascionalidade`
  ADD PRIMARY KEY (`id_nascionalidade`),
  ADD KEY `fk_tb_nascionalidade_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_objetivo`
  ADD PRIMARY KEY (`id_objetivo`),
  ADD KEY `fk_tb_objetivo_tb_pessoa1_idx` (`id_pessoa`);

ALTER TABLE `tb_pessoa`
  ADD PRIMARY KEY (`id_pessoa`),
  ADD KEY `fk_id_usuario` (`id_usuario`);

ALTER TABLE `tb_recuperar_senha`
  ADD PRIMARY KEY (`id_recuperar_senha`),
  ADD KEY `fk_recuperar_senha_pessoa` (`id_pessoa`);

ALTER TABLE `tb_sujestoes`
  ADD PRIMARY KEY (`id_sujestao`);

ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_usuario`);


ALTER TABLE `tb_area_interesse`
  MODIFY `id_area_interesse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tb_cursos_adicionais`
  MODIFY `id_cursos_adicionais` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

ALTER TABLE `tb_experiencias`
  MODIFY `id_experiencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `tb_fone`
  MODIFY `id_fone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tb_formacao_academica`
  MODIFY `id_formacao_academica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `tb_habilidades`
  MODIFY `id_habilidades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

ALTER TABLE `tb_nascionalidade`
  MODIFY `id_nascionalidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `tb_objetivo`
  MODIFY `id_objetivo` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_recuperar_senha`
  MODIFY `id_recuperar_senha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

ALTER TABLE `tb_sujestoes`
  MODIFY `id_sujestao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

ALTER TABLE `tb_user`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;


ALTER TABLE `tb_area_interesse`
  ADD CONSTRAINT `fk_tb_area_interesse_tb_pessoa1_idx` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_cursos_adicionais`
  ADD CONSTRAINT `fk_tb_cursos_adicionais_tb_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_endereco`
  ADD CONSTRAINT `fk_tb_endereco_tb_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_experiencias`
  ADD CONSTRAINT `fk_tb_experiencias_tb_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_fone`
  ADD CONSTRAINT `fk_tb_fone_tb_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_formacao_academica`
  ADD CONSTRAINT `fk_tb_formacao_academica_tb_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_habilidades`
  ADD CONSTRAINT `fk_tb_habilidades_tb_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_nascionalidade`
  ADD CONSTRAINT `fk_tb_nascionalidade_tb_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_objetivo`
  ADD CONSTRAINT `fk_tb_objetivo_tb_pessoa1` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_pessoa`
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tb_user` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `tb_recuperar_senha`
  ADD CONSTRAINT `fk_recuperar_senha_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `tb_pessoa` (`id_pessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;