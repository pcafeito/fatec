algoritmo "12.	Carregar c�digos das pe�as em um tabuleiro de xadrez, onde:
"Calcular e mostrar a soma das pe�as do tabuleiro.
"N�o pode utilizar estrutura de decis�o e Escolha Caso na contagem das pe�as

// Fun��o :
// Autor :
// Data : 30/11/2018
// Se��o de Declara��es
var

pecas: vetor[1..2,1..7] de inteiro
tabuleiro: vetor[1..8,1..8] de inteiro
x,y, i, j, soma : inteiro

inicio
// Se��o de Comandos
pecas[1,1] <- 1 //pe�es
pecas[1,2] <- 2 //torres
pecas[1,3] <- 3 //cavalos
pecas[1,4] <- 4 //bispos
pecas[1,5] <- 5 //rainhas
pecas[1,6] <- 6 //reis
pecas[1,7] <- 0

escreval ("Faremos a representac�o de um tabuleiro de xadrez e suas pe�as.")



para i <- 1 ate 8 faca
   para j <- 1 ate 8 faca
      se (i = 2) entao
         tabuleiro[i,j] <- 1
      senao
         se (i = 7) entao
            tabuleiro[i,j] <- 1
         senao
            tabuleiro[i,j] <- pecas[1,7]
         fimse
      fimse
      escreva(tabuleiro[i,j])
   fimpara
   escreval()
fimpara

para i <- 1 ate 8 faca
   para j <- 1 ate 8 faca
      se (tabuleiro[i,j] <> 0) entao
         soma <- soma + 1
      senao
      fimse
   fimpara
fimpara
escreval("A soma de pe�as do tabuleiro �: ", soma)

//condi��es aleat�rias de preenchimento do tabuleiro




fimalgoritmo
