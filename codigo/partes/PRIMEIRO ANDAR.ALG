ALGORITMO "Primeiro Andar"

TIPO
  OPCAO = REGISTRO
    rotulo       : CARACTERE
    foiEscolhida : LOGICO
  FIMREGISTRO

VAR entrada : CARACTERE

PROCEDIMENTO Titulo(texto: CARACTERE)
 INICIO
  ESCREVAL("+-----------------------------------------------------------------------------+")
  ESCREVA ("¦                        ") // 24 espacos
  ESCREVA (texto)                       // 30 caracteres exatamente
  ESCREVAL("                       ¦")  // 23 espacos
  ESCREVAL("+-----------------------------------------------------------------------------+")
  ESCREVAL()
FIMPROCEDIMENTO

PROCEDIMENTO Linha(texto: CARACTERE) // Linha de texto intermediária
 INICIO
  // Dar margem antes.
  ESCREVAL(texto)
FIMPROCEDIMENTO

PROCEDIMENTO LinhaF(texto: CARACTERE) // Linha de texto final
 VAR a : CARACTERE
 INICIO
  // Dar margem antes.
  ESCREVAL(texto)
  LEIA    (a)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO Dialogo(nomeDaPessoa: CARACTERE)
 INICIO
  ESCREVA ("        ~ ") // 8 espaços + til + 1 espaço
  ESCREVA (nomeDaPessoa)
  ESCREVAL(" ~")
  //ESCREVAL()
FIMPROCEDIMENTO

PROCEDIMENTO FalaS(texto: CARACTERE) // Fala Simples
 VAR a : CARACTERE
 INICIO
  ESCREVA ("     — ")
  ESCREVAL(texto)
  LEIA(a)
FIMPROCEDIMENTO

PROCEDIMENTO FalaI(texto: CARACTERE) // Fala, Inicio
 INICIO
  ESCREVA ("     — ") // 5 espaços + 1 travessao + 1 espaço
  ESCREVAL(texto)
FIMPROCEDIMENTO

PROCEDIMENTO FalaC(texto: CARACTERE) // Fala, Continuacao
 INICIO
  ESCREVA ("       ") // 7 espaços
  ESCREVAL(texto)
FIMPROCEDIMENTO

PROCEDIMENTO FalaF(texto: CARACTERE) // Fala, Fim
 VAR a : CARACTERE
 INICIO
  ESCREVA ("       ") // 7 espaços
  ESCREVAL(texto)
  LEIA(a)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO Pergunta(texto: CARACTERE)
 INICIO
  Linha   (texto)
  ESCREVAL()
  entrada <- ""
FIMPROCEDIMENTO

PROCEDIMENTO PerguntaExtra(texto: CARACTERE; condicao: LOGICO)
 INICIO
  SE condicao ENTAO
    ESCREVAL(texto)
    ESCREVAL()
    entrada <- ""
  FIMSE
FIMPROCEDIMENTO

PROCEDIMENTO Resposta(var entr: CARACTERE)
 INICIO
  ESCREVAL()
  ESCREVA(">> ")
  LEIA(entr)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO ListarSeNaoEscolhida(opcao_rotulo: CARACTERE; opcao_foiEscolhida: LOGICO)
 INICIO
  SE nao opcao_foiEscolhida ENTAO
    ESCREVA("- ")
    ESCREVAL(opcao_rotulo)
  FIMSE
FIMPROCEDIMENTO


// ----------------------------------------------------------------------
PROCEDIMENTO PrimeiroAndar()
 VAR terminarLoop       : LOGICO
     erros, i, iteracao : INTEIRO
     acertouChave       : LOGICO
     chaves             : vetor[1..6] de OPCAO
     chaveCerta         : CARACTERE
 INICIO
  chaves[1].rotulo <- "1"
  chaves[2].rotulo <- "2"
  chaves[3].rotulo <- "3"
  chaves[4].rotulo <- "4"
  chaves[5].rotulo <- "5"

  LIMPATELA()
  Titulo  ("  DE VOLTA AO PRIMEIRO ANDAR  ")
  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("De volta à sala de segurança, você tranca a porta da passagem e percebe que a  ")
  LinhaF  ("sala não estava mais com aparência velha.")

  LinhaF  ("Ela estava completamente nova, bem iluminada e sem nenhum corpo.")

  Linha   ("Você não tem muito tempo para ficar pensando, algo estava batendo na porta da  ")
  LinhaF  ("passagem para entrar.")

  LinhaF  ("Você corre para o corredor e percebe que o mesmo tinha acontecido com ele.")

  LinhaF  ("Porém tinha um detalhe a mais.")

  Linha   ("Das janelas completamente estilhaçadas, entravam tentáculos completamente pre- ")
  Linha   ("tos que ficavam convulsivamente se batendo e se arrastando pelas paredes, teto ")
  LinhaF  ("e chão.")

  Linha   ("Nem a tempestade estava mais normal. No lugar de água, chovia sangue e os raios")
  LinhaF  ("que cortavam o céu eram verdes.")

  //      ("+____________________________________________________________________+")
  Dialogo ("???????")
  FalaI   ("Me pergunto, será que sua mente tão pequena consegue apreciar a beleza")
  FalaF   ("de como o mundo vai ficar depois que o ritual estiver concluído?      ")

  LinhaF  ("Era Nyarlathotep de novo.")

  Dialogo ("Nyarlathotep")
  FalaI   ("Daqui algumas horas, quando o ritual estiver completo, essa bela visão")
  FalaC   ("se estenderá além das montanhas de Arkham e será prazeroso assistir a ")
  FalaC   ("sua espécie de vermes sendo massacradas pelos filhos de Shub-niggurath")
  FalaF   ("sem saber o porquê de isso estar acontecendo com eles.")

  FalaI   ("Provavelmente irão justificar que é uma punição do Deus de vocês ou   ")
  FalaC   ("clamar por Ele, e irão sucumbir a sua tolice ao perceber que não exis-")
  FalaF   ("te Deus.")

  FalaS   ("Espero que goste do show de mortes que irei trazer para esse mundo.   ")

  FalaS   ("AHAHAHAHAHAHAHAHAAAAAAAAAAA")

  LinhaF  ("Você fala um palavrão e continua o seu caminho o ignorando.")

  Dialogo ("??????")
  FalaS   ("Ei, espere um minuto.")

  LinhaF  ("Você ignora a voz feminina te chamando.")

  Dialogo ("??????")
  FalaS   ("Ei, espera um minuto.")

  LinhaF  ("Você a ignora de novo.")

  Dialogo ("??????")
  FalaS   ("O¢_L°`H_ªE´ ´¸_P¹,A~RºA *M¨I^M¬!!³!")

  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("Você se vira ao perceber a distorção em sua voz.")

  LinhaF  ("Você vê algo quase indescritível.")

  Linha   ("Aquela coisa tinha metade de um dorso humano, não tinha olhos, só buracos pre- ")
  Linha   ("tos em seu lugar, um de seus braços era um tentáculo gigantesco e disforme, e  ")
  LinhaF  ("parte do corpo que faltava tinha no lugar um monte tentáculos.")

  LinhaF  ("Ela usava uma roupa de enfermeira toda ensanguentada.")

  LinhaF  ("Você começa a correr daquilo e aquilo começa a correr atrás de você.")

  Linha   ("Na curva do corredor aquilo derrapa e se bate na parede, o que te dá tempo para")
  LinhaF  ("abrir a porta.")

  Linha   ("Você chega na grade já com o molho de chaves na mão e só tem alguns segundos   ")
  LinhaF  ("para abrir a porta.")

  LinhaF  ("Agora é questão de escolher a chave certa.")

  LinhaF  ("Você tem 5 chaves cada uma com um número, de 1 a 5.") // --------------------------------

  Pergunta("Qual você vai usar?") // p5

  chaveCerta <- "5"  // escolhida arbitrariamente
  ENQUANTO (nao acertouChave) E (erros < 3) FACA
    PerguntaExtra("Qual chave você tenta agora?", iteracao > 0)

    PARA i de 1 ate 5 FACA
      ListarSeNaoEscolhida(chaves[i].rotulo, chaves[i].foiEscolhida)
    FIMPARA

    Resposta(entrada)

    SE (entrada <> "1") E (entrada <> "2") E (entrada <> "3") E (entrada <> "4") E (entrada <> "5") ENTAO
      LIMPATELA()
      LinhaF  ("Número inválido.")
    SENAO
      SE entrada <> chaveCerta ENTAO
        erros <- erros + 1

        PARA i de 1 ate 5 FACA
          SE entrada = chaves[i].rotulo ENTAO
            chaves[i].foiEscolhida <- VERDADEIRO
          FIMSE
        FIMPARA

        ESCOLHA erros
          CASO 1
            LIMPATELA()
            //      ("+-----------------------------------------------------------------------------+")
            LinhaF  ("Você coloca a chave no trinco e gira.")
            LinhaF  ("Mas a porta não abre.")
            LinhaF  ("A enfermeira se aproxima.")
          CASO 2
            LIMPATELA()
            LinhaF  ("Nada.")
            LinhaF  ("Você se apavora.")
            LinhaF  ("Sem olhar para trás, você tenta ainda mais uma vez.")
          CASO 3
            LIMPATELA()
            LinhaF  ("O seu tempo acabou. A enfermeira chegou muito perto.")
        FIMESCOLHA
      SENAO
        acertouChave <- VERDADEIRO

        LIMPATELA()
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você coloca chave no trinco e gira.")

        LinhaF  ("A porta se abre. Você entra e fecha a porta logo atrás de você.                ")

        LinhaF  ("A criatura se bate enfurecida na grade.")

        LinhaF  ("Você esta segura agora. Aquela coisa não poderia te pegar.                     ")

        Dialogo ("Nyarlathotep")
        FalaS   ("Ou será que pode? AHAHAHAHAHAHAAAA")

        LinhaF  ("A porta na grade começa a se soltar.")

        Linha   ("Você pensa em correr para o corredor que está ao seu lado, mas quando se vira  ")
        LinhaF  ("tem uma parede viva formada por tentáculos impedindo sua passagem.")

        Linha   ("No meio da parede começa a se formar uma silhueta de um ser humanóide com três ")
        LinhaF  ("pernas, dois braços e um tentáculo no lugar da cabeça.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Nyarlathotep")
        FalaS   ("Eu não vou deixar você sair dessa tão fácil, minha cara Jesse.        ")

        FalaI   ("Pelo que eu me lembro, na sua ficha dizia que o seu tratamento era na ")
        FalaF   ("base de torturas psicológicas constantes, certo?")

        FalaS   ("Pois é só o começo agora! NYAHAHAHAHA!")

        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("A silhueta some, mas pela voz você sabe que era Nyarlathotep.")

        LinhaF  ("A porta na grade se solta.")
      FIMSE
    FIMSE

    iteracao <- iteracao + 1
  FIMENQUANTO
FIMPROCEDIMENTO

// ======================================================================

INICIO
  PrimeiroAndar()
FIMALGORITMO
