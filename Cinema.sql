USE cinema;


CREATE TABLE FILME (
    id_filme VARCHAR(10) NOT NULL PRIMARY KEY,
    genero VARCHAR(20) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    duracao TIME NOT NULL,
    classificaccao VARCHAR(2) NOT NULL
);


CREATE TABLE SALA (
    id_sala VARCHAR(10) NOT NULL PRIMARY KEY,
    numero INT NOT NULL,
    capacidade INT NOT NULL
);


CREATE TABLE SESSAO (
    id_sessao VARCHAR(10) NOT NULL PRIMARY KEY,
    id_filme VARCHAR(10) NOT NULL,
    id_sala VARCHAR(10) NOT NULL,
    horario TIME NOT NULL,
    data_sessao DATE NOT NULL,
    ingressos_vendidos INT NOT NULL DEFAULT 0,
    FOREIGN KEY (id_filme) REFERENCES FILME(id_filme),
    FOREIGN KEY (id_sala) REFERENCES SALA(id_sala)
);


CREATE TABLE INGRESSO (
    id_ingresso VARCHAR(10) NOT NULL PRIMARY KEY,
    id_sessao VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_sessao) REFERENCES SESSAO(id_sessao)
);
