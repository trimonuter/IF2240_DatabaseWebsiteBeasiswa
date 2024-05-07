from random import uniform

with open('akun_data.txt', 'r') as read_file:
    with open('out_data.txt', 'w') as write_file:
        final_data = []
        
        for line in read_file:
            data = line.strip().split(',')
            
            username = data[0]
            email = data[1]
            password = data[2]
            fullname = data[3]
            
            usertype = ['AdminBeasiswa', 'AdminUniversitas', 'Mahasiswa', 'PakarBahasa']
            randfloat = uniform(0, 1)
            
            if randfloat < 0.25:
                c_type = 'AdminBeasiswa'
            elif randfloat < 0.5:
                c_type = 'AdminUniversitas'
            elif randfloat < 0.75:
                c_type = 'Mahasiswa'
            else:
                c_type = 'PakarBahasa'
            
            final_data.append(f"{username},{email},{password},{fullname},{c_type}")
            write_file.write(f'INSERT INTO Akun (Username, Email, Password, NamaLengkap, Tipe) VALUES ("{username}", "{email}", "{password}", "{fullname}", "{c_type}");\n')
            
        with open('final_data.txt', 'w') as final_file:
            for data in final_data:
                final_file.write(f'{data}\n')
            