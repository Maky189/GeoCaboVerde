create table zonas (
    id INT,
    nome VARCHAR (255),
    id_freguesia INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_freguesia) REFERENCES freguesias (id)
);

insert into zonas (id, nome, id_freguesia) values (11101, "FAJA DOMINGAS BENTA", 111);
insert into zonas (id, nome, id_freguesia) values (11102, "LOMBO BRANCO", 111);
insert into zonas (id, nome, id_freguesia) values (11103, "LUGAR DE GUENE", 111);
insert into zonas (id, nome, id_freguesia) values (11104, "MONTE JOANA", 111);
insert into zonas (id, nome, id_freguesia) values (11105, "PINHAO", 111);
insert into zonas (id, nome, id_freguesia) values (11106, "SINAGOGA", 111);
insert into zonas (id, nome, id_freguesia) values (11107, "VILA RIBEIRA GRANDE (US)", 111);
insert into zonas (id, nome, id_freguesia) values (11108, "VILA RIBEIRA GRANDE (RU)", 111);
insert into zonas (id, nome, id_freguesia) values (11109, "XOXO", 111);
insert into zonas (id, nome, id_freguesia) values (11201, "FONTAINHAS", 112);
insert into zonas (id, nome, id_freguesia) values (11202, "VILA DE PONTA DO SOL", 112);
insert into zonas (id, nome, id_freguesia) values (11301, "BOCA DE AMBAS RIBEIRAS", 113);
insert into zonas (id, nome, id_freguesia) values (11302, "BOCA DE CORUJA", 113);
insert into zonas (id, nome, id_freguesia) values (11303, "BOCA DE JOAO AFONSO", 113);
insert into zonas (id, nome, id_freguesia) values (11304, "CAIBROS", 113);
insert into zonas (id, nome, id_freguesia) values (11305, "CHA DE PEDRAS", 113);
insert into zonas (id, nome, id_freguesia) values (11306, "COCULI", 113);
insert into zonas (id, nome, id_freguesia) values (11307, "CORDA II", 113);
insert into zonas (id, nome, id_freguesia) values (11308, "FIGUEIRAL", 113);
insert into zonas (id, nome, id_freguesia) values (11309, "JOAO AFONSO", 113);
insert into zonas (id, nome, id_freguesia) values (11310, "LAGOA III", 113);
insert into zonas (id, nome, id_freguesia) values (11311, "LOMBO SANTA", 113);
insert into zonas (id, nome, id_freguesia) values (11312, "RIBEIRAO", 113);
insert into zonas (id, nome, id_freguesia) values (11401, "CHA DE IGREJA", 114);
insert into zonas (id, nome, id_freguesia) values (11402, "FIGUEIRAS", 114);
insert into zonas (id, nome, id_freguesia) values (11403, "GARCA DE CIMA", 114);
insert into zonas (id, nome, id_freguesia) values (11404, "LAGOA I", 114);
insert into zonas (id, nome, id_freguesia) values (11405, "RIBEIRA ALTA", 114);
insert into zonas (id, nome, id_freguesia) values (12101, "CABO DA RIBEIRA", 121);
insert into zonas (id, nome, id_freguesia) values (12102, "CAMPO DE CAO", 121);
insert into zonas (id, nome, id_freguesia) values (12103, "EITO", 121);
insert into zonas (id, nome, id_freguesia) values (12104, "PICO DA CRUZ", 121);
insert into zonas (id, nome, id_freguesia) values (12105, "RIBEIRA DAS POMBAS", 121);
insert into zonas (id, nome, id_freguesia) values (12106, "RIBEIRAOZINHO", 121);
insert into zonas (id, nome, id_freguesia) values (12107, "SANTA ISABEL", 121);
insert into zonas (id, nome, id_freguesia) values (12108, "VILA DAS POMBAS (RS)", 121);
insert into zonas (id, nome, id_freguesia) values (12109, "VILA DAS POMBAS (US)", 121);
insert into zonas (id, nome, id_freguesia) values (12110, "FIGUEIRAL", 121);
insert into zonas (id, nome, id_freguesia) values (12111, "JANELA", 121);
insert into zonas (id, nome, id_freguesia) values (13101, "AGUA DOS VELHOS", 131);
insert into zonas (id, nome, id_freguesia) values (13102, "CATANO", 131);
insert into zonas (id, nome, id_freguesia) values (13103, "CHA DE MORTE", 131);
insert into zonas (id, nome, id_freguesia) values (13104, "CIRIO", 131);
insert into zonas (id, nome, id_freguesia) values (13105, "CURRAL DAS VACAS", 131);
insert into zonas (id, nome, id_freguesia) values (13106, "LAGOA II", 131);
insert into zonas (id, nome, id_freguesia) values (13107, "LAGOA", 131);
insert into zonas (id, nome, id_freguesia) values (13108, "LAJEDO", 131);
insert into zonas (id, nome, id_freguesia) values (13109, "LOMBO DAS LANCAS", 131);
insert into zonas (id, nome, id_freguesia) values (13110, "LOMBO DE FIGUEIRA", 131);
insert into zonas (id, nome, id_freguesia) values (13111, "MANUEL LOPES", 131);
insert into zonas (id, nome, id_freguesia) values (13112, "MATO ESTREITO", 131);
insert into zonas (id, nome, id_freguesia) values (13113, "MORRO VENTO", 131);
insert into zonas (id, nome, id_freguesia) values (13114, "PEDRA DE JORGE", 131);
insert into zonas (id, nome, id_freguesia) values (13115, "JOAO BENTO / RIBEIRA DOS BODES", 131);
insert into zonas (id, nome, id_freguesia) values (13116, "RIBEIRA FRIA", 131);
insert into zonas (id, nome, id_freguesia) values (13117, "RIBEIRA TORTA", 131);
insert into zonas (id, nome, id_freguesia) values (13118, "RIBEIRAO FUNDO", 131);
insert into zonas (id, nome, id_freguesia) values (13120, "TABUGA", 131);
insert into zonas (id, nome, id_freguesia) values (13121, "TARRAFAL DE M. TRIGO", 131);
insert into zonas (id, nome, id_freguesia) values (13122, "VILA DO PORTO NOVO (US)", 131);
insert into zonas (id, nome, id_freguesia) values (13123, "CASA DO MEIO", 131);
insert into zonas (id, nome, id_freguesia) values (13124, "ÁGUA DAS CALDEIRAS", 131);
insert into zonas (id, nome, id_freguesia) values (13201, "ALTO MIRA", 132);
insert into zonas (id, nome, id_freguesia) values (13202, "CHA DE BRANQUINHO", 132);
insert into zonas (id, nome, id_freguesia) values (13203, "CHA DE NORTE", 132);
insert into zonas (id, nome, id_freguesia) values (13204, "JORGE LUIS", 132);
insert into zonas (id, nome, id_freguesia) values (13205, "MARTIENE", 132);
insert into zonas (id, nome, id_freguesia) values (13206, "MONTE TRIGO", 132);
insert into zonas (id, nome, id_freguesia) values (13207, "NORTE", 132);
insert into zonas (id, nome, id_freguesia) values (13208, "RIBEIRA DA CRUZ", 132);
insert into zonas (id, nome, id_freguesia) values (21101, "CIDADE DO MINDELO", 211);
insert into zonas (id, nome, id_freguesia) values (21102, "LAMEIRAO", 211);
insert into zonas (id, nome, id_freguesia) values (21103, "RIBEIRA JULIÃO", 211);
insert into zonas (id, nome, id_freguesia) values (21104, "RIBEIRA DA VINHA", 211);
insert into zonas (id, nome, id_freguesia) values (21105, "RIBEIRA DE CALHAU", 211);
insert into zonas (id, nome, id_freguesia) values (21106, "SALAMANSA", 211);
insert into zonas (id, nome, id_freguesia) values (21107, "SÃO PEDRO", 211);
insert into zonas (id, nome, id_freguesia) values (31101, "COVOADA", 311);
insert into zonas (id, nome, id_freguesia) values (31102, "ESTANCIA DE BRAZ", 311);
insert into zonas (id, nome, id_freguesia) values (31103, "FAJA DE BAIXO", 311);
insert into zonas (id, nome, id_freguesia) values (31104, "QUEIMADAS", 311);
insert into zonas (id, nome, id_freguesia) values (31105, "RIBEIRA FUNDA", 311);
insert into zonas (id, nome, id_freguesia) values (31201, "AGUA DAS PATAS", 312);
insert into zonas (id, nome, id_freguesia) values (31202, "BELEM", 312);
insert into zonas (id, nome, id_freguesia) values (31203, "BOQUEIRAO", 312);
insert into zonas (id, nome, id_freguesia) values (31205, "CACHACO", 312);
insert into zonas (id, nome, id_freguesia) values (31206, "CALEIJAO", 312);
insert into zonas (id, nome, id_freguesia) values (31207, "CAMPINHO", 312);
insert into zonas (id, nome, id_freguesia) values (31208, "CARRICAL", 312);
insert into zonas (id, nome, id_freguesia) values (31209, "CARVOEIROS", 312);
insert into zonas (id, nome, id_freguesia) values (31210, "COELHA", 312);
insert into zonas (id, nome, id_freguesia) values (31211, "FAJA", 312);
insert into zonas (id, nome, id_freguesia) values (31212, "FIGUEIRA DE COCHO", 312);
insert into zonas (id, nome, id_freguesia) values (31217, "JUNCALINHO", 312);
insert into zonas (id, nome, id_freguesia) values (31218, "LOMPELADO", 312);
insert into zonas (id, nome, id_freguesia) values (31219, "MORRO", 312);
insert into zonas (id, nome, id_freguesia) values (31220, "MORRO ALTO", 312);
insert into zonas (id, nome, id_freguesia) values (31221, "MORRO BRAZ", 312);
insert into zonas (id, nome, id_freguesia) values (31224, "PREGUICA", 312);
insert into zonas (id, nome, id_freguesia) values (31227, "TALHO", 312);
insert into zonas (id, nome, id_freguesia) values (31228, "VILA DA RIBEIRA BRAVA (US)", 312);
insert into zonas (id, nome, id_freguesia) values (32101, "CABECALINHO", 321);
insert into zonas (id, nome, id_freguesia) values (32102, "FONTAINHAS", 321);
insert into zonas (id, nome, id_freguesia) values (32103, "FRAGATA", 321);
insert into zonas (id, nome, id_freguesia) values (32104, "HORTELA", 321);
insert into zonas (id, nome, id_freguesia) values (32105, "PALHAL", 321);
insert into zonas (id, nome, id_freguesia) values (32106, "PRAIA BRANCA", 321);
insert into zonas (id, nome, id_freguesia) values (32107, "RIBEIRA DOS CALHAUS", 321);
insert into zonas (id, nome, id_freguesia) values (32108, "RIBEIRA PRATA", 321);
insert into zonas (id, nome, id_freguesia) values (32109, "VILA DO TARRAFAL (URBANO)", 321);
insert into zonas (id, nome, id_freguesia) values (41101, "PALMEIRA", 411);
insert into zonas (id, nome, id_freguesia) values (41102, "PEDRA DO LUME", 411);
insert into zonas (id, nome, id_freguesia) values (41103, "VILA DE SANTA MARIA (RU)", 411);
insert into zonas (id, nome, id_freguesia) values (41104, "VILA DE SANTA MARIA (US)", 411);
insert into zonas (id, nome, id_freguesia) values (41105, "VILA DOS ESPARGOS (RURAL)", 411);
insert into zonas (id, nome, id_freguesia) values (41106, "VILA DOS ESPARGOS (US)", 411);
insert into zonas (id, nome, id_freguesia) values (51101, "CABEÇA DOS TARRAFES", 511);
insert into zonas (id, nome, id_freguesia) values (51102, "FUNDO DAS FIGUEIRAS", 511);
insert into zonas (id, nome, id_freguesia) values (51103, "JOÃO GALEGO", 511);
insert into zonas (id, nome, id_freguesia) values (51201, "BOFARREIRA", 512);
insert into zonas (id, nome, id_freguesia) values (51202, "ESTÂNCIA DE BAIXO", 512);
insert into zonas (id, nome, id_freguesia) values (51203, "POVOAÇÃO VELHA", 512);
insert into zonas (id, nome, id_freguesia) values (51204, "RABIL", 512);
insert into zonas (id, nome, id_freguesia) values (51205, "VILA DE SAL REI (US)", 512);
insert into zonas (id, nome, id_freguesia) values (61101, "BARREIRO", 611);
insert into zonas (id, nome, id_freguesia) values (61102, "CALHETA", 611);
insert into zonas (id, nome, id_freguesia) values (61103, "CASCABULHO", 611);
insert into zonas (id, nome, id_freguesia) values (61104, "FIGUEIRA", 611);
insert into zonas (id, nome, id_freguesia) values (61105, "MORRINHO", 611);
insert into zonas (id, nome, id_freguesia) values (61106, "MORRO", 611);
insert into zonas (id, nome, id_freguesia) values (61107, "PEDRO VAZ", 611);
insert into zonas (id, nome, id_freguesia) values (61108, "PILÃO CÃO / ALCATRAZ", 611);
insert into zonas (id, nome, id_freguesia) values (61109, "PRAIA GONÇALO", 611);
insert into zonas (id, nome, id_freguesia) values (61110, "RIBEIRA DOM JOAO", 611);
insert into zonas (id, nome, id_freguesia) values (61111, "VILA DO PORTO INGLES (US)", 611);
insert into zonas (id, nome, id_freguesia) values (61112, "PILÃO CÃO", 611);
insert into zonas (id, nome, id_freguesia) values (61113, "SANTO ANTÓNIO", 611);
insert into zonas (id, nome, id_freguesia) values (71101, "ACHADA BISCANHOS", 711);
insert into zonas (id, nome, id_freguesia) values (71102, "ACHADA LAGOA", 711);
insert into zonas (id, nome, id_freguesia) values (71103, "ACHADA LONGUEIRA", 711);
insert into zonas (id, nome, id_freguesia) values (71104, "ACHADA MEIO", 711);
insert into zonas (id, nome, id_freguesia) values (71105, "ACHADA MOIRAO", 711);
insert into zonas (id, nome, id_freguesia) values (71106, "ACHADA TENDA", 711);
insert into zonas (id, nome, id_freguesia) values (71107, "BISCAINHOS", 711);
insert into zonas (id, nome, id_freguesia) values (71108, "CHAO BOM", 711);
insert into zonas (id, nome, id_freguesia) values (71109, "CURRAL VELHO", 711);
insert into zonas (id, nome, id_freguesia) values (71110, "FAZENDA", 711);
insert into zonas (id, nome, id_freguesia) values (71111, "FIGUEIRA MUITA", 711);
insert into zonas (id, nome, id_freguesia) values (71112, "LAGOA", 711);
insert into zonas (id, nome, id_freguesia) values (71113, "MATO BRAZIL", 711);
insert into zonas (id, nome, id_freguesia) values (71114, "MATO MENDES", 711);
insert into zonas (id, nome, id_freguesia) values (71115, "MILHO BRANCO", 711);
insert into zonas (id, nome, id_freguesia) values (71116, "PONTA LOBRAO", 711);
insert into zonas (id, nome, id_freguesia) values (71117, "RIBEIRA DA PRATA", 711);
insert into zonas (id, nome, id_freguesia) values (71118, "RIBEIRAO SAL", 711);
insert into zonas (id, nome, id_freguesia) values (71119, "TRAS OS MONTES", 711);
insert into zonas (id, nome, id_freguesia) values (71120, "VILA DO TARRAFAL (US)", 711);
insert into zonas (id, nome, id_freguesia) values (72101, "ACHADA GALEGO", 721);
insert into zonas (id, nome, id_freguesia) values (72102, "ACHADA GOMES", 721);
insert into zonas (id, nome, id_freguesia) values (72103, "ACHADA LAZAO", 721);
insert into zonas (id, nome, id_freguesia) values (72104, "ACHADA LEITE", 721);
insert into zonas (id, nome, id_freguesia) values (72105, "ACHADA LEM", 721);
insert into zonas (id, nome, id_freguesia) values (72106, "ACHADA PONTA", 721);
insert into zonas (id, nome, id_freguesia) values (72107, "ACHADA TOSSA", 721);
insert into zonas (id, nome, id_freguesia) values (72108, "AGUAS PODRES", 721);
insert into zonas (id, nome, id_freguesia) values (72109, "ARRIBADA", 721);
insert into zonas (id, nome, id_freguesia) values (72110, "BANANA SEMEDO", 721);
insert into zonas (id, nome, id_freguesia) values (72111, "BOA ENTRADA", 721);
insert into zonas (id, nome, id_freguesia) values (72112, "BOA ENTRADINHA", 721);
insert into zonas (id, nome, id_freguesia) values (72113, "BOMBARDEIRO (ENGENHOS)", 721);
insert into zonas (id, nome, id_freguesia) values (72114, "CHA DE LAGOA", 721);
insert into zonas (id, nome, id_freguesia) values (72115, "CHA DE TANQUE", 721);
insert into zonas (id, nome, id_freguesia) values (72116, "CHARCO", 721);
insert into zonas (id, nome, id_freguesia) values (72117, "CRUZ GRANDE", 721);
insert into zonas (id, nome, id_freguesia) values (72118, "ENTRE PICOS", 721);
insert into zonas (id, nome, id_freguesia) values (72119, "ENTRE PICOS DE REDA", 721);
insert into zonas (id, nome, id_freguesia) values (72120, "FIGUEIRA DAS NAUS", 721);
insert into zonas (id, nome, id_freguesia) values (72121, "FONTEANA", 721);
insert into zonas (id, nome, id_freguesia) values (72122, "FONTE LIMA", 721);
insert into zonas (id, nome, id_freguesia) values (72123, "FURNA", 721);
insert into zonas (id, nome, id_freguesia) values (72124, "GAMCHEMBA", 721);
insert into zonas (id, nome, id_freguesia) values (72125, "GIL BISPO", 721);
insert into zonas (id, nome, id_freguesia) values (72126, "JAPLUMA", 721);
insert into zonas (id, nome, id_freguesia) values (72127, "JOAO BERNARDO", 721);
insert into zonas (id, nome, id_freguesia) values (72128, "JOAO DIAS", 721);
insert into zonas (id, nome, id_freguesia) values (72129, "JUNCO", 721);
insert into zonas (id, nome, id_freguesia) values (72130, "LIBRAO", 721);
insert into zonas (id, nome, id_freguesia) values (72131, "LUGAR VELHO", 721);
insert into zonas (id, nome, id_freguesia) values (72132, "MANCHOLY", 721);
insert into zonas (id, nome, id_freguesia) values (72133, "MATO BAIXO", 721);
insert into zonas (id, nome, id_freguesia) values (72134, "MATO GEGE", 721);
insert into zonas (id, nome, id_freguesia) values (72135, "MATO SANCHO", 721);
insert into zonas (id, nome, id_freguesia) values (72136, "PALHA CARGA", 721);
insert into zonas (id, nome, id_freguesia) values (72137, "PATA BRAVA", 721);
insert into zonas (id, nome, id_freguesia) values (72138, "PAU VERDE", 721);
insert into zonas (id, nome, id_freguesia) values (72139, "PEDRA BARRO", 721);
insert into zonas (id, nome, id_freguesia) values (72141, "PINGO CHUVA", 721);
insert into zonas (id, nome, id_freguesia) values (72142, "PINHA DOS ENGENHOS", 721);
insert into zonas (id, nome, id_freguesia) values (72143, "RIBEIRA ACIMA", 721);
insert into zonas (id, nome, id_freguesia) values (72144, "RIBEIRA DA BARCA", 721);
insert into zonas (id, nome, id_freguesia) values (72145, "RIBEIRAO ISABEL", 721);
insert into zonas (id, nome, id_freguesia) values (72146, "RIBEIRAO MANUEL", 721);
insert into zonas (id, nome, id_freguesia) values (72147, "RINCAO", 721);
insert into zonas (id, nome, id_freguesia) values (72148, "SALTOS ACIMA", 721);
insert into zonas (id, nome, id_freguesia) values (72149, "SEDEGUMA", 721);
insert into zonas (id, nome, id_freguesia) values (72150, "SERRA MALAGUETA", 721);
insert into zonas (id, nome, id_freguesia) values (72151, "TOMBA TOURO", 721);
insert into zonas (id, nome, id_freguesia) values (72152, "VILA DE ASSOMADA", 721);
insert into zonas (id, nome, id_freguesia) values (72153, "FUNDURA", 721);
insert into zonas (id, nome, id_freguesia) values (73101, "ACHADA BELBEL", 731);
insert into zonas (id, nome, id_freguesia) values (73102, "ACHADA FAZENDA", 731);
insert into zonas (id, nome, id_freguesia) values (73103, "ACHADA PONTA", 731);
insert into zonas (id, nome, id_freguesia) values (73104, "BOAVENTURA", 731);
insert into zonas (id, nome, id_freguesia) values (73105, "BOCA LARGA", 731);
insert into zonas (id, nome, id_freguesia) values (73106, "CANCELO", 731);
insert into zonas (id, nome, id_freguesia) values (73107, "CHA DE SILVA", 731);
insert into zonas (id, nome, id_freguesia) values (73108, "JULANGUE", 731);
insert into zonas (id, nome, id_freguesia) values (73109, "LIBRAO", 731);
insert into zonas (id, nome, id_freguesia) values (73110, "MATINHO", 731);
insert into zonas (id, nome, id_freguesia) values (73111, "MONTE NEGRO", 731);
insert into zonas (id, nome, id_freguesia) values (73112, "PORTO MADEIRA", 731);
insert into zonas (id, nome, id_freguesia) values (73113, "REBELO", 731);
insert into zonas (id, nome, id_freguesia) values (73114, "RENQUE PURGA", 731);
insert into zonas (id, nome, id_freguesia) values (73115, "RIBEIRA SECA", 731);
insert into zonas (id, nome, id_freguesia) values (73116, "RIBEIRAO ALMACO", 731);
insert into zonas (id, nome, id_freguesia) values (73117, "RIBEIRAO BOI", 731);
insert into zonas (id, nome, id_freguesia) values (73118, "ROCHA LAMA", 731);
insert into zonas (id, nome, id_freguesia) values (73119, "SALTOS ABAIXO", 731);
insert into zonas (id, nome, id_freguesia) values (73120, "SANTA CRUZ", 731);
insert into zonas (id, nome, id_freguesia) values (73121, "SÃO CRISTOVAO", 731);
insert into zonas (id, nome, id_freguesia) values (73122, "SERELHO", 731);
insert into zonas (id, nome, id_freguesia) values (73123, "VILA DE PEDRA BADEJO", 731);
insert into zonas (id, nome, id_freguesia) values (73124, "ACHADA LAJE", 731);
insert into zonas (id, nome, id_freguesia) values (74103, "CIDADE DA PRAIA", 741);
insert into zonas (id, nome, id_freguesia) values (74104, "COSTA ACHADA", 741);
insert into zonas (id, nome, id_freguesia) values (74105, "PALMAREJO GRANDE", 741);
insert into zonas (id, nome, id_freguesia) values (74106, "PEDREGAL", 741);
insert into zonas (id, nome, id_freguesia) values (74107, "SAO FRANCISCO", 741);
insert into zonas (id, nome, id_freguesia) values (74108, "SAO MARTINHO GRANDE - NSGRAÇA", 741);
insert into zonas (id, nome, id_freguesia) values (74109, "SAO MARTINHO PEQUENO", 741);
insert into zonas (id, nome, id_freguesia) values (74110, "SAO TOME", 741);
insert into zonas (id, nome, id_freguesia) values (74111, "LEM DIAS", 741);
insert into zonas (id, nome, id_freguesia) values (74112, "PONTA DO SOL", 741);
insert into zonas (id, nome, id_freguesia) values (75101, "ACHADA BALEIA", 751);
insert into zonas (id, nome, id_freguesia) values (75102, "BAIA", 751);
insert into zonas (id, nome, id_freguesia) values (75103, "CANCELO", 751);
insert into zonas (id, nome, id_freguesia) values (75104, "CHAO DE COQUEIRO", 751);
insert into zonas (id, nome, id_freguesia) values (75105, "DOBE", 751);
insert into zonas (id, nome, id_freguesia) values (75106, "MILHO BRANCO", 751);
insert into zonas (id, nome, id_freguesia) values (75107, "PORTAL", 751);
insert into zonas (id, nome, id_freguesia) values (75108, "PRAIA BAIXO", 751);
insert into zonas (id, nome, id_freguesia) values (75109, "PRAIA FORMOSA", 751);
insert into zonas (id, nome, id_freguesia) values (75110, "VALE DA CUSTA", 751);
insert into zonas (id, nome, id_freguesia) values (75201, "ACHADA MITRA", 752);
insert into zonas (id, nome, id_freguesia) values (75202, "AGUA DE GATO", 752);
insert into zonas (id, nome, id_freguesia) values (75203, "BANANA", 752);
insert into zonas (id, nome, id_freguesia) values (75204, "CHAMINE", 752);
insert into zonas (id, nome, id_freguesia) values (75205, "DACABALAIO", 752);
insert into zonas (id, nome, id_freguesia) values (75206, "FONTE ALMEIDA", 752);
insert into zonas (id, nome, id_freguesia) values (75207, "GUDIM", 752);
insert into zonas (id, nome, id_freguesia) values (75208, "LAGOA", 752);
insert into zonas (id, nome, id_freguesia) values (75209, "MATO AFONSO", 752);
insert into zonas (id, nome, id_freguesia) values (75210, "MENDES FALEIRO CABRAL", 752);
insert into zonas (id, nome, id_freguesia) values (75211, "MENDES FALEIRO RENDEIRO", 752);
insert into zonas (id, nome, id_freguesia) values (75212, "NORA", 752);
insert into zonas (id, nome, id_freguesia) values (75213, "PO DE SACO", 752);
insert into zonas (id, nome, id_freguesia) values (75214, "RIBEIRAO CHIQUEIRO", 752);
insert into zonas (id, nome, id_freguesia) values (75215, "ROBAO DE CAL", 752);
insert into zonas (id, nome, id_freguesia) values (75216, "RUI VAZ", 752);
insert into zonas (id, nome, id_freguesia) values (75217, "VARZEA DA IGREJA", 752);
insert into zonas (id, nome, id_freguesia) values (75218, "VENEZA", 752);
insert into zonas (id, nome, id_freguesia) values (76102, "ACHADA MONTE", 761);
insert into zonas (id, nome, id_freguesia) values (76103, "CALHETA DE S.MIGUEL (SU)", 761);
insert into zonas (id, nome, id_freguesia) values (76104, "CASA BRANCA", 761);
insert into zonas (id, nome, id_freguesia) values (76105, "CHA DE PONTA", 761);
insert into zonas (id, nome, id_freguesia) values (76106, "CUTELO GOMES", 761);
insert into zonas (id, nome, id_freguesia) values (76107, "ESPINHO BRANCO", 761);
insert into zonas (id, nome, id_freguesia) values (76108, "GONGON", 761);
insert into zonas (id, nome, id_freguesia) values (76109, "MACHADO", 761);
insert into zonas (id, nome, id_freguesia) values (76110, "MATO CORREIA", 761);
insert into zonas (id, nome, id_freguesia) values (76111, "MONTE BODE", 761);
insert into zonas (id, nome, id_freguesia) values (76112, "MONTE POUSADA", 761);
insert into zonas (id, nome, id_freguesia) values (76113, "PALHA CARGA", 761);
insert into zonas (id, nome, id_freguesia) values (76114, "PEDRA BARRO", 761);
insert into zonas (id, nome, id_freguesia) values (76115, "PEDRA SERRADO", 761);
insert into zonas (id, nome, id_freguesia) values (76116, "PILAO CAO", 761);
insert into zonas (id, nome, id_freguesia) values (76117, "PONTA VERDE", 761);
insert into zonas (id, nome, id_freguesia) values (76118, "PRINCIPAL", 761);
insert into zonas (id, nome, id_freguesia) values (76119, "RIBEIRAO MILHO", 761);
insert into zonas (id, nome, id_freguesia) values (76120, "RIBEIRETA", 761);
insert into zonas (id, nome, id_freguesia) values (76121, "TAGARRA", 761);
insert into zonas (id, nome, id_freguesia) values (76122, "VARANDA", 761);
insert into zonas (id, nome, id_freguesia) values (76123, "XAXA", 761);
insert into zonas (id, nome, id_freguesia) values (76124, "IGREJA", 761);
insert into zonas (id, nome, id_freguesia) values (77101, "ABOBOREIRO", 771);
insert into zonas (id, nome, id_freguesia) values (77102, "VILA DE ACHADA IGREJA (URBANO)", 771);
insert into zonas (id, nome, id_freguesia) values (77103, "ACHADA LEITAO", 771);
insert into zonas (id, nome, id_freguesia) values (77104, "BABOSA", 771);
insert into zonas (id, nome, id_freguesia) values (77105, "BURBUR", 771);
insert into zonas (id, nome, id_freguesia) values (77106, "COVAO GRANDE", 771);
insert into zonas (id, nome, id_freguesia) values (77107, "DEGREDO", 771);
insert into zonas (id, nome, id_freguesia) values (77108, "FAVETA", 771);
insert into zonas (id, nome, id_freguesia) values (77109, "JALALO RAMOS", 771);
insert into zonas (id, nome, id_freguesia) values (77111, "LEITAO GRANDE", 771);
insert into zonas (id, nome, id_freguesia) values (77112, "LEITAOZINHO", 771);
insert into zonas (id, nome, id_freguesia) values (77113, "MANHANGA", 771);
insert into zonas (id, nome, id_freguesia) values (77114, "MATO FORTES", 771);
insert into zonas (id, nome, id_freguesia) values (77115, "MATO LIMAO", 771);
insert into zonas (id, nome, id_freguesia) values (77116, "PICOS ACIMA", 771);
insert into zonas (id, nome, id_freguesia) values (77117, "PICO FREIRE", 771);
insert into zonas (id, nome, id_freguesia) values (77118, "PURGUEIRA", 771);
insert into zonas (id, nome, id_freguesia) values (77119, "REBELO", 771);
insert into zonas (id, nome, id_freguesia) values (78101, "ACHADA COSTA", 781);
insert into zonas (id, nome, id_freguesia) values (78102, "BOCA LARGA", 781);
insert into zonas (id, nome, id_freguesia) values (78103, "FUNDURA", 781);
insert into zonas (id, nome, id_freguesia) values (78104, "JOAO GOTO", 781);
insert into zonas (id, nome, id_freguesia) values (78105, "VILA DE JOAO TEVES (URBANO)", 781);
insert into zonas (id, nome, id_freguesia) values (78106, "LAGE", 781);
insert into zonas (id, nome, id_freguesia) values (78107, "LEVADA", 781);
insert into zonas (id, nome, id_freguesia) values (78108, "LONGUEIRA", 781);
insert into zonas (id, nome, id_freguesia) values (78109, "MONTANHA", 781);
insert into zonas (id, nome, id_freguesia) values (78110, "ORGAOS PEQUENO", 781);
insert into zonas (id, nome, id_freguesia) values (78111, "PICO ANTONIA", 781);
insert into zonas (id, nome, id_freguesia) values (78112, "PEDRA MOLAR", 781);
insert into zonas (id, nome, id_freguesia) values (78113, "POILAO CABRAL", 781);
insert into zonas (id, nome, id_freguesia) values (78114, "SAO JORGE", 781);
insert into zonas (id, nome, id_freguesia) values (78115, "MONTANHINHA", 781);
insert into zonas (id, nome, id_freguesia) values (79101, "CALABACEIRA", 791);
insert into zonas (id, nome, id_freguesia) values (79102, "CIDADE DE SANTIAGO DE CABO VERDE (URBANO)", 791);
insert into zonas (id, nome, id_freguesia) values (79103, "JOAO VARELA", 791);
insert into zonas (id, nome, id_freguesia) values (79105, "SALINEIRO", 791);
insert into zonas (id, nome, id_freguesia) values (79107, "COSTA ACHADA", 791);
insert into zonas (id, nome, id_freguesia) values (79108, "SAO MARTINHO GRANDE - SNJesus", 791);
insert into zonas (id, nome, id_freguesia) values (79202, "BELEM", 792);
insert into zonas (id, nome, id_freguesia) values (79203, "CHA DE IGREJA", 792);
insert into zonas (id, nome, id_freguesia) values (79204, "CHA GONCALVES", 792);
insert into zonas (id, nome, id_freguesia) values (79205, "DELGADO", 792);
insert into zonas (id, nome, id_freguesia) values (79206, "GOUVEIA", 792);
insert into zonas (id, nome, id_freguesia) values (79207, "LOURA", 792);
insert into zonas (id, nome, id_freguesia) values (79208, "MOSQUITO D'HORTA", 792);
insert into zonas (id, nome, id_freguesia) values (79210, "PICO LEAO", 792);
insert into zonas (id, nome, id_freguesia) values (79211, "PORTO MOSQUITO", 792);
insert into zonas (id, nome, id_freguesia) values (79212, "SANTANA", 792);
insert into zonas (id, nome, id_freguesia) values (79213, "TRONCO", 792);
insert into zonas (id, nome, id_freguesia) values (79214, "CHUVA CHOVE", 792);
insert into zonas (id, nome, id_freguesia) values (81101, "ACHADA GRANDE", 811);
insert into zonas (id, nome, id_freguesia) values (81102, "ATALAIA", 811);
insert into zonas (id, nome, id_freguesia) values (81103, "CORVO", 811);
insert into zonas (id, nome, id_freguesia) values (81104, "FAJÃNZINHA", 811);
insert into zonas (id, nome, id_freguesia) values (81105, "FEIJOAL", 811);
insert into zonas (id, nome, id_freguesia) values (81106, "VILA DOS MOSTEIROS", 811);
insert into zonas (id, nome, id_freguesia) values (81107, "MOSTEIROS TRAS", 811);
insert into zonas (id, nome, id_freguesia) values (81108, "PAI ANTONIO", 811);
insert into zonas (id, nome, id_freguesia) values (81109, "QUEIMADA GUINCHO", 811);
insert into zonas (id, nome, id_freguesia) values (81110, "RELVA", 811);
insert into zonas (id, nome, id_freguesia) values (81111, "RIBEIRA DO ILHEU", 811);
insert into zonas (id, nome, id_freguesia) values (81112, "SUMBANGO", 811);
insert into zonas (id, nome, id_freguesia) values (81113, "ROCHA FORA", 811);
insert into zonas (id, nome, id_freguesia) values (81114, "MURRO", 811);
insert into zonas (id, nome, id_freguesia) values (81115, "CUTELO ALTO", 811);
insert into zonas (id, nome, id_freguesia) values (82101, "ACHADA MENTIROSA", 821);
insert into zonas (id, nome, id_freguesia) values (82102, "CAMPANAS BAIXO", 821);
insert into zonas (id, nome, id_freguesia) values (82103, "CAMPANAS CIMA", 821);
insert into zonas (id, nome, id_freguesia) values (82104, "CURRAL GRANDE", 821);
insert into zonas (id, nome, id_freguesia) values (82105, "GALINHEIRO", 821);
insert into zonas (id, nome, id_freguesia) values (82106, "INHUCO", 821);
insert into zonas (id, nome, id_freguesia) values (82107, "LOMBA", 821);
insert into zonas (id, nome, id_freguesia) values (82108, "MONTE TABOR", 821);
insert into zonas (id, nome, id_freguesia) values (82109, "PONTA VERDE", 821);
insert into zonas (id, nome, id_freguesia) values (82110, "RIBEIRA FILIPE", 821);
insert into zonas (id, nome, id_freguesia) values (82111, "SAO JORGE", 821);
insert into zonas (id, nome, id_freguesia) values (82112, "SANTO ANTÓNIO", 821);
insert into zonas (id, nome, id_freguesia) values (82113, "SÃO DOMINGOS", 821);
insert into zonas (id, nome, id_freguesia) values (82201, "BRANDAO", 822);
insert into zonas (id, nome, id_freguesia) values (82202, "CABECA DO MONTE", 822);
insert into zonas (id, nome, id_freguesia) values (82203, "CIDADE DE SAO FILIPE", 822);
insert into zonas (id, nome, id_freguesia) values (82204, "LAGARICA", 822);
insert into zonas (id, nome, id_freguesia) values (82205, "LUZIA NUNES", 822);
insert into zonas (id, nome, id_freguesia) values (82206, "MONTE LARGO", 822);
insert into zonas (id, nome, id_freguesia) values (82207, "MONTE GRANDE", 822);
insert into zonas (id, nome, id_freguesia) values (82208, "PATIM", 822);
insert into zonas (id, nome, id_freguesia) values (82209, "SALTO", 822);
insert into zonas (id, nome, id_freguesia) values (82210, "TONGOM", 822);
insert into zonas (id, nome, id_freguesia) values (82211, "VICENTE DIAS", 822);
insert into zonas (id, nome, id_freguesia) values (83101, "ACHADA FURNA", 831);
insert into zonas (id, nome, id_freguesia) values (83102, "CHA DAS CALDEIRAS", 831);
insert into zonas (id, nome, id_freguesia) values (83103, "VILA DE COVA FIGUEIRA (URBANO)", 831);
insert into zonas (id, nome, id_freguesia) values (83104, "ESTANCIA ROQUE", 831);
insert into zonas (id, nome, id_freguesia) values (83105, "FIGUEIRA PAVAO", 831);
insert into zonas (id, nome, id_freguesia) values (83106, "FONTE ALEIXO", 831);
insert into zonas (id, nome, id_freguesia) values (83107, "ROCADAS", 831);
insert into zonas (id, nome, id_freguesia) values (83108, "TINTEIRA", 831);
insert into zonas (id, nome, id_freguesia) values (91101, "COVA RODELA", 911);
insert into zonas (id, nome, id_freguesia) values (91102, "FURNA", 911);
insert into zonas (id, nome, id_freguesia) values (91103, "JOAO DA NOLY", 911);
insert into zonas (id, nome, id_freguesia) values (91104, "LEM RURAL", 911);
insert into zonas (id, nome, id_freguesia) values (91105, "MATO GRANDE", 911);
insert into zonas (id, nome, id_freguesia) values (91106, "SANTA BARBARA", 911);
insert into zonas (id, nome, id_freguesia) values (91107, "VILA NOVA SINTRA (US)", 911);
insert into zonas (id, nome, id_freguesia) values (91108, "VILA NOVA SINTRA (RU)", 911);
insert into zonas (id, nome, id_freguesia) values (91109, "VINAGRE", 911);
insert into zonas (id, nome, id_freguesia) values (91110, "CACHAÇO", 911);
insert into zonas (id, nome, id_freguesia) values (91201, "CACHACO", 912);
insert into zonas (id, nome, id_freguesia) values (91202, "CAMPO BAIXO", 912);
insert into zonas (id, nome, id_freguesia) values (91203, "COVA DE JOANA", 912);
insert into zonas (id, nome, id_freguesia) values (91204, "COVA RODELA", 912);
insert into zonas (id, nome, id_freguesia) values (91205, "FAJA D'AGUA", 912);
insert into zonas (id, nome, id_freguesia) values (91206, "LOMBA TAMTUM", 912);
insert into zonas (id, nome, id_freguesia) values (91207, "MATO", 912);
insert into zonas (id, nome, id_freguesia) values (91208, "NOSSA SENHORA DO MONTE", 912);
insert into zonas (id, nome, id_freguesia) values (91209, "TOME BARRAZ", 912);
