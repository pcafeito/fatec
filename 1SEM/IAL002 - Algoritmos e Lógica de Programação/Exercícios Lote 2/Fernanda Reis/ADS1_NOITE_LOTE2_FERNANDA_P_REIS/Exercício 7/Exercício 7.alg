algoritmo "7.	A partir do exerc�cio 6 (vetor classificado) solicitar um valor qualquer e verificar a sua exist�ncia no vetor (utilizar pesquisa bin�ria)."
// Fun��o :
// Autor :
// Data : 27/11/2018
// Se��o de Declara��es
var
valor:vetor [1..5] de inteiro
i, j, aux, k, num, inicial, final, x : inteiro
meio : inteiro
inicio
escreval ("Vamos procurar um n�mero espec�fico e sua posi��o em um vetor.")
escreval("(Lembre-se de que os n�meros informados ser�o armazenados em ordem crescente.)")
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
//at� aqui � igual ao 6, mas n�o exibe a ordem

escreval()
escreval("Digite um n�mero aleat�rio para ser localizado no vetor: ")
leia(num)

//precisa fazer pesquisa bin�ria aqui


inicial <- 1
final <- 5

x <- 0

   enquanto (inicial <= final) e (x = 0) faca
      meio <- (inicial + final) DIV 2
      i <- meio
      se (valor[i] = num) entao
         x <- 1
      senao
         se valor[i] > num entao
            final <- meio - 1
         senao
            inicial <- meio + 1
         fimse
      fimse
      fimenquanto

      //Exibir Resultados da busca
      se x = 1 entao
         escreva ("O n�mero foi encontrado na posi��o ", meio, " do vetor.")
      senao
         escreva ("O n�mero informado n�o foi encontrado no vetor.")
      fimse




FimAlgoritmo
