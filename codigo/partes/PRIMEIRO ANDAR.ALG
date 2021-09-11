ALGORITMO "Primeiro Andar"

VAR

// ----------------------------------------------------------------------
PROCEDIMENTO PerguntaExtra(texto: CARACTERE; condicao: LOGICO)
 INICIO
  SE condicao ENTAO
    Linha   (texto)
    Linha   ()
    entrada <- ""
  FIMSE
FIMPROCEDIMENTO


// ----------------------------------------------------------------------
PROCEDIMENTO PrimeiroAndar()
 VAR terminarLoop: LOGICO
     erros       : INTEIRO
     acertouChave: LOGICO
 INICIO
  ESCREVAL("                          DE VOLTA AO PRIMEIRO ANDAR                           ")
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
  FalaF   ("de como o mundo vai ficar depois que o ritual estiver concluído?")

  LinhaF  ("Era Nyarlathotep de novo.")

  Dialogo ("Nyarlathotep")
  FalaI   ("Daqui algumas horas, quando o ritual estiver completo, essa bela visão")
  FalaC   ("se estenderá além das montanhas de Arkham e será prazeroso assistir a ")
  FalaC   ("sua espécie de vermes sendo massacradas pelos filhos de Shub-niggurath")
  FalaF   ("sem saber o porquê de isso estar acontecendo com eles.")

  FalaI   ("Provavelmente irão justificar que é uma punição do Deus de vocês ou   ")
  FalaC   ("clamar por Ele, e irão sucumbir a sua tolice ao perceber que não exis-")
  FalaF   ("te Deus.")

  FalaS   ("Espero que goste do show de mortes que irei trazer para esse mundo.")

  FalaS   ("AHAHAHAHAHAHAHAHAAAAAAAAAAA")

  LinhaF  ("Você fala um palavrão e continua o seu caminho o ignorando.")

  FalaS   ("Ei, espere um minuto.")

  LinhaF  ("Você ignora a voz feminina te chamando.")

  FalaS   ("Ei, espera um minuto.")

  LinhaF  ("Você a ignora de novo.")

  FalaS   ("O¢_L°`H_ªE´ ´¸_P?A~R£a *M¨I^M¬")  // ----------------------------------------------------
  //        ¹²³£¢¬?°°ºª

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

  LinhaF  ("Você tem 7 chaves cada uma com um número, de 1 a 7.") // --------------------------------

  Pergunta("Qual você vai usar?") // p5

  // chave certa (arbitraria): 6
  ENQUANTO nao acertouChave FACA
    PerguntaExtra("Qual chave você tenta agora?", erros > 0)
    Resposta(entrada)

    SE entrada <> "6" ENTAO
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
      Linha   ("Mas quando se vira tem uma parede viva formada por tentáculos impedindo sua    ")
      Texto   ("passagem.")

      Linha   ("No meio da parede começa a se formar uma silhueta de um ser humanóide com três ")
      Texto   ("pernas, dois braços e um tentáculo no lugar da cabeça.")

      Fala    ("Eu não vou deixar você sair dessa tão fácil, minha cara Jesse.")
      Fala    ("Pelo que eu me lembro, na sua ficha dizia que o seu tratamento era na base de  ")
      FalaF   ("torturas psicológicas constantes, certo?")
      Fala    ("Pois é só o começo agora! NYAHAHAHAHA!")
      Texto   ("A silhueta some, mas pela voz você sabe que era Nyarlathotep.")
      Texto   ("A porta na grade se solta.")
    FIMSE

    ESCOLHA erros
      CASO 1
        //       "+-----------------------------------------------------------------------------+"
        Texto   ("Você coloca a chave no trinco e gira.")
        Texto   ("Mas a porta não abre.")
        Texto   ("A enfermeira se aproxima.")
      CASO 2
        Texto   ("Nada.")
        Texto   ("Você se apavora.")
        Texto   ("Sem olhar para trás, você tenta ainda mais uma vez.")
      CASO 3
        Texto   ("O seu tempo acabou e a enfermeira chegou muito perto.")
    FIMESCOLHA
  FIMENQUANTO
FIMPROCEDIMENTO

// ======================================================================
INICIO
  PrimeiroAndar
FIMALGORITMO
