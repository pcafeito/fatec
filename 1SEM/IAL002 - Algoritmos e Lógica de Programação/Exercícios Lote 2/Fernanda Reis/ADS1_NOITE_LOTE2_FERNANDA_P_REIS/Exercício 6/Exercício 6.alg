algoritmo "Exerc�cio 6 -	Criar e coletar em um vetor [20] com n�meros aleat�rios. \nClassificar este vetor em ordem crescente e mostre os dados."
// Fun��o :
// Autor :
// Data : 23/11/2018
// Se��o de Declara��es
var
valor:vetor [1..5] de inteiro
i, j, aux : inteiro

inicio
escreval ("Vamos ordenar uma sequ�ncia de n�meros em ordem crescente!")
escreval()
para i <- 1 ate 5 faca
   escreval("Informe o ", i,"� valor: ")
   leia(valor[i])
fimpara


aux <- 0

para i <- 1 ate 5 faca
   para j <- 1 ate 5 faca
      se valor[i] < valor[j] entao
         aux <- valor[i]
         valor[i] <- valor[j]
         valor[j] <- aux
      fimse
   fimpara
fimpara

escreval ()
escreval("Aqui est�o os valores informados em ordem crescente: ")
para i <- 1 ate 5 faca
   escreval(valor[i])
fimpara

Fimalgoritmo
