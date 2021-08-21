ALGORITMO "CELA"

VAR
   entrada: CARACTERE
   
// ======================================================================
PROCEDIMENTO mostre(trecho: CARACTERE)
VAR a: CARACTERE // so pra poder pausar o texto
INICIO
   ESCREVAL(trecho)
   LEIA(a)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO pergunte(texto: CARACTERE)
INICIO
   ESCREVAL(texto)
   ESCREVAL()
   entrada <- ""
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO resposta(var entr: CARACTERE)
INICIO
   ESCREVAL()
   ESCREVA(">> ")
   LEIA(entr)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO mostrarCela
VAR
   terminarLoop: LOGICO
   iteracao, i: INTEIRO
   opcoes: vetor[1..6] DE CARACTERE
INICIO
   opcoes[1] <- "PORTA"
   opcoes[2] <- "BAU"
   opcoes[3] <- "PIA"
   opcoes[4] <- "PRIVADA"
   opcoes[5] <- "MESA"
   opcoes[6] <- "CAMA"

   MOSTRE("CAAARRACK!!!!!!!")
   MOSTRE("Você desperta com o barulho de um trovão.")
   MOSTRE("Você está deitada numa cama.")
   MOSTRE("Ao olhar para os lados, se vê presa numa cela trancada por uma porta de aço, na qual tem uma janelinha.")
   MOSTRE("Ao analisar o ambiente novo e desconhecido, você vê um baú que está na parede a sua frente, no lado de sua cama tem uma mesinha e em um dos cantos da cela está a privada e a pia.")

   PERGUNTE("No que você vai mexer primeiro?") // P1
   
   terminarLoop <- FALSO
   iteracao <- 1
   ENQUANTO NAO terminarLoop FACA
      SE iteracao > 1 ENTAO
         PERGUNTE("No que você vai mexer agora?") // P1+
      FIMSE

      PARA i DE 1 ATE 6 FACA
         SE opcoes[i] <> "" ENTAO
            ESCREVAL("- ", opcoes[i])
         FIMSE
      FIMPARA

      RESPOSTA(entrada)
      ESCOLHA entrada
      CASO "PORTA"
         opcoes[1] <- ""
         MOSTRE("Ao analisar o ambiente novo e desconhecido, você vê um baú que está na parede a sua frente, no lado de sua cama tem uma mesinha e em um dos cantos da cela está a privada e a pia.")
         MOSTRE("Você consegue visualizar um corredor de sanatório que parece ter sido construído no início do século 20; o corredor está cheio de médicos, enfermeiras e pacientes.")
         MOSTRE("Você grita: “Alguém me tire daqui!!!”")
         MOSTRE("Apesar do esforço, parece que ninguém te ouviu.")
         MOSTRE("“Preciso encontrar algo para chamar a atenção deles.”")
      CASO "BAU"
         MOSTRE("Você vai até o baú e tenta abri-lo.")
         MOSTRE("Por sorte, o baú está aberto.")
         MOSTRE("Você encontra dentro dele uma bolsa, uma lanterna e a chave da cela.")

         pergunte("Você quer abrir a porta ou vasculhar o resto da cela?") // p1.2
         ENQUANTO (entrada <> "CELA") E (entrada <> "PORTA") FACA
            ESCREVAL("- CELA")
            ESCREVAL("- PORTA")

            RESPOSTA(entrada)

            SE entrada = "CELA" ENTAO
               MOSTRE("“Melhor eu dar mais uma olhada antes de sair. Talvez tenha alguma outra coisa útil.”")
            SENAO
               SE entrada = "PORTA" ENTAO
                  MOSTRE("Você insere a chave e a porta destranca.")
                  MOSTRE("Raio, BAR-ROOM!!!!!")
                  MOSTRE("Você fica atordoada por um segundo.")
                  MOSTRE("Ao abrir os olhos, você nota que todo o lugar mudou; tudo estava velho e acabado pelo tempo, a porta que antes trancava sua cela agora está no chão, toda corroída pela ferrugem.")
                  terminarLoop <- VERDADEIRO
               SENAO
                  MOSTRE("So ha duas opcoes...")
                  PERGUNTE("O que voce vai fazer?") // p1.2+
               FIMSE
            FIMSE
         FIMENQUANTO
      CASO "PIA"
         opcoes[3] <- ""
         MOSTRE("Não é hora para isso.")
      CASO "PRIVADA"
         opcoes[4] <- ""
         MOSTRE("Não é hora para isso.")
      CASO "MESA"
         opcoes[5] <- ""
         MOSTRE("Você se encaminha até a mesa.")
         MOSTRE("Nela, você encontra uma ficha médica com seu nome, sua idade, descrição física e dizendo que estava internada devido a problemas psicológicos no sanatório Blackwood.")
         MOSTRE("Segundo o laudo de um doutor San-Nity, Jesse sofre de sanidade aguda e deveria ser tratada com torturas psicológicas constantes.")
         MOSTRE("Você fica um pouco assustada e confusa.")
      CASO "CAMA"
         opcoes[6] <- ""
         MOSTRE("Você olha embaixo da cama sem esperança de encontrar alguma coisa, porém suas expectativas estavam erradas.")
         MOSTRE("Você encontra uma maleta velha debaixo da cama.")
         MOSTRE("Dentro dela tinha inúmeros mapas, que você os guarda consigo.")
      OUTROCASO
         MOSTRE("Escolha inválida.")
      FIMESCOLHA
      
      iteracao <- iteracao + 1
   FIMENQUANTO
FIMPROCEDIMENTO

// ======================================================================
INICIO
   mostrarCela
FIMALGORITMO