Algoritmo "Criar uma fun��o que receba um vetor com uma sequencia de 7 n�meros"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/12/2018
Var
   // Se��o de Declara��esCria das vari�veis


Inicio
   cont <- 2
   soma <- 1
   escreval("Digite um n�mero de 7 algarismos: ")
   //se o primeiro algarismo for 0, nao pode ser
   para i <- 1 ate 7 faca
      vet_num[i] = num / x % 10
      x = x * 10
   fimpara

   para i <- 2 ate 7 faca
      soma <- soma + vet_num[i] * cont
      cont <- cont + 1
   fimpara
   
   soma <- soma mod 11
   
Fimalgoritmo