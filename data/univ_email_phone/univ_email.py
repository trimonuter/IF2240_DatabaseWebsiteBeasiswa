with open('univ_email_data.txt', 'r') as file:
    with open('out_email_data.txt', 'w') as write_file:
        final_data = []
        for line in file:
            data = line.strip().split(',')
            
            id = data[0]
            email = data[1]
            
            final_data.append(f"{id},{email}")
            write_file.write(f'INSERT INTO EmailUniversitas (IDUniversitas, Email) VALUES ({id}, "{email}");\n')
            
        with open('final_email_data.txt', 'w') as final_file:
            for data in final_data:
                final_file.write(f'{data}\n')