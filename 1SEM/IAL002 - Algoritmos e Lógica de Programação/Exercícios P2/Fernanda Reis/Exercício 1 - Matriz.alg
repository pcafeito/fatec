algoritmo "Criar um procedimento que:"
"-Carregue os dados da matriz e mostre a soma dos n�meros divis�veis por 3 e 5 de todos os valores;"
"-Os valores da diagonal principal devem ser carregados pela aplica��o ."

// Fun��o :
// Autor :
// Data : 04/12/2018
// Se��o de Declara��es
var
matriz: vetor[1..4,1..4] de inteiro
i, j, num, soma, diag : inteiro
inicio
// Se��o de Comandos
diag <- 1
soma <- 0
escreval("Carregaremos uma matriz [4,4] com valores aleat�rios.")
para i <- 1 ate 4 faca
   para j <- 1 ate 4 faca
      escreval ("Digite um n�mero rand�mico: ")
      leia(num)
      matriz[i,j] <- num
      se (num % 2 = 1) e (i <> j) entao
         soma <- soma + num
      senao
         se (i=j) entao
            matriz[i,j] <- diag
            diag <- diag * 2
         senao
         fimse
      fimse
   fimpara
fimpara

      escreval("A soma dos n�meros �mpares � :", soma)

      escreval("Aqui est� a matriz gerada, com diagonal com m�ltiplos de 2.")
      para i <- 1 ate 4 faca
         para j <- 1 ate 4 faca
            escreva(matriz[i,j])
         fimpara
         escreval()
      fimpara

   fimalgoritmo
