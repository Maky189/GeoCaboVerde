create table conselhos (
    id INT,
    nome VARCHAR(255) not null,
    id_ilha INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN key (id_ilha) REFERENCES ilhas (id) ON DELETE CASCADE
);

insert into conselhos (id, nome, id_ilha) values (11, "RIBEIRA GRANDE", 1);
insert into conselhos (id, nome, id_ilha) values (12, "PAUL", 1);
insert into conselhos (id, nome, id_ilha) values (13, "PORTO NOVO", 1);
insert into conselhos (id, nome, id_ilha) values (21, "SÃO VICENTE", 2);
insert into conselhos (id, nome, id_ilha) values (31, "RIBEIRA BRAVA", 3);
insert into conselhos (id, nome, id_ilha) values (32, "TARRAFAL DE SÃO NICOLAU", 3);
insert into conselhos (id, nome, id_ilha) values (41, "SAL", 4);
insert into conselhos (id, nome, id_ilha) values (51, "BOA VISTA", 5);
insert into conselhos (id, nome, id_ilha) values (61, "MAIO", 6);
insert into conselhos (id, nome, id_ilha) values (71, "TARRAFAL", 7);
insert into conselhos (id, nome, id_ilha) values (72, "SANTA CATARINA", 7);
insert into conselhos (id, nome, id_ilha) values (73, "SANTA CRUZ", 7);
insert into conselhos (id, nome, id_ilha) values (74, "PRAIA", 7);
insert into conselhos (id, nome, id_ilha) values (75, "SÃO DOMINGOS", 7);
insert into conselhos (id, nome, id_ilha) values (76, "SÃO MIGUEL", 7);
insert into conselhos (id, nome, id_ilha) values (77, "SÃO SALVADOR DO MUNDO", 7);
insert into conselhos (id, nome, id_ilha) values (78, "SÃO LOURENÇO DOS ÓRGÃOS", 7);
insert into conselhos (id, nome, id_ilha) values (79, "SÃO LOURENÇO DOS ÓRGÃOS", 7);
insert into conselhos (id, nome, id_ilha) values (81, "MOSTEIROS", 8);
insert into conselhos (id, nome, id_ilha) values (82, "SÃO FILIPE", 8);
insert into conselhos (id, nome, id_ilha) values (83, "SANTA CATARINA DO FOGO", 8);
insert into conselhos (id, nome, id_ilha) values (91, "BRAVA", 9);
