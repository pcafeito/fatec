algoritmo "criar uma fun��o que receba uma matriz e retorne-a classificada em ordem crescente"
// Fun��o :
// Autor :
// Data : 06/12/2018
// Se��o de Declara��es
var
   matriz: vetor[1..4,1..4] de inteiro
   organiza: vetor[1..16] de inteiro
   i, j, num, k, l, aux : inteiro

inicio
   // Se��o de Comandos
   escreval("Vamos criar uma matriz [4,4] com valores aleat�rios.")
   escreval()
   para k <- 1 ate 16 faca
      escreval("Informe o ", k,"� valor: ")
      leia(organiza[k])
   fimpara

   aux <- 0
   //aqui organiza o vetor em ordem crescente
   para k <- 1 ate 16 faca
      para l <- 1 ate 16 faca
         se organiza[k] < organiza[l] entao
            aux <- organiza[k]
            organiza[k] <- organiza[l]
            organiza[l] <- aux
         fimse
      fimpara
   fimpara

   //passa os valores do vetor pra matriz
   escreval("Aqui est� a matriz [4,4] com os valores organizados em ordem crescente: ")
   escreval()

   k <- 1
   enquanto (k < 17) faca
      para i <- 1 ate 4 faca
         para j <- 1 ate 4 faca
            matriz[i,j] <- organiza[k]
            k <- k + 1
            escreva(matriz[i,j])
         fimpara
         escreval()
      fimpara
   fimenquanto


fimalgoritmo
