algoritmo "Criar e coletar um vetor [100] inteiro e exibir:"
"a) Maior e menor valor. "
"b) A m�dia dos valores."

var
val: vetor[1..5] de inteiro
maior, menor, i, soma : inteiro
media : real
inicio
i <- 1
media <- 0
soma <- 0
para i <- 1 ate 5 faca
   escreval ("Digite o ", i, "� valor: ")
   leia (val[i])
   se (i <- 1) entao
      maior <- val[i]
      menor <- val[i]
   senao
      se (val[i] < menor) entao
         menor <- val[i]
      senao
         se (val[i] > maior) entao
            maior <- val[i]
         senao
         fimse
      fimse
   fimse
   soma <- soma + val[i]
fimpara
media <- soma/5
escreval ("O maior valor digitado foi o n�mero ", maior, ", enquanto o menor foi o n�mero ",menor,".")
escreval ("A m�dia de todos os valores digitados � ",media,".")
fimalgoritmo
