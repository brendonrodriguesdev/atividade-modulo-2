//Recode
//Professor: Arthur Brandt
//Aluno: Brendon Alex da Silva Rodrigues
//Turma: T5


Algoritmo "Cadastro_clientes"

Var
   cpf: vetor [1..2] de caracter
   nome: vetor [1..2] de caractere
   des: vetor [1..2] de caracter
   data: vetor [1..2] de caractere
   codigo: inteiro
   cpfpesq: caracter
   depesq: caracter
   encontrado, inserir: logico
procedimento principal()

Inicio
   repita
   escreval ("")
   escreval ("...............Menu Principal...............")
   escreval ("--------------")
   escreval ("Esc - Sair")
   escreval ("1 - Inserir Novo Cadastro")
   escreval ("2 - Imprimir dados do cliente")
   escreval ("3 - Cadastrar Destino")
   escreval ("4 - Consultar Destino")
   escreva ("Digite uma Opcao: ")
   leia (codigo)
   limpatela
   ate (codigo=1) ou (codigo=2) ou (codigo=3) ou (codigo=4)
   escolha (codigo)
   caso 1
        cadastro()
   caso 2
        consulta_cpf()
   caso 3
        cadastro_destino()
   caso 4
        consulta_destino()
   fimescolha
fimprocedimento
//---------------------- CADASTRO ----------------------
procedimento cadastro()

var

   i:inteiro

inicio
   limpatela
   escreval("---------------------  CADASTRO ---------------------")
   para i de 1 ate 2 faca
      escreva ("Digite o CPF: ")
      leia (cpf[i])
      escreva ("Digite o Nome: ")
      leia (nome[i])
   fimpara
principal()
fimprocedimento

//-------------------------- CONSULTA PELO CPF ---------------------
procedimento consulta_cpf()
var:
    i: inteiro

inicio
      limpatela
      escreval("---------------------  CONSULTA ---------------------")
      escreva ("Digite um CPF para Consulta : ")
      leia (cpfpesq)
      para i de 1 ate 2 faca
      se (cpf[i]) = (cpfpesq) então
         escreval ("---------------------- CONSULTA PELO CPF -------------------")
         escreval ("CPF: ", cpf[i])
         escreval ("Nome: ", nome[i])
         encontrado<-verdadeiro
      fimse
      fimpara
             se encontrado=falso então
                escreval ("------------ Nome informado não encontrado! -------------")
             fimse
      principal()
fimprocedimento

procedimento cadastro_destino()
var

   i:inteiro

inicio
   limpatela
   escreval("---------------------  CADASTRO DE DESTINO ---------------------")
   para i de 1 ate 2 faca
      escreva ("Digite o destino: ")
      leia (des[i])
      escreva ("Digite a data: ")
      leia (data[i])
   fimpara
principal()
fimprocedimento

//-------------------------- CONSULTA DE DESTINO ---------------------
procedimento consulta_destino()
var:
    i: inteiro

inicio
      limpatela
      escreval("---------------------  CONSULTA DE DESTINO ---------------------")
      escreva ("Digite um destino: ")
      leia (depesq)
      para i de 1 ate 2 faca
      se (des[i]) = (depesq) então
         escreval ("---------------------- CONSULTA PELO DESTINO -------------------")
         escreval ("Destino: ", des[i])
         escreval ("Data: ", data[i])
         encontrado<-verdadeiro
      fimse
      fimpara
             se encontrado=falso então
                escreval ("------------ Destino inválido! -------------")
             fimse
      principal()
fimprocedimento
inicio

      principal()
fimalgoritmo