Algoritmo "palindromo"

Var
// Se��o de Declara��es das vari�veis
informado, inv1, inv2 : inteiro
num1, num2, dig1, dig2, p, num_decresc, decresce, acresce : inteiro

funcao ver_palindromo1: inteiro

inicio

num1 <- informado
inv1 <-0

enquanto num1 <> 0 faca
   dig1 <- int(num1 % 10)
   inv1 <- (inv1 *10) + dig1
   num1 <- int(num1 / 10)
fimenquanto
retorne inv1
FimFuncao

funcao ver_palindromo2: inteiro

inicio
num2 <- num_decresc
inv2 <- 0

enquanto num2 <> 0 faca
   dig2 <- int(num2 % 10)
   inv2 <- (inv2 *10) + dig2
   num2 <- int(num2 / 10)
   retorne inv2
fimenquanto


fimfuncao

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
escreval ("Vamos descobrir se um n�mero � pal�ndromo!")
ESCREVA("Digite um n�mero: ")
LEIA(informado)
num_decresc <- informado
acresce <- 0
decresce <- 0

inv1 <- ver_palindromo1
se (informado = inv1) entao
   escreval("N�mero digitado: ", informado, " |  N�mero inverso: ", inv1)
   escreval("O n�mero digitado � um pal�ndromo!")
senao
   escreval ("O n�mero informado n�o � pal�ndromo :( mas...")
   p <- 1
   enquanto p = 1 faca
      inv1 <- ver_palindromo1
      //fun��o � definida pelo invertido pois � com ele que vamos comparar
      se informado = inv1  entao

         p <- 0
      senao

         inv2 <- ver_palindromo2

         se num_decresc = inv2 entao

            p <- 0
         senao
            informado <- informado + 1
            num_decresc <- num_decresc - 1
            inv2 <- ver_palindromo2
            decresce <- decresce +1
            acresce <- acresce + 1

         fimse


      fimse

   fimenquanto

   se (acresce > decresce) e (num_decresc = inv2) ou (acresce = decresce) e (num_decresc = inv2) e (informado <> inv1) entao
      escreval ("O palindromo mais pr�ximo �: ", num_decresc) //o menor numero de numeros ser� o exibido
   senao
      se (acresce = decresce) e (num_decresc = inv2) e (informado = inv1) entao
         escreval ("Os pal�ndromos mais pr�ximos encontram-se na mesma posi��o: ", num_decresc, " e ", informado)
      senao
         escreval ("O pal�ndromo mais pr�ximo �: ", informado)

      fimse

   fimse
fimse
Fimalgoritmo

