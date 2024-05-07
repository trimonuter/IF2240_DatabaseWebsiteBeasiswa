from random import randint

with open('phone_seed.txt', 'r') as file:
    with open('insert_univ_phone.sql', 'w') as write_file:
        final_data = []
        for line in file:
            r_int = randint(1, 25)
            final_data.append(f"{r_int},{line}")
            write_file.write(f'INSERT INTO NomorTeleponUniversitas (IDUniversitas, NomorTelepon) VALUES ({r_int}, "{line.strip()}");\n')
            
        with open('final_phone_data.txt', 'w') as final_file:
            for data in final_data:
                final_file.write(f'{data}\n')