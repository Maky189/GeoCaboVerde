create table freguesias (
    id INT,
    nome varchar (255),
    id_conselho INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_conselho) REFERENCES conselhos (id) ON DELETE CASCADE
);

insert into freguesias (id, nome, id_conselho) VALUES (111, "N. S. ROSARIO", 11);
insert into freguesias (id, nome, id_conselho) VALUES (112, "N. S. LIVRAMENTO", 11);
insert into freguesias (id, nome, id_conselho) VALUES (113, "SANTO CRUCIFIXO", 11);
insert into freguesias (id, nome, id_conselho) VALUES (114, "SÃO PEDRO APOSTOLO", 11);
insert into freguesias (id, nome, id_conselho) VALUES (121, "SANTO ANTONIO DAS POMBAS", 12);
insert into freguesias (id, nome, id_conselho) VALUES (131, "SÃO JOÃO BAPTISTA", 13);
insert into freguesias (id, nome, id_conselho) VALUES (132, "SANTO ANDRE", 13);
insert into freguesias (id, nome, id_conselho) VALUES (211, "N. S. DA LUZ", 21);
insert into freguesias (id, nome, id_conselho) VALUES (311, "N. S. DA LAPA", 31);
insert into freguesias (id, nome, id_conselho) VALUES (312, "N. S. DO ROSARIO", 31);
insert into freguesias (id, nome, id_conselho) VALUES (321, "SÃO FRANCISCO DE ASSIS", 32);
insert into freguesias (id, nome, id_conselho) VALUES (411, "N. S. DAS DORES", 41);
insert into freguesias (id, nome, id_conselho) VALUES (511, "SÃO JOÃO BAPTISTA", 51);
insert into freguesias (id, nome, id_conselho) VALUES (512, "SANTA ISABEL", 51);
insert into freguesias (id, nome, id_conselho) VALUES (611, "N. S. DA LUZ", 61);
insert into freguesias (id, nome, id_conselho) VALUES (711, "SANTO AMARO ABADE", 71);
insert into freguesias (id, nome, id_conselho) VALUES (721, "SANTA CATARINA", 72);
insert into freguesias (id, nome, id_conselho) VALUES (731, "SANTIAGO MAIOR", 73);
insert into freguesias (id, nome, id_conselho) VALUES (741, "N. S. DA GRACA", 74);
insert into freguesias (id, nome, id_conselho) VALUES (751, "N. S. DA LUZ", 75);
insert into freguesias (id, nome, id_conselho) VALUES (752, "SÃO NICOLAU TOLENTINO", 75);
insert into freguesias (id, nome, id_conselho) VALUES (761, "SÃO MIGUEL DO ARCANJO", 76);
insert into freguesias (id, nome, id_conselho) VALUES (771, "SÃO SALVADOR DO MUNDO", 77);
insert into freguesias (id, nome, id_conselho) VALUES (781, "SÃO LOURENÇO DOS ÓRGÃOS", 78);
insert into freguesias (id, nome, id_conselho) VALUES (791, "SANTISSIMO NOME DE JESUS", 79);
insert into freguesias (id, nome, id_conselho) VALUES (792, "SÃO JOÃO BAPTISTA", 79);
insert into freguesias (id, nome, id_conselho) VALUES (811, "N. S. DA AJUDA", 81);
insert into freguesias (id, nome, id_conselho) VALUES (821, "SÃO LOURENÇO", 82);
insert into freguesias (id, nome, id_conselho) VALUES (822, "N. S. DA CONCEIÇÃO", 82);
insert into freguesias (id, nome, id_conselho) VALUES (831, "SANTA CATARINA DO FOGO", 83);
insert into freguesias (id, nome, id_conselho) VALUES (911, "SÃO JOÃO BAPTISTA", 91);
insert into freguesias (id, nome, id_conselho) VALUES (912, "N. S. DO MONTE", 91);
