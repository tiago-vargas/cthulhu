ALGORITMO "CELA"

TIPO
  OPCAO = REGISTRO
    rotulo       : CARACTERE
    foiEscolhida : LOGICO
  FIMREGISTRO

VAR entrada: CARACTERE

// ======================================================================
PROCEDIMENTO MOSTRE(trecho: CARACTERE)
 VAR a : CARACTERE
 INICIO
  ESCREVAL(trecho)
  LEIA(a)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO PERGUNTA(texto: CARACTERE)
 INICIO
  ESCREVAL(texto)
  ESCREVAL()
  entrada <- ""
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO PerguntaExtra(texto: CARACTERE; condicao: LOGICO)
 INICIO
  SE condicao ENTAO
    ESCREVAL(texto)
    ESCREVAL()
    entrada <- ""
  FIMSE
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO RESPOSTA(var entr: CARACTERE)
 INICIO
  ESCREVAL()
  ESCREVA(">> ")
  LEIA(entr)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO DIALOGO(nomeDaPessoa: CARACTERE)
 VAR i : INTEIRO
 INICIO
  ESCREVA ("            ~ ") // 12 espaços + til + 1 espaço
  ESCREVAL(nomeDaPessoa)
  ESCREVAL()
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO FalaI(text: CARACTERE)
 INICIO
  ESCREVA ("    -- ") // 4 espaços + 2 hifens + 1 espaço
  ESCREVAL(text)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO FalaC(text: CARACTERE)
 INICIO
  ESCREVA ("       ") // 7 espaços
  ESCREVAL(text)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO FalaF(text: CARACTERE)
 INICIO
  ESCREVA ("    -- ")
  ESCREVAL(text)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO ListarSeNaoEscolhida(opcao_rotulo: CARACTERE; opcao_foiEscolhida: LOGICO)
 INICIO
  SE nao opcao_foiEscolhida ENTAO
    ESCREVA("- ")
    ESCREVAL(opcao_rotulo)
  FIMSE
FIMPROCEDIMENTO

// +-----------------------------------------------------------------------------+
PROCEDIMENTO Cela
 VAR terminarLoop : LOGICO
     iteracao, i  : INTEIRO
     opcoes       : vetor[1..6] DE OPCAO
 INICIO
  opcoes[1].rotulo <- "PORTA"
  opcoes[2].rotulo <- "BAU"
  opcoes[3].rotulo <- "PIA"
  opcoes[4].rotulo <- "PRIVADA"
  opcoes[5].rotulo <- "MESA"
  opcoes[6].rotulo <- "CAMA"

  LIMPATELA()

  MOSTRE  ("                                    A CELA                                     ")
  ESCREVAL("+-----------------------------------------------------------------------------+")
  MOSTRE  ("CAAARRACK!!!!!!!")
  MOSTRE  ("Você desperta com o barulho de um trovão.")
  MOSTRE  ("Você está deitada numa cama.")

  ESCREVAL("Ao olhar para os lados, se vê presa numa cela trancada por uma porta de aço, na")
  MOSTRE  ("qual tem uma janelinha.")

  ESCREVAL("Ao analisar o ambiente novo e desconhecido, você vê um baú que está na parede a")
  MOSTRE  ("sua frente.")

  ESCREVAL("No lado de sua cama tem uma mesinha e em um dos cantos da cela está a privada e")
  MOSTRE  ("a pia.")

  PERGUNTA("No que você vai mexer primeiro?") // P1

  terminarLoop <- FALSO
  iteracao <- 1
  ENQUANTO NAO terminarLoop FACA
    PerguntaExtra("No que você vai mexer agora?", iteracao > 1)

    PARA i de 1 ate 6 FACA
      ListarSeNaoEscolhida(opcoes[i].rotulo, opcoes[i].foiEscolhida)
    FIMPARA

    RESPOSTA(entrada)

    LIMPATELA()

    ESCOLHA entrada
      CASO "PORTA"
        //       "+-----------------------------------------------------------------------------+"
        ESCREVAL("Do lado da cama tem uma mesinha e em um dos cantos da cela está a privada e a  ")
        MOSTRE  ("pia.")

        ESCREVAL("Você consegue visualizar um corredor de sanatório que parece ter sido construí-")
        MOSTRE  ("do no início do séc. XX.")

        MOSTRE  ("O corredor está cheio de médicos, enfermeiras e pacientes.")

        DIALOGO ("JESSE")
        FALA    ("Alguém me tire daqui!!!")

        MOSTRE  ("Apesar do esforço, parece que ninguém te ouviu.")

        DIALOGO ("JESSE")
        FALA    ("Preciso encontrar algo para chamar a atenção deles.")
      CASO "BAU"
        MOSTRE  ("Você vai até o baú e tenta abrí-lo.")
        MOSTRE  ("Por sorte, o baú está aberto.")
        MOSTRE  ("Você encontra dentro dele uma bolsa, uma lanterna e a chave da cela.")

        pergunta("Você quer abrir a porta ou vasculhar o resto da cela?") // p1.2
        REPITA
          ESCREVAL("- CELA")
          ESCREVAL("- PORTA")

          RESPOSTA(entrada)

              // O codigo a seguir garante que "BAU" seja sempre mostrado,
              // porque so se pode sair dessa ESCOLHA, se mudar entrada de
              // "BAU" pra "CELA" ou "PORTA"
          ESCOLHA entrada
            CASO "CELA"
              //       "+-----------------------------------------------------------------------------+"
              DIALOGO ("       JESSE")
              FALA    ("Melhor eu dar mais uma olhada antes de sair.")
              FALA    ("Talvez tenha alguma outra coisa útil.")
            CASO "PORTA"
              MOSTRE  ("Você insere a chave e a porta destranca.")
              MOSTRE  ("Raio, BAR-ROOM!!!!!")
              MOSTRE  ("Você fica atordoada por um segundo.")

              ESCREVAL("Ao abrir os olhos, você nota que todo o lugar mudou; tudo estava velho e acaba-")
              ESCREVAL("do pelo tempo, a porta que antes trancava sua cela agora está no chão, toda    ")
              MOSTRE  ("corroída pela ferrugem.")
              terminarLoop <- VERDADEIRO
            OUTROCASO
              MOSTRE  ("So há duas opções...")
              PERGUNTA("O que você vai fazer?") // p1.2+
          FIMESCOLHA
        ATE (entrada = "CELA") OU (entrada = "PORTA") FACA
      CASO "PIA"
        MOSTRE  ("Não é hora para isso.")
      CASO "PRIVADA"
        MOSTRE  ("Não é hora para isso.")
      CASO "MESA"
        //       "+-----------------------------------------------------------------------------+"
          MOSTRE  ("Você se encaminha até a mesa.")

        ESCREVAL("Nela, você encontra uma ficha médica com seu nome, sua idade, descrição física ")
        ESCREVAL("e dizendo que estava internada devido a problemas psicológicos no sanatório    ")
          MOSTRE  ("Blackwood.")

        ESCREVAL("Segundo o laudo de um doutor San-Nity, Jesse sofre de sanidade aguda e deveria ")
        MOSTRE  ("ser tratada com torturas psicológicas constantes.")
        MOSTRE  ("Você fica um pouco assustada e confusa.")
      CASO "CAMA"
        ESCREVAL("Você olha embaixo da cama sem esperança de encontrar alguma coisa, porém suas  ")
        MOSTRE  ("expectativas estavam erradas.")

        MOSTRE  ("Você encontra uma maleta velha debaixo da cama.")
        MOSTRE  ("Dentro dela tinha inúmeros mapas, que você os guarda consigo.")
      OUTROCASO
        MOSTRE  ("Escolha inválida.")
    FIMESCOLHA

    PARA i de 1 ate 6 FACA
      SE entrada = opcoes[i].rotulo ENTAO
        opcoes[i].foiEscolhida <- VERDADEIRO
      FIMSE
    FIMPARA

    iteracao <- iteracao + 1
  FIMENQUANTO
FIMPROCEDIMENTO

// ======================================================================
INICIO
  Cela()
FIMALGORITMO