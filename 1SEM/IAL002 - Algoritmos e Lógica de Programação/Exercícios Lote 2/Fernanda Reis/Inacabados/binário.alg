algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 30/11/2018
// Se��o de Declara��es
var
numero_binario, potencia : inteiro
binario: vetor[0..9] de inteiro
i, soma, decimal, x : inteiro
inicio
potencia <- 1
x <- 1
soma <- 0

escreva("Insira um n�mero bin�rio maior que 1 e menor que 1000000000: ")
leia(numero_binario)

//Valida��o do intervalo do enunciado
se(numero_binario < 1) ou (numero_binario > 1000000000)entao
   escreval("Voc� digitou um valor inv�lido. Refa�a...")
senao
   //Separa os algarismos e popula o vetor
   para i <- 0 ate 9 faca

      binario[i] <- numero_binario / x
      binario[i] <- binario[i] % 10

      x <- x * 10

      se(binario[i] < 0 ou binario[i] > 1)entao

         escreval("O n�mero que voc� digitou n�o � bin�rio. Refa�a...")
      senao
      fimse
      i<-i+1
   fimpara

   para i <- 0 ate 9 faca
      se(i = 0)entao
         soma <- binario[i]
      senao
         potencia <- potencia * 2
         soma <- soma + (binario[i] * potencia)
      fimse
      i <- i + 1
   fimpara
fimpara

decimal = soma

limpa()
escreva("O n�mero bin�rio ", numero_binario, " em decimal � ", decimal)

fimse// Se��o de Comandos
fimalgoritmo
