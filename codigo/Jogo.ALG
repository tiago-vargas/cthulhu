ALGORITMO "Jogo"

VAR entrada      : CARACTERE
    terminarJogo : LOGICO

// ======================================================================== //
// ------------------------------ FRAMEWORK ------------------------------- //


// Textos: ("+-----------------------------------------------------------------------------+")
// Falas : ("+____________________________________________________________________+")

PROCEDIMENTO Linha(texto: CARACTERE)
 INICIO
  // Dar margem antes.
  ESCREVAL(texto)
FIMPROCEDIMENTO

PROCEDIMENTO LinhaF(texto: CARACTERE)
 VAR a: CARACTERE
 INICIO
  // Dar margem antes.
  ESCREVAL(texto)
  LEIA    (a)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO FalaS(texto: CARACTERE) // Fala Simples
 VAR a : CARACTERE
 INICIO
  ESCREVA ("     — ")
  ESCREVAL(texto)
  LEIA(a)
FIMPROCEDIMENTO

PROCEDIMENTO FalaI(text: CARACTERE) // Fala, Inicio
 INICIO
  ESCREVA ("     — ") // 5 espaços + 1 travessao + 1 espaço
  ESCREVAL(text)
FIMPROCEDIMENTO

PROCEDIMENTO FalaC(text: CARACTERE) // Fala, Continuacao
 INICIO
  ESCREVA ("       ") // 7 espaços
  ESCREVAL(text)
FIMPROCEDIMENTO

PROCEDIMENTO FalaF(text: CARACTERE) // Fala, Fim
 VAR a : CARACTERE
 INICIO
  ESCREVA ("       ") // 7 espaços
  ESCREVAL(text)
  LEIA(a)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO ListarSeNaoEscolhida(opcao_rotulo: CARACTERE; opcao_foiEscolhida: LOGICO)
 INICIO
  SE nao opcao_foiEscolhida ENTAO
    ESCREVA("- ")
    ESCREVAL(opcao_rotulo)
  FIMSE
FIMPROCEDIMENTO

// ======================================================================== //
// -------------------------------- FASES --------------------------------- //

PROCEDIMENTO Prologo()
 INICIO
  LIMPATELA()

  //      ("+-----------------------------------------------------------------------------+")

  ESCREVAL("")
  Linha   ("                                    PRÓLOGO                                    ")
  ESCREVAL("")

  Linha   ("Você é Jesse Lovecraft, uma brilhante e renomada psicóloga de 26 anos, na qual ")
  Linha   ("se meteu em uma loucura que só se pode ser concebida na sua totalidade por men-")
  LinhaF  ("tes insanas, perturbadas e doentias.")

  Linha   ("Você só se lembra que entrou nessa loucura depois de ter ido até as estranhas e")
  Linha   ("sobrenaturais montanhas de Arkham, para investigar um caso de múltipla persona-")
  LinhaF  ("lidade de uma garotinha.")

  Linha   ("Sua missão a levou para uma mansão localizada no meio das montanhas; seus donos")
  Linha   ("eram o senhor e senhora Angell, um renomado casal muito rico e que tinham uma  ")
  LinhaF  ("filha, a pequena Lavinia.")

  Linha   ("Aquela docemente perturbada garotinha lhe disse que suas personalidades perten-")
  Linha   ("ciam a um grandioso panteão de deuses cósmicos; dentre suas personalidades, uma")
  Linha   ("se destacava das outras por ser a única que não se expressava por meio de sons ")
  LinhaF  ("guturais e inumanos, seu nome era Nyarlathotep.")

  Linha   ("Apesar da estranha coincidência de que todas as personalidades da garotinha te ")
  Linha   ("lembrarem das histórias vinda da mente perturbada de seu antepassado, H.P. Lo- ")
  Linha   ("vecraft, tudo estava indo perfeitamente bem, até a pequena Lavinia dá para você")
  Linha   ("uma pequena estátua que parecia ter saído direto de um dos contos de seu ante- ")
  LinhaF  ("passado.")

  Linha   ("Na base da estátua da criatura com cabeça de polvo e asas de dragão, tinha uma ")
  LinhaF  ("escritura numa língua desconhecida.")

  Linha   ("Essa escritura é sua última memória antes do início do pesadelo:               ")
  Linha   ("")
  LinhaF  ("               Ph’nglui mglw’nafh Cthulhu R’lyeh wgah’nagl fhtagn              ")
FIMPROCEDIMENTO

// ------------------------------------------------------------------------ //
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

  ESCREVAL("                                    A CELA                                     ")
  Linha   ("+-----------------------------------------------------------------------------+")
  LinhaF  ("CAAARRACK!!!!!!!")
  LinhaF  ("Você desperta com o barulho de um trovão.")
  LinhaF  ("Você está deitada numa cama.")

  Linha   ("Ao olhar para os lados, se vê presa numa cela trancada por uma porta de aço, na")
  LinhaF  ("qual tem uma janelinha.")

  Linha   ("Ao analisar o ambiente novo e desconhecido, você vê um baú que está na parede a")
  LinhaF  ("sua frente.")

  Linha   ("No lado de sua cama tem uma mesinha e em um dos cantos da cela está a privada e")
  LinhaF  ("a pia.")

  Pergunta("No que você vai mexer primeiro?") // P1

  terminarLoop <- FALSO
  iteracao <- 1
  ENQUANTO NAO terminarLoop FACA
    PerguntaExtra("No que você vai mexer agora?", iteracao > 1)

    PARA i de 1 ate 6 FACA
      ListarSeNaoEscolhida(opcoes[i].rotulo, opcoes[i].foiEscolhida)
    FIMPARA

    Resposta(entrada)

    LIMPATELA()

    ESCOLHA entrada
      CASO "PORTA"
        //      ("+-----------------------------------------------------------------------------+")
        Linha   ("Do lado da cama tem uma mesinha e em um dos cantos da cela está a privada e a  ")
        LinhaF  ("pia.")

        Linha   ("Você consegue visualizar um corredor de sanatório que parece ter sido construí-")
        LinhaF  ("do no início do séc. XX.")

        LinhaF  ("O corredor está cheio de médicos, enfermeiras e pacientes.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Jesse")
        FalaS   ("Alguém me tire daqui!!!")

        LinhaF  ("Apesar do esforço, parece que ninguém te ouviu.")

        Dialogo ("Jesse")
        FalaS   ("Preciso encontrar algo para chamar a atenção deles.")
      CASO "BAU"
        LinhaF  ("Você vai até o baú e tenta abrí-lo.")
        LinhaF  ("Por sorte, o baú está aberto.")
        LinhaF  ("Você encontra dentro dele uma bolsa, uma lanterna e a chave da cela.")

        Pergunta("Você quer abrir a porta ou vasculhar o resto da cela?") // p1.2
        REPITA
          ESCREVAL("- CELA")
          ESCREVAL("- PORTA")

          Resposta(entrada)

              // O codigo a seguir garante que "BAU" seja sempre mostrado,
              // porque so se pode sair dessa ESCOLHA, se mudar entrada de
              // "BAU" pra "CELA" ou "PORTA"
          ESCOLHA entrada
            CASO "CELA"
              //      ("+____________________________________________________________________+")
              Dialogo ("Jesse")
              FalaS   ("Melhor eu dar mais uma olhada antes de sair.")
              FalaS   ("Talvez tenha alguma outra coisa útil.")
            CASO "PORTA"
              LinhaF  ("Você insere a chave e a porta destranca.")
              LinhaF  ("Raio, BAR-ROOM!!!!!")
              LinhaF  ("Você fica atordoada por um segundo.")

              Linha   ("Ao abrir os olhos, você nota que todo o lugar mudou; tudo estava velho e acaba-")
              Linha   ("do pelo tempo, a porta que antes trancava sua cela agora está no chão, toda    ")
              LinhaF  ("corroída pela ferrugem.")
              terminarLoop <- VERDADEIRO
            OUTROCASO
              LinhaF  ("So há duas opções...")
              Pergunta("O que você vai fazer?") // p1.2+
          FIMESCOLHA
        ATE (entrada = "CELA") OU (entrada = "PORTA") FACA
      CASO "PIA"
        LinhaF  ("Não é hora para isso.")
      CASO "PRIVADA"
        LinhaF  ("Não é hora para isso.")
      CASO "MESA"
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você se encaminha até a mesa.")

        Linha   ("Nela, você encontra uma ficha médica com seu nome, sua idade, descrição física ")
        Linha   ("e dizendo que estava internada devido a problemas psicológicos no sanatório    ")
        LinhaF  ("Blackwood.")

        Linha   ("Segundo o laudo de um doutor San-Nity, Jesse sofre de sanidade aguda e deveria ")
        LinhaF  ("ser tratada com torturas psicológicas constantes.")
        LinhaF  ("Você fica um pouco assustada e confusa.")
      CASO "CAMA"
        Linha   ("Você olha embaixo da cama sem esperança de encontrar alguma coisa, porém suas  ")
        LinhaF  ("expectativas estavam erradas.")

        LinhaF  ("Você encontra uma maleta velha debaixo da cama.")
        LinhaF  ("Dentro dela tinha inúmeros mapas, que você os guarda consigo.")
      OUTROCASO
        LinhaF  ("Escolha inválida.")
    FIMESCOLHA

    PARA i de 1 ate 6 FACA
      SE entrada = opcoes[i].rotulo ENTAO
        opcoes[i].foiEscolhida <- VERDADEIRO
      FIMSE
    FIMPARA

    iteracao <- iteracao + 1
  FIMENQUANTO
FIMPROCEDIMENTO

PROCEDIMENTO Corredor()
 INICIO
  LIMPATELA()
  ESCREVAL("                                   CORREDOR                                    ")

  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("No corredor, em formato de L, dava para ouvir perfeitamente a forte tempestade ")
  LinhaF  ("que caia lá fora. ")

  Linha   ("Todas as janelas do corredor estavam quebradas e seus cacos espalhados pelo    ")
  LinhaF  ("chão, que estava molhado devido a intensa tempestade.")

  Linha   ("Do seu lado direito tem um enorme grade no caminho, no seu lado esquerdo o cor-")
  LinhaF  ("redor continua até chegar em outra grade.")

  LinhaF  ("Você vai até a janela primeiro.")

  LinhaF  ("crack!")

  LinhaF  ("os vidros quebramaos seus passos")

  Linha   ("Por ela, você consegue ver um pátio arborizado com uma enorme fonte no meio de-")
  Linha   ("la, na qual há uma estátua de uma pessoa encapuzada segurando um livro estranho")
  LinhaF  ("em uma das mãos e uma adaga na outra.")

  Linha   ("Você percebe que as plantas do pátio mesmo que estejam verdes passam uma sensa-")
  LinhaF  ("ção de estarem doentes e definhando.")

  LinhaF  ("Você se afasta da janela e vai até a grade mais próxima.")

  LinhaF  ("Você tenta abri-la.")

  LinhaF  ("Mas não consegue.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesse")
  FalaS   ("Que ótimo.")
  FalaS   ("Vou ter que achar uma chave ou escalar até lá embaixo.")

  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("Você vai até a grade do outro lado do corredor.")

  LinhaF  ("Essa você conseguiu abrir.")

  LinhaF  ("Depois da grade, o corredor continua sem ter mais nenhuma cela.")

  LinhaF  ("No fim do corredor tinha outra grade trancada e do seu lado uma porta.")

  LinhaF  ("No caminho a até o fim do corredor você vê quatro quadros na parede.")

  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Você para no primeiro e nota que, curiosamente, só a moldura foi afetada pelo  ")
  LinhaF  ("tempo, a pintura, porém, está fresca como se tivesse acabado de ser pintada.")

  Linha   ("No quadro você vê uma figura aparentemente humana, ele é sobrenaturalmente pá- ")
  Linha   ("lido, vestia um manto amarelo com capuz que cobria sua cabeça, o seu rosto é   ")
  Linha   ("coberto por uma máscara branca bizarra sobre o capuz utilizava uma coroa de    ")
  LinhaF  ("ferro amarelado.")

  LinhaF  ("Na moldura você vê algo escrito:")

  LinhaF  ("Hastur, o Rei Amarelo.")

  Linha   ("Você caminha até o segundo quadro que possui o mesmo aspecto, porém sua imagem ")
  LinhaF  ("era diferente.")

  Linha   ("Você vê um grupo de exploradores posando como se estivessem tirando uma foto na")
  Linha   ("frente de um navio, porém todo o grupo e o navio estavam no meio do deserto    ")
  LinhaF  ("congelado que é a Antártida.")

  Linha   ("Na moldura está escrito:")
  LinhaF  ("             Nas montanhas da loucura, eis a última expedição do navio Dunwich.")

  Linha   ("No terceiro quadro, você percebe o mesmo aspecto que os outros e com uma imagem")
  LinhaF  ("diferente.")

  Linha   ("Você vê na imagem uma pequena casa com um poço, rodeada por florestas e monta- ")
  Linha   ("nhas, o céu noturno sem estrelas do quadro era cortado ao meio por cometa de   ")
  LinhaF  ("cores inaturais vindo para o nosso mundo.")

  Linha   ("Na moldura estava escrito:")
  LinhaF  ("                          A cor vinda do Espaço, e o Início dos Dias Estranhos.")

  Linha   ("No quarto e último quadro de mesmo aspecto, tinha uma imagem completamente pre-")
  LinhaF  ("ta.")

  LinhaF  ("Você fica olhando estática para o quadro como se estivesse sendo hipnotizada.")

  Linha   ("Você se sente sendo sugada para dentro do quadro, como se tivesse na frente do ")
  LinhaF  ("abismo de um buraco negro prestes te a engolir.")

  //      ("+____________________________________________________________________+")
  Dialogo ("??????")
  FalaS   ("NYAHUEHEHEHE")

  FalaI   ("Cuidado pequena Jesse, quando se olha por muito tempo o abismo exteri-")
  FalaF   ("or, os deuses de dentro dele te olham de volta.")

  FalaS   ("Há! Ah! Ah! Há! Ah! Ah! Há! Ah! Ah! Há! Ah! Ah! Há! Ah! Ah! Há! Ah! A!")

  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("Você olha ao redor procurando de onde veio essa gargalhada e essa voz.")

  LinhaF  ("Mas você não vê ninguém...")

  Linha   ("Ao olhar de novo para o quadro, você percebe o que está escrito na moldura do  ")
  LinhaF  ("quarto quadro:")

  LinhaF  ("                                                          O sussurro nas trevas")

  LinhaF  ("Crack! Crack!")

  LinhaF  ("Um pouco assustada você continua até chegar na porta desconhecida.")

  LinhaF  ("Clink!")
FIMPROCEDIMENTO

// ======================================================================== //
// ------------------------------------------------------------------------ //
PROCEDIMENTO MenuDebug
 INICIO
  LIMPATELA()
  ESCREVAL("-------- Menu de Debug --------")
  ESCREVAL()
  ESCREVAL("[1]  - Prologo")
  ESCREVAL("[2]  - Cela")
  ESCREVAL("[3]  - Corredor")
  ESCREVAL("[4]  - Sala de Segurança")
  ESCREVAL("[5]  - Passagem Secreta 1")
  ESCREVAL("[6]  - Sala de Máquinas")
  ESCREVAL("[7]  - Passagem Secreta 2")
  ESCREVAL("[8]  - Sala de Descanso")
  ESCREVAL("[9]  - De Volta ao Primeiro Andar")
  ESCREVAL("[10] - Encarando o Bicho")
  ESCREVAL("[11] - Manipulação Religiosa")
  ESCREVAL("[12] - Fim do Mundo")
  ESCREVAL("[13] - Vivendo para Lutar Mais um Dia")
  ESCREVAL("[00] - Sair do Programa")
  ESCREVAL()
  Reposta(entrada)

  ESCOLHA entrada
    CASO "1"
      Prologo()
    CASO "2"
      Cela()
    CASO "3"
      Corredor()
    CASO "4"
      SalaDeSeguranca()
    CASO "5"
      PassagemSecreta1()
    CASO "6"
      SalaDeMaquinas()
    CASO "7"
      PassagemSecreta2()
    CASO "8"
      SalaDeDescanso()
    CASO "9"
      PrimeiroAndar()
    CASO "10"
      EncarandoOBicho()
    CASO "11"
      ManipulacaoReligiosa()
    CASO "12"
      FimDoMundo()
    CASO "13"
      MaisUmDia()
    CASO "00"
      terminarJogo <- VERDADEIRO
  FIMESCOLHA
FIMPROCEDIMENTO

// ======================================================================== //

INICIO
  ENQUANTO nao terminarJogo FACA
    MenuDebug()
  FIMENQUANTO
FIMALGORITMO
