# salva os comandos para baixar um novo módulo em diferentes arquivos

commands = []
files = input("Digite o nome dos arquivos a guardar os comandos. Escreva entre"
	+ "aspas e os separe por vírgulas. Exemplo: 'foo.txt','bar.sh','foobar.py'")
files = files.split(',')

for file in files:
	for command in commands:
		with open(file, "w") as file:
			file.write(command + '\n')