algoritmo "8.	Criar e carregar uma matriz [4][3] inteiro com quantidade de produtos vendidos em 4 semanas. Calcular e exibir:
"a.	A quantidade de cada produto vendido no m�s;
"b.	A quantidade de produtos vendidos por semana;
"c.	O total de produtos vendidos no m�s.
// Fun��o :
// Autor :
// Data : 26/11/2018
// Se��o de Declara��es
var
produtos: vetor [1..4, 1..3] de inteiro
i, j, soma_um, soma_dois, soma_tres, soma_quatro, total : inteiro
semana_um, semana_dois, semana_tres, semana_quatro : inteiro
//  i<- n�mero de semanas  ||   j <- numero do produto
inicio
soma_um <- 0
soma_dois <- 0
soma_tres <- 0
soma_quatro <- 0
total <- 0
semana_um <- 0
semana_dois <- 0
semana_tres <- 0
semana_quatro <- 0
escreval("Vamos verificar quantos produtos foram vendidos no m�s!")
escreval()
//loop para receber os produtos do �tem 1 em todas as semanas
para i <- 1 ate 4 faca
   j <- 1
   escreval("Insira o n�mero de produtos vendidos do �tem", j, " na ", i, "� semana: ")
   leia(produtos[i,j])
   soma_um <- soma_um + produtos[i,j]
   se (i = 1) entao
      semana_um <- semana_um + produtos[i,j]
   senao
      se (i = 2) entao
         semana_dois <- semana_dois + produtos[i,j]
      senao
         se (i = 3) entao
            semana_tres <- semana_tres + produtos[i,j]
         senao
            semana_quatro <- semana_quatro + produtos[i,j]
         fimse
      fimse
   fimse
   i <- i + 1
fimpara

//loop para receber os produtos do �tem 2 em todas as semanas
para i <- 1 ate 4 faca
   j <- 2
   escreval("Insira o n�mero de produtos vendidos do �tem", j, " na ", i, "� semana: ")
   leia(produtos[i,j])
   soma_dois <- soma_dois + produtos[i,j]
   se (i = 1) entao
      semana_um <- semana_um + produtos[i,j]
   senao
      se (i = 2) entao
         semana_dois <- semana_dois + produtos[i,j]
      senao
         se (i = 3) entao
            semana_tres <- semana_tres + produtos[i,j]
         senao
            semana_quatro <- semana_quatro + produtos[i,j]
         fimse
      fimse
   fimse
   i <- i + 1
fimpara

// loop para receber os produtos do �tem 3 em todas as semanas
para i <- 1 ate 4 faca
   j <- 3
   escreval("Insira o n�mero de produtos vendidos do �tem", j, " na ", i, "� semana: ")
   leia(produtos[i,j])
   soma_tres <- soma_tres + produtos[i,j]
   se (i = 1) entao
      semana_um <- semana_um + produtos[i,j]
   senao
      se (i = 2) entao
         semana_dois <- semana_dois + produtos[i,j]
      senao
         se (i = 3) entao
            semana_tres <- semana_tres + produtos[i,j]
         senao
            semana_quatro <- semana_quatro + produtos[i,j]
         fimse
      fimse
   fimse
   i <- i + 1
fimpara

//total de produtos
total <- soma_um + soma_dois + soma_tres


//exibir
escreval ()
escreval ()
escreval ("O n�mero de produtos vendidos foi de: ")
escreval ("�tem 1: ", soma_um)
escreval ("�tem 2: ", soma_dois)
escreval ("�tem 3: ", soma_tres)
escreval ()
escreval ("O n�mero TOTAL de produtos vendidos foi de: ", total)
escreval ()
escreval ("O n�mero de produtos vendidos por semana foi de: ")
escreval ("Semana 1: ", semana_um)
escreval ("Semana 2: ", semana_dois)
escreval ("Semana 3: ", semana_tres)
escreval ("Semana 4: ", semana_quatro)
fimalgoritmo



