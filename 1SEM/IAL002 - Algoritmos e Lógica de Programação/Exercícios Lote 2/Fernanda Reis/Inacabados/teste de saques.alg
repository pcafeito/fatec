algoritmo "12.	Carregar c�digos das pe�as em um tabuleiro de xadrez, onde:"
"Calcular e mostrar a soma das pe�as do tabuleiro."
"N�o pode utilizar estrutura de decis�o e Escolha Caso na contagem das pe�as"
// Fun��o :
// Autor :
// Data : 29/11/2018
// Se��o de Declara��es
var
notas: vetor[1..3,1..6] de inteiro
valor, i, j, resto, aux : inteiro
inicio
notas[1,1] <- 2
notas[1,2] <- 5
notas[1,3] <- 10
notas[1,4] <- 20
notas[1,5] <- 50
notas[1,6] <- 100

j <- 6
escreval("digite o valor que deseja sacar: ")
leia (valor)
para j <- 6 ate 1 faca
   resto <- valor
   aux <- resto div notas[1,j]
   resto <- resto mod notas[1,j]
   notas[2,j] <- aux //qtdd de cada nota q vai sair no saque
fimpara
se (resto < 5) e (resto > 0) e (resto % 2 =1) entao
   resto <- resto + notas[1,j]
   aux <- resto div notas[1,j-1]
senao
   se (resto > 5) e (resto < 10) e (resto % 2 = 0)  entao
      resto <- resto + notas[1,j]
      aux <- resto div notas[1,j-1]
   senao
   fimse
fimse
j <-6
escreval ("O seu saque ser� entregue da seguinte maneira: ")
para j<- 6 ate 1 faca
   escreval (notas[2,j] " notas de "notas[1,j])
fimpara


fimalgoritmo
