from random import randint

akun = []

with open('akun_data.txt', 'r') as file:
    for line in file:
        data = line.strip().split(',')
        
        username = data[0]
        tipe = data[4]
        
        if tipe == 'AdminUniversitas':
            akun.append(username)
            
with open('out_data_adminuniv.txt', 'w') as write_file:
        final_data = []
        for username in akun:
            id_univ = randint(1, 25)
            final_data.append(f"{username},{id_univ}")
            write_file.write(f'INSERT INTO AdminUniversitas (Username, IDUniversitas) VALUES ("{username}", {id_univ});\n')
                        
        with open('final_data.txt', 'w') as final_file:
            for data in final_data:
                final_file.write(f'{data}\n')