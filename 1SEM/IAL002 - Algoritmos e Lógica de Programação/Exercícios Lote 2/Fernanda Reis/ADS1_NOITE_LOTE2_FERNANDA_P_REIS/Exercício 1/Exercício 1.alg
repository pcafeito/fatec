algoritmo "Exerc�cio 1 - 1.	Criar e coletar um vetor [50] inteiro. Calcular e exibir:
                     "a.	A m�dia dos valores entre 10 e 200; "
                     " b.	A soma dos n�meros �mpares."

var
   val: vetor[1..3] de inteiro
   soma, i, somaimp, cont : inteiro
   media : real
inicio
        soma <- 0
        somaimp <- 0
        cont <- 0
        para i <- 1 ate 3 faca
        Escreval ("Digite o ", i, "� valor: ")
        leia (val[i])
             se (val[i] > 10) e (val[i] < 200)entao
                soma <- soma+val[i]
                     cont <- cont + 1
                media <- soma/cont
             senao
             fimse
             se (val[i]% 2 = 1) entao
                somaimp <- somaimp + val[i]
             senao
             fimse

        fimpara
        escreval ("A soma dos valores entre 10 e 200 �: ",soma)
        escreval ("A m�dia dos valores entre 10 e 200 �: ", media)
        escreval ("A soma dos valores �mpares �: ", somaimp)
fimalgoritmo
