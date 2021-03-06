.data
	
	#mensagens
	msg_aluno: .asciiz "Nome: Fernanda Pinheiro Reis   |   R.A: 1110481823022 \n \n"
	msg_enunciado: .asciiz "13. Faca um algoritmo que leia um numero (1 < numero < 10000) e, caso\n ele nao seja um numero palindromo, apontar qual o numero \n palindromo mais proximo antes dele. \n \n "
	msg_inicio: .asciiz "Palindromo! \n"
	msg_digite: .asciiz "Digite um numero entre 1 e 10.000: "
	msg_outof: .asciiz "O numero informado nao atende aos requisitos do programa. \n"
	msg_ok: .asciiz "O numero digitado e um palindromo! \n \n"
	msg_nok: .asciiz "\nO numero informado nao e palindromo :( mas... \n"
	msg_abaixo: .asciiz "\nO numero palindromo mais proximo abaixo e o: "
	msg_linha: .asciiz "\n \n"
	

.text

.globl main

	main:


	#msg com nome 
	li $v0, 4			#load immediate, v0 tem funções pré definidas,4 <- printar >>> mensagem <<<
	la $a0, msg_aluno 	#armazena variavel principal  |  a <- mensagem 
	syscall		


	#msg enunciado
	li $v0, 4			
	la $a0, msg_enunciado 	
	syscall		


	#msg de inicio
	li $v0, 4			#load immediate, v0 tem funções pré definidas,4 <- printar >>> mensagem <<<
	la $a0, msg_inicio 	#armazena variavel principal  |  a <- mensagem 
	syscall				#altera os regitradores, a tela
	
	inicio:

		li $v0, 4			#load immediate, v0 tem funções pré definidas,4 <- printar >>> mensagem <<<
		la $a0, msg_digite 	#armazena variavel principal  |  a <- mensagem 
		syscall		

						#v <- mensagens do sistema para usuario
		li $v0, 5			#registra >>>inteiro<<<
		syscall				#LEIA(informado)
		add $t0, $v0, $zero #receba o numero informado pelo usuário e armazena no temp

	
						#t <- registradores (variável)
		li $s1, 1

		li $s2, 10000 

		#se valor < 1
		ble $t0, $s1, fora
		bge $t0,$s2, fora  #"O número informado não atende aos requisitos do programa."
		bge $t0,$s1, programa	
    	#se nao (se tiver dentro dos limites, vai para programa:)
    
	
	fora:

		li $v0, 4			
		la $a0, msg_outof 	#"numero fora do limite"
		syscall	 
	j inicio

	
	    	
    programa:
    	li $s3, 1 #definir uma variável como 1
		beq $s3, 1, ver_palindromo #ver_palindromo

	prog1:
		li $s3, 0
		add $t4, $t4, 0
		beq $t0, $t4, fim1 #se (informado = inv) entao
		bne $t0, $t4, sediferente #se ninformado <> inv entao

	
	sediferente:
		li $v0, 4			
		la $a0, msg_nok 	#"O número informado não é palíndromo :( mas..."
		syscall

		li $v0, 4			
		la $a0, msg_abaixo 		#"O número palíndromo mais próximo abaixo é o: "
		syscall
	j segunda_parte 

	segunda_parte:
		sub $t0, $t0, 1
		li $s4, 2  #definir uma variavel como 2   
    	beq $s4, 2, ver_palindromo 			#enquanto $s4 = 2 faca
    
    segp:
    	bne $t0, $t4, segunda_parte 		#se (informado <> inv) entao
		sub $s4, $s4, 1						#t8 <- 0
		bne $s4, 2, fim2
    
  								
	ver_palindromo: 
		add $t3, $t0, 0			#num <- informado + 0
		li $t4, 0					#inv <- 0
		li $t6, 0
		bne $t3,0, enquanto_palindromo

		
	enquanto_palindromo:							#42
		rem $t6, $t3, 10 	#dig (t6) <- num % 10		2 | 4
  		mul $t4, $t4, 10   	#$t4 (inv) <- inv * 10		0 | 20
   		add $t4, $t4, $t6	# inv <- (inv *10) + dig 	2 | 24
   		div $t3, $t3, 10    #num <- int(num / 10)		4 | 0
   					 		  	
    	bne $t3, 0, enquanto_palindromo
    	beq $s3, 1, prog1 
    	beq $s4, 2, segp
   

  	fim1:
  		li $v0, 4			
		la $a0, msg_ok 		#escreval("O número digitado é um palíndromo!")
		syscall
  	j inicio

	fim2:
		li $v0, 1				##colocar para exibir o numero abaixo
		add $a0, $t4, $zero
		syscall

	#quebra de msg_linha
		li $v0, 4			
		la $a0, msg_linha 		
		syscall
 	j inicio 
 	
	