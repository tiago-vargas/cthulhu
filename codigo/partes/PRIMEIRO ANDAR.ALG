ALGORITMO "Primeiro Andar"

VAR
   entrada: CARACTERE

// ======================================================================
PROCEDIMENTO TEXTO(trecho: CARACTERE)
 VAR a: CARACTERE
 INICIO
  ESCREVAL(trecho)
  LEIA(a)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO FALA(trecho: CARACTERE)
 VAR a: CARACTERE
 INICIO
  ESCREVA ("    -- ")
  ESCREVAL(trecho)
  LEIA(a)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO PERGUNTA(trecho: CARACTERE)
 INICIO
  ESCREVAL(trecho)
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
PROCEDIMENTO PrimeiroAndar
 VAR terminarLoop: LOGICO
     erros       : INTEIRO
     acertouChave: LOGICO
 INICIO
  //       "+-----------------------------------------------------------------------------+"
  ESCREVAL("De volta à sala de segurança, você tranca a porta da passagem e percebe que a  ")
  TEXTO   ("sala não estava mais parecendo velha.")

  TEXTO   ("Ela estava completamente nova, bem iluminada e sem nenhum corpo.")

  ESCREVAL("Você não tem muito tempo para ficar pensando, algo estava batendo na porta da  ")
  TEXTO   ("passagem para entrar.")
  TEXTO   ("Você corre para o corredor e percebe que o mesmo tinha acontecido com ele.")
  TEXTO   ("Porém tinha um detalhe a mais.")
  ESCREVAL("Das janelas completamente estilhaçadas, estravam tentáculos completamente pre- ")
  ESCREVAL("tos que ficavam convulsivamente se batendo e arrastando pelas paredes, teto e  ")
  TEXTO   ("chão.")
  TEXTO("Nem a tempestade estava normal mais.")
  TEXTO   ("No lugar de água, chovia sangue e os raios que cortavam o céu eram verdes.")

  DIALOGO ("     ???????")
  FALA    ("Me pergunto, será que sua mente tão pequena consegue apreciar a beleza de como ")
  FALA    ("o mundo vai ficar depois que o ritual estiver concluído?")

  TEXTO   ("Era Nyarlathotep de novo.")

  DIALOGO ("NYARLATHOTEP")
  FALA    ("Daqui algumas horas, quando o ritual estiver completo, essa bela visão se es-  ")
  FALA    ("tenderá além das montanhas de Arkham e será prazeroso assistir a sua espécie de")
  FALA    ("vermes sendo massacradas pelos filhos de Shub-niggurath sem saber o porquê de  ")
  FALA    ("isso estar acontecendo com eles.")

  FALA    ("Provavelmente irão justificar que é uma punição do Deus de vocês ou clamar por ")
  FALA    ("Ele, e irão sucumbir a sua tolice ao perceber que não existe Deus.")

  FALA    ("Espero que goste do show de mortes que irei trazer para esse mundo.")
  FALA    ("AHAHAHAHAHAHAHAHAAAAAAAAAAA")

  TEXTO   ("Você fala um palavrão e continua o seu caminho o ignorando.")
  FALA    ("Ei, espere um minuto.")
  TEXTO   ("Você ignora a voz feminina te chamando.")
  FALA    ("Ei, espera um minuto.")
  TEXTO   ("Você a ignora de novo.")
  FALA    ("O¢_L°`H_ªE´ ´¸_P?A~R£a *M¨I^M¬")
  //        ¹²³£¢¬?°°ºª
  TEXTO   ("Você se vira ao perceber a distorção em sua voz.")
  TEXTO   ("Você vê algo quase indescritível.")

  ESCREVAL("Aquela coisa tinha metade de um dorso humano, não tinha olhos, só buracos pre- ")
  ESCREVAL("tos em seu lugar, um de seus braços era um tentáculo gigantesco e disforme, e  ")
  TEXTO   ("parte do corpo que faltava tinha no lugar um monte tentáculos.")

  TEXTO   ("Ela usava uma roupa de enfermeira toda ensanguentada.")
  TEXTO   ("Você começa a correr daquilo e aquilo começa a correr atrás de você.")

  ESCREVAL("Na curva do corredor aquilo derrapa e se bate na parede, o que te dá tempo para")
  TEXTO   ("abrir a porta.")

  ESCREVAL("Você chega na grade já com o molho de chaves na mão e só tem alguns segundos   ")
  TEXTO   ("para abrir a porta.")
  TEXTO   ("Agora é questão de escolher a chave certa.")
  TEXTO   ("Você tem 20 chaves cada uma com um número, de 1 a 20.")

  PERGUNTA("Qual você vai usar?") // p5

  // chave certa (arbitraria): 19
  ENQUANTO nao acertouChave FACA
    PerguntaExtra("Qual chave você tenta agora?", erros > 0)
    Resposta(entrada)

    SE entrada <> "19" ENTAO
      erros <- erros + 1
    SENAO
      acertouChave <- VERDADEIRO
      //       "+-----------------------------------------------------------------------------+"
      Texto   ("Você coloca chave no trinco e gira.")
      Texto   ("A porta se abre.")
      Texto   ("Você entra e fecha a porta logo atrás de você.")
      Texto   ("A criatura se bate enfurecida na grade.")
      Texto   ("Você estava segura agora.")
      Texto   ("Aquela coisa não poderia te pegar.")
      Fala    ("Ou será que não? AHAHAHAHAHAHAAAA")
      Texto   ("A porta na grade começa a se soltar.")
      Texto   ("Você pensa em correr para o corredor que está ao seu lado.")
      ESCREVAL("Mas quando se vira tem uma parede viva formada por tentáculos impedindo sua    ")
      Texto   ("passagem.")

      ESCREVAL("No meio da parede começa a se formar uma silhueta de um ser humanóide com três ")
      Texto   ("pernas, dois braços e um tentáculo no lugar da cabeça.")

      Fala    ("Eu não vou deixar você sair dessa tão fácil, minha cara Jesse.")
      Fala    ("Pelo que eu me lembro, na sua ficha dizia que o seu tratamento era na base de  ")
      FALA    ("torturas psicológicas constantes, certo?")
      Fala    ("Pois é só o começo agora! NYAHAHAHAHA!")
      Texto   ("A silhueta some, mas pela voz você sabe que era Nyarlathotep.")
      Texto   ("A porta na grade se solta.")
    FIMSE

    ESCOLHA erros
      CASO 1
        Texto("Você coloca a chave no trinco e gira.")
        Texto("Mas a porta não abre.")
        Texto("A enfermeira se aproxima.")
      CASO 2
        Texto("Nada.")
        Texto("Você se apavora.")
        Texto("Sem olhar para trás, você tenta ainda mais uma vez.")
      CASO 3
        Texto("O seu tempo acabou e a enfermeira chegou muito perto.")
    FIMESCOLHA
  FIMENQUANTO
FIMPROCEDIMENTO

// ======================================================================
INICIO
  PrimeiroAndar
FIMALGORITMO
