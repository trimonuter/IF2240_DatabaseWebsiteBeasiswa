from random import uniform

with open('univ_data.txt', 'r') as read_file:
    with open('out_data.txt', 'w') as write_file:
        final_data = []
        i = 0
        for line in read_file:
            data = line.strip().split(',')
            
            univ = data[0]
            street = data[1]
            city = data[2]
            state = data[3]
            
            postal_code = [str(int(uniform(100000, 999999))) for _ in range(25)]
            
            akreditasi = ['A', 'B', 'C', 'D']
            randfloat = uniform(0, 1)
            if randfloat < 0.5:
                r_akreditasi = 'A'
            elif randfloat < 0.75:
                r_akreditasi = 'B'
            elif randfloat < 0.9:
                r_akreditasi = 'C'
            else:
                r_akreditasi = 'D'
            
            final_data.append(f"{univ},{street},{city},{state},{postal_code[i]},{r_akreditasi}")
            
            write_file.write(f'INSERT INTO Universitas (NamaUniversitas, AlamatNamaJalan, AlamatKota, AlamatProvinsi, AlamatKodePos, Akreditasi) VALUES ("{univ}", "{street}", "{city}", "{state}", "{postal_code[i]}", "{r_akreditasi}");\n')
            
            i += 1
            
        with open('final_data.txt', 'w') as final_file:
            for data in final_data:
                final_file.write(f'{data}\n')
            