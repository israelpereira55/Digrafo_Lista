# Makefile: Implementação da metaheurística Evolução Diferencial para resolução do problema de roteamento.
# Aluno: Israel Pereira de Souza.
# Professora: Maria Cristina Rangel.
# UFES 2016


# Variaveis

nome_programa = ladders

main = ladders

dependencia1 = digrafo_lista
dependencia2 = doublelinkedlist
dependencia3 = HashSet

#Compilação

all: build

build:
	gcc -c $(main).c $(dependencia1).c $(dependencia2).c $(dependencia3).c -O3 -Wall
	gcc -o $(nome_programa) $(main).o  $(dependencia1).o $(dependencia2).o $(dependencia3).o -lm
	rm *.o
	
run:
	clear
	./$(nome_programa)

clean:
	rm $(nome_programa)
	
debug:
	clear
	gcc -c  $(main).c $(dependencia1).c $(dependencia2).c $(dependencia3).c -Og -Wall -g
	gcc -o $(nome_programa) $(main).o  $(dependencia1).o $(dependencia2).o $(dependencia3).o -lm
	rm *.o
	valgrind ./$(nome_programa)
