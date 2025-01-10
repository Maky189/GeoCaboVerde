def main():
    
    with open("./zona.sql", "a") as lugarsql:
        with open("./zona.csv", "r") as lugarcsv:
            for row in lugarcsv:
                idi, nome = row.strip('\n').split(";")
                nome = '"' + nome + '"'
                lugarsql.write(f"insert into zonas (id, nome, id_freguesia) values ({idi}, {nome}, {idi[0:3]});\n")
                
main()