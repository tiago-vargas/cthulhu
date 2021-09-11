ALGORITMO "Jogo"

TIPO
  OPCAO = REGISTRO
    rotulo       : CARACTERE
    foiEscolhida : LOGICO
  FIMREGISTRO

VAR entrada      : CARACTERE
    terminarJogo : LOGICO

// ======================================================================== //
// |----------------------------- FRAMEWORK ------------------------------| //
// ======================================================================== //

// Textos: ("+-----------------------------------------------------------------------------+")
// Falas : ("+____________________________________________________________________+")

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
 VAR a: CARACTERE
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

// ======================================================================== //
// -------------------------------- FASES --------------------------------- //
// ======================================================================== //

PROCEDIMENTO Prologo()
 INICIO
  LIMPATELA()

  Titulo  ("            PRÓLOGO           ")
  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Você é Jesse Lovecraft, uma brilhante e renomada psicóloga de 26 anos, na qual ")
  Linha   ("se meteu em uma loucura que só se pode ser concebida na sua totalidade por men-")
  LinhaF  ("tes insanas, perturbadas e doentias.")

  Linha   ("Você só se lembra que entrou nessa loucura depois de ter ido até as estranhas e")
  Linha   ("sobrenaturais montanhas de Arkham, para investigar um caso de múltipla persona-")
  LinhaF  ("lidade de uma garotinha.")

  Linha   ("Sua missão a levou para uma mansão localizada no meio das montanhas; seus donos")
  Linha   ("eram o senhor e senhora Angel, um renomado casal muito rico e que tinham uma   ")
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
  LinhaF  ("                             Ph’nglui mglw’nafh Cthulhu R’lyeh wgah’nagl fhtagn")
FIMPROCEDIMENTO

PROCEDIMENTO Cela()
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

  Titulo  ("            A CELA            ")
  //      ("+-----------------------------------------------------------------------------+")
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
        FalaS   ("ALGUÉM ME TIRA DAQUI!!!")

        LinhaF  ("...")

        LinhaF  ("Apesar do seu esforço, parece que ninguém te ouviu.")

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
              LIMPATELA()

              Dialogo ("Jesse")
              FalaS   ("Melhor eu dar mais uma olhada antes de sair.")

              FalaS   ("Talvez tenha alguma outra coisa útil.")

            CASO "PORTA"
              //      ("+-----------------------------------------------------------------------------+")
              LIMPATELA()

              LinhaF  ("Você insere a chave e a porta destranca.")

              LinhaF  ("BAR-ROOM!!!!!")

              LinhaF  ("Você fica atordoada por um segundo pelo raio.")

              Linha   ("Ao abrir os olhos, você nota que todo o lugar mudou; tudo estava velho e acaba-")
              Linha   ("do pelo tempo, a porta que antes trancava sua cela agora está no chão, toda    ")
              LinhaF  ("corroída pela ferrugem.")

              terminarLoop <- VERDADEIRO
            OUTROCASO
              LIMPATELA()

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

        Linha   ("Segundo o laudo de um doutor chamado San-Nity, Jesse sofre de sanidade aguda e ")
        LinhaF  ("deveria ser tratada com torturas psicológicas constantes.")

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

  Titulo  ("          O CORREDOR          ")

  //      ("+-----------------------------------------------------------------------------+")

  Linha   ("No corredor, em formato de L, dava para ouvir perfeitamente a forte tempestade ")
  LinhaF  ("que caia lá fora.")

  Linha   ("Todas as janelas do corredor estavam quebradas e seus cacos espalhados pelo    ")
  LinhaF  ("chão, que estava molhado devido a intensa tempestade.")

  Linha   ("Do seu lado direito tem uma enorme grade no caminho, no seu lado esquerdo o    ")
  LinhaF  ("corredor continua até chegar em outra grade.")

  LinhaF  ("Você vai até a janela primeiro.")

  LinhaF  ("crack!")

  LinhaF  ("Os vidros se quebram aos seus passos.")

  Linha   ("Por ela, você consegue ver um pátio arborizado com uma enorme fonte no meio de-")
  Linha   ("la, na qual há uma estátua de uma pessoa encapuzada segurando um livro estranho")
  LinhaF  ("em uma das mãos e uma adaga na outra.")

  Linha   ("Você percebe que as plantas do pátio, mesmo que estejam verdes, passam uma sen-")
  LinhaF  ("sação de estarem doentes e definhando.")

  LinhaF  ("Você se afasta da janela e vai até a grade mais próxima.")

  LinhaF  ("Você tenta abri-la.")

  LinhaF  ("Mas não consegue.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesse")
  FalaS   ("Que ótimo.")

  FalaS   ("Vou ter que achar uma chave ou escalar até lá embaixo.                ")

  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("Você vai até a grade do outro lado do corredor.")

  LinhaF  ("Essa você conseguiu abrir.")

  LinhaF  ("Depois da grade, o corredor continua sem ter mais nenhuma cela.                ")

  LinhaF  ("No fim do corredor tinha outra grade trancada e do seu lado uma porta.         ")

  LinhaF  ("No caminho até o fim do corredor, você vê quatro quadros na parede.            ")

  Linha   ("Você para no primeiro e nota que, curiosamente, só a moldura foi afetada pelo  ")
  LinhaF  ("tempo. A pintura, porém, está fresca como se tivesse acabado de ser pintada.   ")

  Linha   ("No quadro você vê uma figura aparentemente humana: ela é sobrenaturalmente pá- ")
  Linha   ("lida, vestia um manto amarelo com capuz que cobria sua cabeça, o seu rosto é   ")
  Linha   ("coberto por uma máscara branca bizarra e, sobre o capuz, utilizava uma coroa de")
  LinhaF  ("ferro amarelado.")

  Linha   ("Na moldura você vê algo escrito:")
  LinhaF  ("                                                         Hastur, o Rei Amarelo.")

  Linha   ("Você caminha até o segundo quadro que possui o mesmo aspecto, porém sua imagem ")
  LinhaF  ("era diferente.")

  Linha   ("Você vê um grupo de exploradores posando como se estivessem tirando uma foto na")
  Linha   ("frente de um navio, porém todo o grupo e o navio estavam no meio de um deserto ")
  LinhaF  ("congelado, que é a Antártida.")

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

  LinhaF  ("Você fica olhando estática para o quadro como se estivesse sendo hipnotizada.  ")

  Linha   ("Você se sente sendo sugada para dentro do quadro, como se tivesse na frente do ")
  LinhaF  ("abismo de um buraco negro prestes te a engolir.")

  //      ("+____________________________________________________________________+")
  Dialogo ("??????")
  FalaS   ("NYAHUEHEHEHE")

  FalaI   ("Cuidado pequena Jesse, quando se olha por muito tempo o abismo exteri-")
  FalaF   ("or, os deuses de dentro dele te olham de volta.                       ")

  FalaS   ("Há! Ah! Ah! Há! Ah! Ah! Há! Ah! Ah! Há! Ah! Ah! Há! Ah! Ah! Há! Ah! A!")

  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("Você olha ao redor procurando de onde veio essa gargalhada e essa voz.")

  LinhaF  ("Mas você não vê ninguém...")

  Linha   ("Ao olhar de novo para o quadro, você percebe o que está escrito na moldura do  ")
  Linha   ("quarto quadro:")
  LinhaF  ("                                                         O sussurro nas trevas.")

  LinhaF  ("Crack!")

  LinhaF  ("Crack!")

  LinhaF  ("Um pouco assustada você continua até chegar na porta desconhecida.")

  LinhaF  ("Clink!")
FIMPROCEDIMENTO



PROCEDIMENTO PassagemSecreta1()
 INICIO
  LIMPATELA()

  Titulo  ("      A PASSAGEM SECRETA      ")
  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Vinha um forte cheiro de mofo da passagem, característicos de lugares a muito  ")
  LinhaF  ("tempo isolados do mundo.")

  LinhaF  ("Toda a passagem era feita de madeira que parecia ser de muito tempo atrás.")

  Linha   ("Assim que você entra, a primeira coisa que vê é um quadro com a imagem de um   ")
  Linha   ("prédio enorme em construção e um monte de trabalhadores indo de um lado pro ou-")
  LinhaF  ("tro.")

  Linha   ("Você lê na legenda da moldura:")
  LinhaF  ("                                             Construção do santuário Blackwood.")

  Linha   ("Você fica meio curiosa com o fato de ter um quadro numa passagem secreta, mas  ")
  LinhaF  ("logo deixa isso de lado e continua seu caminho para baixo.")

  Linha   ("Depois de descer vários lances de degraus, você chega numa alavanca e numa por-")
  LinhaF  ("ta.")

  Linha   ("Na porta tem uma plaquinha em que está escrito:")
  LinhaF  ("                                                              Sala de descanso.")

  LinhaF  ("Você aciona a alavanca.")

  LinhaF  ("Nada.")

  //      ("+____________________________________________________________________+")

  Dialogo ("??????")
  FalaS   ("Você precisa de energia, Jesse.")

  FalaI   ("Sério mesmo que você foi burra o suficiente de pensar que iria sair   ")
  FalaF   ("tão fácil assim?")

  FalaS   ("Parece até que seu diploma foi comprado.")

  LinhaF  ("De novo aquela voz.")

  Dialogo ("Jesse")
  FalaS   ("Será que estou ficando louca?")

  //      ("+____________________________________________________________________+")
  Dialogo ("??????")
  FalaS   ("Todos nós somos um pouco loucos, Jessezinha.")

  FalaS   ("Como o benevolente deus que eu sou, vou te dar uma pequena dica.      ")

  FalaI   ("Vá até o final da passagem e, quem sabe, você consiga abrir sua passa-")
  FalaF   ("gem de saída.")

  FalaI   ("Porém, ordeno que espere algumas horinhas. Falta pouco para a minha   ")
  FalaF   ("surpresa ficar pronta.")

  FalaS   ("AHAHAHA")

  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Você começa a sentir como se estivesse tendo um ataque de pânico, mas você logo")
  LinhaF  ("se acalma.")

  Linha   ("Não importa se essa voz seja de outra pessoa, você está pronta para enfrentar  ")
  LinhaF  ("qualquer coisa.")

  Linha   ("Você tem habilidades de caça, sobrevivência e de luta com armas, você pode so- ")
  LinhaF  ("breviver a um louco.")

  Linha   ("Você desce as escadas até o último andar, e enquanto descia, olhava nas paredes")
  LinhaF  ("em busca de caixas de som.")

  LinhaF  ("Você chega ao último andar e a porta estava entreaberta.")

  Linha   ("Você olha na plaquinha para saber que sala é essa, estava escrito:")
  Linha   ("                                                              Sala de máquinas.")
FIMPROCEDIMENTO



PROCEDIMENTO PassagemSecreta2()
 INICIO
  LIMPATELA()

  Titulo  ("   A OUTRA PASSAGEM SECRETA   ")
  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("Você quase desmaia com o impacto na parede.")

  LinhaF  ("Você corre até a alavanca da porta da sala de máquinas e levanta ela.          ")

  Linha   ("Quando você finalmente se sente em segurança, você recua até a parede e se sen-")
  LinhaF  ("ta na escada encostando a cabeça na parede.")

  LinhaF  ("Você começa com um choro leve e baixo.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesse")
  FalaS   ("De todas as pessoas, por que isso tá acontecendo COMIGO?")
  FalaS   ("Por que essa merda tá rolando comigo?")
  FalaS   ("Ou melhor, mas que porra tá acontecendo aqui?!")
  FalaS   ("E que merda de sanatório é esse?!")

  LinhaF  ("Você se levanta.")

  Dialogo ("Jesse")
  FalaS   ("Tá, eu preciso me acalmar e me limp...")

  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Ao olhar para a suas roupas, você vê que elas estão um pouco danificadas, porém")
  LinhaF  ("limpas, tirando as marcas de sangue em algumas partes.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesse")
  FalaI   ("Isso... Não faz nenhum sentido, como diabos minha roupa tá toda ferra-")
  FalaF   ("da, eu tô toda ferida... Mas as minhas roupas estão limpas??          ")

  FalaS   ("Será que eu estou ficando louca e me auto mutilei?                    ")

  FalaS   ("Será que aquela pessoa que me salvou também é coisa da minha cabeça?  ")

  FalaS   ("Ou melhor, será que TUDO isso é coisa da minha cabeça?                ")

  FalaS   ("...")

  FalaI   ("Jesse, para de falar merda e se acalma, você é a porra de uma psicólo-")
  FalaF   ("ga.")

  FalaS   ("Só... Foca em encontrar uma forma de sair dessa merda de lugar.       ")

  FalaS   ("*suspiro*")

  FalaI   ("Queria que o John estivesse aqui, ele com certeza falaria alguma coisa")
  FalaF   ("para fazer tudo isso ter sentido.")

  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Enquanto você sobe a escada até a sala de descanso, você fica pensando em pos- ")
  LinhaF  ("síveis respostas para o que aconteceu, além da óbvia de que você está louca.   ")

  Linha   ("Uma música clássica sinistra está invadindo a passagem, vindo da sala de des-  ")
  LinhaF  ("canso.")

  Linha   ("Você sobe até a sala de descanso que fica no térreo, então aciona a alavanca,  ")
  Linha   ("entra na sala que também está bem iluminada e que tem uma vitrola na mesa de   ")
  LinhaF  ("centro, tocando a mesma música que estava no corredor.")
FIMPROCEDIMENTO

PROCEDIMENTO SalaDeDescanso()
 INICIO
  LIMPATELA()

  Titulo  ("      A SALA DE DESCANSO      ")

  Linha   ("Você analisa a sala e vê três camas em uma das paredes e uma estante de livros ")
  LinhaF  ("na parede oposta à das camas.")

  LinhaF  ("No centro da sala tem uma mesinha e em sua volta, um sofá e uma poltrona.")

  LinhaF  ("Mesmo a poltrona estando de costas, você vê uma mão pendendo para fora dela.")

  Linha   ("Do lado oposto de onde você está há uma porta que dá para fora do quarto no    ")
  LinhaF  ("térreo.")

  Pergunta("Você vai para a porta ou para a poltrona?")

  ENQUANTO (entrada <> "PORTA") OU (entrada <> "POLTRONA")
    ESCREVAL("- PORTA")
    ESCREVAL("- POLTRONA")

    Resposta(entrada)
    ESCOLHA entrada
      CASO "PORTA"
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você vai até a porta, gira a maçaneta e escuta o barulho do trinco se abrindo.")

        LinhaF  ("Mas a porta não abre.")

        LinhaF  ("Tinha algo do outro lado a barrando.")
        LinhaF  ("Você bate com força várias vezes na porta, mas só uma frestinha se abre.")

        //      ("+____________________________________________________________________+")
        Dialogo ("???????")
        FalaI   ("Como é a sensação da frustação de saber que a única saída que você co-")
        FalaF   ("nhece está trancada?")

        FalaI   ("Você vai simplesmente se deitar no chão, chorar em posição fetal na   ")
        FalaF   ("falsa esperança que os meus bichinhos de estimação não irão te matar?")

        FalaI   ("Ou você vai subir as escadas e se jogar de cabeça no pátio lá embaixo,")
        FalaF   ("morrendo de uma maneira completamente estúpida, algo que você é?")

        LinhaF  ("Era de novo aquela voz jovial que escutou no corredor.")

        Dialogo ("Jesse")
        Linha   ("Vá pro inferno, sua voz de merda!")

        Dialogo ("???????")
        FalaI   ("Ora, ora, parece que a pobre indefesa Jesse finalmente mostrou suas   ")
        FalaF   ("garras!")

        FalaI   ("Mas saiba que isso não são modos para meros mortais desprezíveis de   ")
        FalaF   ("falar com o grande deus Nyarlathotep, o caos rastejante.")

        FalaI   ("Por causa dessa insolência, quando eu estiver por completo nesse mun- ")
        FalaC   ("do, eu vou ter o prazer em trazer um inferno especial para a vida da  ")
        FalaF   ("sua família e todos aqueles que você ama.")

        LinhaF  ("CRASH!!!")

        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você desce o machado com toda a força na vitrola, despedaçando-a por inteira.")

        Dialogo ("Jesse")
        FalaS   ("Cala a boca!")

        LinhaF  ("Você dá outra machadada nos resto da vitrola.")

        Dialogo ("Jesse")
        FalaS   ("Cala a boca!!")

        Linha   ("E mais outra quebrando a mesinha ao meio.")

        Dialogo ("Jesse")
        FalaS   ("CALA A BOCAAAA!!!")

        Linha   ("Você cai no chão cansada, mas logo se levanta e vai até o esqueleto que está na")
        LinhaF  ("poltrona.")

        Linha   ("Você pega o molho de chaves que estava na mão que pendia para fora da poltrona,")
        Linha   ("seu instinto lhe dizia que poderia abrir as grades do andar de cima com essas  ")
        LinhaF  ("chaves.")

        Linha   ("Você coloca sua mão na empunhadura da adaga que está enfiada no peito do esque-")
        LinhaF  ("leto e retira a adaga.")

        LinhaF  ("O esqueleto vira pó, só sobrando a roupa de segurança para contar a história.")

        LinhaF  ("Em meio à nuvem de pó formada, uma bainha cai no chão.")

        LinhaF  ("Você pega a bainha, guarda a adaga e prende ela na calça.")
        LinhaF  ("Você olha para o molho de chaves na sua mão.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Jesse")
        FalaS   ("Tá na hora de mostrar praquele merda quem é a indefesa.")
      CASO "POLTRONA"
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você vai até a poltrona e vê que nela descansa um esqueleto")

        Linha   ("Chegando mais perto, você percebe uma adaga cravada no peito, a qual brilha com")
        LinhaF  ("uma cor psicodélica.")

        LinhaF  ("A mão que estirava para fora segurava um molho de chaves.")

        Linha   ("Você pega as chaves, pois seu instinto lhe dizia que poderia abrir as grades do")
        LinhaF  ("andar.")

        Linha   ("Um pouco hesitante, você segura a empunhadura da adaga que está enfiada no pei-")
        LinhaF  ("to do esqueleto e a retira.")

        LinhaF  ("O esqueleto vira pó, só sobrando a roupa de segurança para contar a história.")

        LinhaF  ("Em meio à nuvem de pó formada, uma bainha cai no chão.")

        LinhaF  ("Você pega a bainha, guarda a adaga na bainha e a prende na calça.")

        LinhaF  ("...")

        LinhaF  ("Da vitrola começa a sair uma voz:")

        //      ("+____________________________________________________________________+")
        Dialogo ("Vitrola")
        FalaS   ("Cuidado com Nyarlathotep.")

        FalaI   ("Ele é muito manipulador e vai usar tudo que for necessário para te   ")
        FalaF   ("enganar.")

        FalaI   ("Tome muito cuidado com os seus seguidores, eles não podem ser facil- ")
        FalaF   ("mente mortos depois da passagem.")

        //      ("+-----------------------------------------------------------------------------+")
        Linha   ("Era aquela voz rouca que te ajudara a sair da sala de máquinas.")

        Linha   ("De tudo o que aquela voz falou, a única coisa que você compreendeu por completo")
        LinhaF  ("foi o nome Nyarlathotep.")

        LinhaF  ("Era o mesmo nome de uma das personalidades da Lavinia.")

        Linha   ("Se aquela voz que a atormenta desde que acordou for essa personalidade da garo-")
        LinhaF  ("ta, como é que você a está ouvindo?")

        LinhaF  ("A voz sumiu de vez depois de seu último alerta.")

        LinhaF  ("A música voltou.")

        Linha   ("Você vai até a porta e tenta abrí-la, mas ver que ela está barricada pelo outro")
        LinhaF  ("lado.")

        Linha   ("Você olha para o molho de chaves na sua mão.")

        Dialogo ("Jesse")
        Linha   ("Espero que os meus extintos estejam certos...")
        OUTROCASO
          LinhaF  ("Você não se importa com outras opções.")
          Pergunta("O que você vai conferir?")
    FIMESCOLHA
  FIMENQUANTO
FIMPROCEDIMENTO



PROCEDIMENTO FimDoMundo()
 INICIO
  LIMPATELA()

  Titulo  ("        O FIM DO MUNDO        ")

  LinhaF  ("Cidades em chamas.")

  Linha   ("Pessoas sendo estraçalhadas nas ruas por monstros meio humanos e meio coisas   ")
  LinhaF  ("que vão além da capacidade humana de descrição.")

  Linha   ("Cultistas encapuzados invadindo casas e matando quem tenta inútilmente se es-  ")
  LinhaF  ("conder atrás da ilusória segurança de uma casa.")

  Linha   ("Pais e mães acorrentados completamente catatônicos enquanto são obrigados a ver")
  LinhaF  ("seus filhos e filhas sofrendo horrores indescritíveis.")

  Linha   ("Gritos de crianças sendo queimadas vivas ecoam por todo esse cenário apocalíp- ")
  LinhaF  ("tico.")

  LinhaF  ("Você fez as escolhas erradas nos momentos certos.")

  LinhaF  ("Você se tornou a arauta do Nyarlathotep.")

  LinhaF  ("Nyarlathotep está livre.")

  LinhaF  ("Ele corrompeu o ritual de invocação e veio sozinho para o nosso mundo.")

  LinhaF  ("Não existem mais deuses antigos ou novos que possam pará-lo agora.")

  LinhaF  ("Agora só existe Nyarlathotep.")

  LinhaF  ("Esse é o fim do nosso mundo.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Nyarlathotep")
  FalaS   ("Pfff, mas que drama desnecessário. Escolhas erradas?")

  FalaI   ("Por favor, ela foi inteligente em ficar ao meu lado. Além do mais,    ")
  FalaC   ("quem liga pra esse mundinho medíocre? Vocês devem agradecer, pois irei")
  FalaF   ("fazer desta terra vil um paraíso ao meu olhar.")

  FalaS   ("GYAHAHAHAHAHAHAAAAAA")

  FalaS   ("HAHAHAHAHAHAAAAAA")

  FalaS   ("HmhahaHAHAAAhAAA")

  LIMPATELA()

  LinhaF  ("Obrigado por jogar a demo de Montanhas da Loucura!")

  LinhaF  ("...")

  LinhaF  ("...")

  LinhaF  ("...")

  Dialogo ("Nyarlathotep")
  FalaI   ("Obrigado? Meus arautos estão agradecendo um mero mortal por jogar?")
  FalaF   ("Por favor, eles deviam ter A OBRIGAÇÃO de jogar isso!")

  LIMPATELA()

  LinhaF  ("Você realizou o final: Nyarlathotep domina o mundo")

  FIMALGORITMO
FIMPROCEDIMENTO

PROCEDIMENTO MaisUmDia()
 INICIO
  LIMPATELA()

  Titulo  ("VIVENDO PARA LUTAR MAIS UM DIA")

  LinhaF  ("Você acorda com o toque de alguém na sua cabeça.")

  Linha   ("Você consegue ver que quem está te tocando é uma figura que você não vê desde  ")
  LinhaF  ("que entrou nessa loucura.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesse")
  FalaS   ("S-senhora... Alice Angel?")
  FalaS   ("O que você tá fazendo aqui?")

  Dialogo ("Alice")
  FalaS   ("Eu tô costurando seus machucados e enfaixando outros.")

  FalaI   ("Por falar nisso, você precisa ser mais cuidadosa. Já é a segunda vez  ")
  FalaF   ("que tô te ajudando hoje.")

  FalaS   ("E era pra você ajudar a salvar minha filha.")

  Dialogo ("Jesse")
  FalaS   ("Salvar... a sua filha?")

  FalaS   ("Calma, onde eu tô? E cadê aquele anjo e aquele Jesus farsante?")

  Dialogo ("Alice")
  FalaI   ("Neste exato momento, você está no meio do pátio do sanatório Black-   ")
  FalaF   ("wood.")

  FalaS   ("E o Hastur está logo ali.")

  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Você percebe que apesar de algumas manchas de sangue que ainda estavam sendo   ")
  LinhaF  ("lavadas pela chuva, o pátio estava normal.")

  LinhaF  ("Olhando na mesma direção que a Alice, você vê uma figura.")

  Linha   ("Ele é alto, encapuzado, veste roupas amarelas e tem uma pele inumanamente páli-")
  LinhaF  ("da.")

  LinhaF  ("Era a figura do quadro que você vira mais cedo.")

  LinhaF  ("Era Hastur.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Hastur")
  FalaS   ("Parabéns humana, você conseguiu vencer o caos rastejante.")

  FalaS   ("Mas não se anime, pois o seu mundo ainda não está a salvo.")

  LinhaF  ("BAR-ROOM!!!!!")

  LinhaF  ("Um raio verde atravessou o céu.")

  Dialogo ("Hastur")
  FalaS   ("A conjunção das estrelas ainda está em andamento.")

  FalaI   ("Nyarlathotep era apenas um mero peão de Cthulhu, que apesar disso, ti-")
  FalaF   ("nha os seus próprios planos.")

  FalaI   ("Você terá que enfrentar mais servos de Cthulhu, antes de conseguir pa-")
  FalaF   ("rá-lo e salvar a filha de Alice.")

  FalaI   ("Porém, para parar Cthulhu, você vai precisar de um livro, o Necronomi-")
  FalaF   ("con.")

  Dialogo ("Jesse")
  FalaI   ("Pera lá... Como a filha de Alice entra nessa loucura, e por que eu te-")
  FalaF   ("nho que salvá-la?")

  Dialogo ("Hastur")
  FalaI   ("Ela vai ser o grande sacrifício que servirá de porta para o retorno   ")
  FalaF   ("dos antigos.")

  FalaI   ("Você tem que salvá-la para impedir que seu mundo acabe e, assim, pagar")
  FalaF   ("a sua dívida com a Alice.")

  Dialogo ("Jesse")
  FalaI   ("Calma… Isso é me parece muito familiar… Necronomicon, Cthulhu… Não…   ")
  FalaC   ("Não é possível que as histórias do meu descendente são todas verdadei-")
  FalaF   ("ras…")

  FalaI   ("Supondo que eu acredite que tudo isso não é só mais um pesadelo, ou   ")
  FalaF   ("que eu simplesmente não estou louca...")

  FalaI   ("Ainda não faz sentido, tanto o motivo de você estar me ajudando e o   ")
  FalaF   ("porquê de você ir salvar o mundo, visto que aparentemente é um deles.")

  Dialogo ("Hastur")
  FalaS   ("Saiba que eu não desejo governar o mundo.")

  FalaS   ("Sabe, você deveria seguir mais os ensinamentos do seu irmão.")

  FalaI   ("Apesar de também ser um psicólogo, ele não duvidaria dos fatos a sua  ")
  FalaC   ("frente e muito menos escolheria uma mentira em vez de aceitar a verda-")
  FalaF   ("de.")

  Dialogo ("Jesse")
  FalaS   ("Pera, o que você acabou de falar?")


  LinhaF  ("Hastur desapareceu no meio do flash esverdeado.")

  Dialogo ("Jesse")
  FalaS   ("Mas que maravilha. Agora sei como o comissário Gordon se sente.")

  Dialogo ("Alice")
  FalaI   ("Agora que todas as suas dúvidas foram respondidas, se sente aqui pra  ")
  FalaF   ("eu terminar de te remendar.")

  Dialogo ("Jesse")
  FalaS   ("Mas... Ele não falou o que temos que fazer agora.")

  Dialogo ("Alice")
  FalaI   ("Quando eu terminar com você, a gente vai atrás do Necronomicon, e esse")
  FalaF   ("livro é o único jeito de parar o ritual.")

  FalaI   ("É melhor você aproveitar esse tempinho para aproveitar e rezar para os")
  FalaF   ("seus deuses, ou o seu Deus, não sei...")

  Dialogo ("Jesse")
  FalaS   ("O quê? Vamos ter que lutar pra pegar esse livro?")

  Dialogo ("Alice")
  FalaI   ("Espere um exército de monstros e cãos. Acredite, qualquer coisa seria ")
  FalaF   ("melhor que encarar Shub-niggurath.")

  LinhaF  ("...")

  LinhaF  ("Um tempo depois você e Alice entram de novo no sanatório.")

  LinhaF  ("Você sabe que isso te levará de volta para o horror inominável.")

  LIMPATELA()

  LinhaF  ("Obrigado por jogar a Demo de 'Montanhas da Perdição!'")
  FIMALGORITMO
FIMPROCEDIMENTO

PROCEDIMENTO ManipulacaoReligiosa()
 INICIO
  LIMPATELA()

  Titulo  ("   A MANIPULAÇÃO RELIGIOSA    ")

  Linha   ("Você acorda e se vê num lugar que só pode ser descrito como o céu cristão que  ")
  LinhaF  ("você imaginou por toda a vida.")

  Linha   ("Um grande portão de ouro se abre atrás de você e de dentro sai uma figura muito")
  LinhaF  ("bela, que exalava tranquilidade, paz e que você conhecia muito.")

  LinhaF  ("Era Jesus.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesus")
  FalaS   ("Se levante, minha filha.")

  FalaI   ("Você lutou muito nessa vida, foi uma boa cristã em cada segundo dela e")
  FalaF   ("seguiu fielmente os meus passos.")

  FalaS   ("Você, agora, merece nada mais que o seu merecido lugar no Céu.")

  Dialogo ("Jesse")
  FalaS   ("Pera, eu... eu... eu tô morta?")

  Dialogo ("Jesus")
  FalaI   ("Sim, minha filha, mas não tema, porque como Eu disse, sua alma está   ")
  FalaC   ("salva e poderá descansar por toda eternidade do lado de Deus, nos     ")
  FalaF   ("grandes salões de R’lyeh.")

  Dialogo ("Jesse")
  FalaS   ("Desculpe, meu Senhor, mas descansar onde???")

  Dialogo ("Jesus")
  FalaS   ("Em R’lyeh, minha filha.")

  LinhaF  ("Você se afasta suspeitando que algo está errado.")

  Dialogo ("Jesse")
  FalaS   ("Eu nunca ouvi alguém chamar o céu por esse nome.")

  Dialogo ("Jesus")
  FalaI   ("Minha criança, vocês humanos deram muitos nomes diferentes ao longo da")
  FalaC   ("história para o céu. Vocês já chamaram esse lugar de Valhalla, Campos ")
  FalaF   ("Elísios, Campos de Junco, Orum, Céu, dentre outros nomes.")

  Dialogo ("???")
  FalaI   ("Não acredite em nada que ele diga, ele só quer usar as suas crenças   ")
  FalaF   ("contra você.")

  ESCREVAL("+-----------------------------------------------------------------------------+")
  Linha   ("Do seu lado apareceu uma figura alta e bonita com um par de asas gigantescas e ")
  LinhaF  ("brancas.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesus")
  FalaS   ("Hastur, é incrível como você é muito inconveniente e chato.")
  FalaS   ("Por isso que Cthulhu te baniu.")

  Dialogo ("Jesse")
  FalaS   ("Cthlulhu??")

  Dialogo ("Jesus")
  FalaI   ("É o nome verdadeiro do Deus que você e sua espécie cultuaram por toda ")
  FalaC   ("a sua história. Se for mais fácil para você falar, pode chamar de     ")
  FalaC   ("Odin, Zeus, Amon-Rá, Jeová, Olorum ou qualquer nome que você queira   ")
  FalaF   ("inventar. Ele não liga de como suas crianças o chamam.")

  Dialogo ("Hastur")
  FalaI   ("Como eu disse, ele só quer brincar com suas crenças. Tome, use isso   ")
  FalaC   ("para sair daqui, basta enfiar isso no peito dele que você consegue sa-")
  FalaF   ("ir.")

  LinhaF  ("Hastur te deu sua adaga de brilho estranho.")

  LinhaF  ("Você começa a se aproximar aos poucos da figura que se chama de Jesus.")

  Dialogo ("Jesus")
  FalaI   ("Minha criança, você realmente vai acreditar nesse disfarce que Lúcifer")
  FalaF   ("está usando para te persuadir em vez de acreditar em seu Salvador?")

  Pergunta("Você vai acreditar em Jesus?") // P1

  ENQUANTO (entrada <> "SIM") OU (entrada <> "NAO") FACA
    ESCREVAL("- SIM")
    ESCREVAL("- NAO")

    Resposta(entrada)

    LIMPATELA()

    ESCOLHA entrada
      CASO "SIM"
        Dialogo ("Jesse")
        FalaS   ("É melhor confiar nele do que em você.")

        //      ("+-----------------------------------------------------------------------------+")
        Linha   ("Você avança numa investida e enfia com toda a força a faca na barriga da figura")
        LinhaF  ("que se chama de salvador.")

        Dialogo ("Jesus")
        FalaS   ("GYAHAHAHAHAHAHAAAAAA")

        FalaS   ("Você realmente acha que essa faca de cortar pão é o suficiente?")

        LinhaF  ("Você gira a lâmina dentro da ferida, tira e dá outra apunhalada no peito dele. ")

        LinhaF  ("Você, por um segundo, vê a verdadeira forma do falso santo.")

        Linha   ("Você vê um tronco humanóide com três pernas, dois braços e um tentáculo no lu- ")
        LinhaF  ("gar da cabeça.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Jesus?")
        FalaI   ("Você pode me esfaquear o quanto quiser com esse brinquedinho, você    ")
        FalaC   ("nunca vai conseguir me matar. Olhe o que irá acontecer onde você me   ")
        FalaF   ("feriu!")

        LinhaF  ("Você se afasta. O que ele te falou te intimidou um pouco.")

        LinhaF  ("Ele faz o gesto, mas nada acontece.")

        LinhaF  ("Ele repete o gesto e nada acontece de novo.")

        Dialogo ("Jesus?")
        FalaI   ("Mas... Como assim... O QUE VOCÊ FEZ COMIGO SUA CRIATURA DEPLORÁVEL?!?!")
        FalaF   ("ISSO ERA PRA SER IMPOSSÍVEL!!!")

        Dialogo ("Hastur")
        FalaI   ("Isso, Nyarlathotep, é o poder desse brinquedinho que eu criei com ma- ")
        FalaF   ("gia e com o meteorito que caiu em Arkham.")

        FalaI   ("Acabe com ele, essa é sua chance de se livrar dele de uma vez por to- ")
        FalaF   ("das.")

        LinhaF  ("Nyarlathotep cai de joelhos pelo sangramento.")

        Dialogo ("Nyarlathotep")
        FalaI   ("Se você tiver o mínimo de massa cerebral você não faria isso, pois ao ")
        FalaC   ("invés de destruir todo o mundo, eu te dou um pedaço dele para governar")
        FalaF   ("e ser uma deusa entre esses humanos nojentos.") // ---------------------------------------------

        LinhaF  ("Você se aproxima aos poucos. Ele vai se arrastando de costas para longe.")

        Dialogo ("Nyarlathotep")
        FalaI   ("Eu posso trazer de volta os seus amáveis pais e seu adorável irmão que")
        FalaF   ("você tanto ama que morreram naquele trágico acidente de carro.")

        FalaI   ("Eu posso te dar o que você quiser, basta você não ser burra e enfiar  ")
        FalaF   ("essa adaga no pescoço do Hastur. O que você acha?")

        //      ("+-----------------------------------------------------------------------------+")
        Linha   ("Você chega nele. Puxa os seus cabelos para obrigá-lo a te olhar no rosto en-   ")
        LinhaF  ("quanto você dá a sua resposta.")

        LinhaF  ("Você enfia a adaga no pescoço dele.")

        Linha   ("Tudo em sua volta começa a se transformar na sua frente, alternando entre des- ")
        Linha   ("crições de vários paraísos e infernos de várias religiões que já existiram,    ")
        LinhaF  ("existem e existirão na história.")

        Linha   ("Nyarlathotep está na sua forma original, enquanto grita de dor uma luz verde   ")
        Linha   ("começa a sair da ferida e de sua boca, ficando cada vez mais intensa como se   ")
        LinhaF  ("ele fosse explodir.")

        LinhaF  ("Você escuta um barulho de pano se mexendo.")

        LinhaF  ("Uma escuridão te envolve.")

        LinhaF  ("VOOOOOOOUP!!!!!!!!!!!!")

        MaisUmDia()

      CASO "NAO"
        //      ("+-----------------------------------------------------------------------------+")
        Dialogo ("Jesse")
        FalaS   ("Mas... Você nã-... E-eu... Eu... Não sei... ")

        LinhaF  ("Cling!")

        LinhaF  ("Sua mão amolece por um segundo.")

        LinhaF  ("Foi o suficiente para a sua adaga cair.")

        Dialogo ("Jesse")
        FalaS   ("O.. O que… O que tá acontecendo?")

        FalaS   ("Isso... Não é real")

        FalaS   ("Não, isso não é deve ser real!")

        FalaS   ("ISSO NÃO É REAL!!")

        LinhaF  ("Você se afasta de Jesus e Hastur enquanto grita consigo mesma.")

        LinhaF  ("Distraída, você tropeça e cai de costas, logo se encolhendo em posição fetal.")

        LinhaF  ("Com o rosto encharcado de lágrimas, começa a balbuciar coisas desconexas.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Jesse")
        FalaS   ("Eu tô louca")

        FalaS   ("Não, eu não tô louca.")

        FalaS   ("Eu devo estar louca.")

        FalaS   ("Nãonãonãonãonãonãonão.")

        FalaS   ("Os reptilianos, aqueles malditos reptilianos.")

        FalaS   ("Foram eles, com certeza foram eles, aqueles ghouls malditos.")

        FalaI   ("Eu fui drogada, claro, foi isso que aconteceu, não devia ter aceitado ")
        FalaF   ("o drink...")

        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Ainda atordoada, você se levanta e olha para eles.")

        LinhaF  ("Ao olhar para Jesus, você nota um sorriso medonho, indo de bochecha a bochecha.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Jesus")
        FalaI   ("Acalme-se, minha filha, Eu estou aqui, não tenha medo, vou curá-la, ")
        FalaC   ("assim como fiz com o cego e todos aqueles que Eu encontrei durante a")
        FalaF   ("minha vida terrena.")

        LinhaF  ("Enquanto fala com você, Jesus se ajoelha na sua frente.")

        LinhaF  ("Hastur se vira e começa ir embora na direção da imensidão branca do céu.")

        Dialogo ("Jesse")
        FalaS   ("*Suspiro*")

        FalaS   ("Está tudo acabado.")

        LinhaF  ("Ele se cobriu com suas asas, e um piscar de olhos, desapareceu.")

        LinhaF  ("Jesus toca delicadamente o seu rosto.")

        Dialogo ("Jesus")
        FalaS   ("Levanta-te e anda, minha filha, assim como Lázaro fez.")

        FalaS   ("Agora, não tenha medo, e venha até m-")

        LinhaF  ("Jesus dá um passo para trás.")

        LinhaF  ("RAAARGH!!")

        //      ("+-----------------------------------------------------------------------------+")
        Linha   ("O braço direito de Jesus começa a se transformar em um tentáculo, semelhante ao")
        LinhaF  ("da criatura que te perseguiu.")

        Dialogo ("Jesus")
        FalaS   ("GYAHAHAHAHAHAHAAAAAA!!!!!")

        LinhaF  ("Você consegue notar o prazer na risada ao Ele ver sua cara de horror.")

        LinhaF  ("Sua boca fica cada vez mais escancarada.")

        Linha   ("A carne da face de Jesus começa a definhar, abrindo enormes feridas que jorram ")
        LinhaF  ("sangue para todo lado...")

        LinhaF  ("GLOOOOB!")

        LinhaF  ("CRACK! CRACK! CRACK!")

        LinhaF  ("Os ossos de sua mandíbula começaram a se quebrar.")

        Linha   ("E dentro de onde até instantes atrás era sua boca, começa a sair tentáculo com-")
        LinhaF  ("pletamente preto.")

        LinhaF  ("SLAAAAARGH!!")

        Linha   ("Ele joga a da carne de seu torso em você, surgindo um corpo completamente pre- ")
        LinhaF  ("to.")

        Linha   ("Você se sente como um caçador vestindo a pele de um animal que acabou de caçar,")
        LinhaF  ("mas esse animal era Jesus...")

        LinhaF  ("Lentamente, ele começa a se aproximar de você.")

        Linha   ("A cada passo que “Jesus” dava, você conseguia notar toda sua pele e carne ex-  ")
        Linha   ("postas, penduradas no que restou de sua mandíbula, balançando de um lado para o")
        LinhaF  ("outro, manchando ainda mais o peito de Nyarlathotep com sangue.")

        Linha   ("Você nota uma sinistra mistura entre a suave e calma voz de “Jesus”, e a caóti-")
        LinhaF  ("ca louca voz de Nyarlathotep.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Nyarlathotep")
        FalaI   ("O que foi, minha criança? Porque estás tão assustada? Não gostou da   ")
        FalaC   ("minha aparência? Não era isso que você queria, quando me crucificou   ")
        FalaF   ("para a morte?")

        //      ("+-----------------------------------------------------------------------------+")
        Linha   ("Você tenta se afastar, mas a cena é horrível demais para você conseguir, e sim-")
        LinhaF  ("plesmente despenca no chão.")

        LinhaF  ("Ele segura o resto da mandíbula com a mão esquerda e a arranca.")

        LinhaF  ("Ainda com a mandíbula na mão, ele estende a mão, entregando para você.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Nyarlathotep")
        FalaI   ("Coma da minha carne e beba do meu sangue, assim terá a vida eterna, e ")
        FalaC   ("eu a ressuscitarei no último dia. Porque a minha carne verdadeimente é")
        FalaC   ("comida, e o meu sangue verdadeiramente é bebida. Aquele que come da   ")
        FalaF   ("minha carne e bebe do meu sangue permanece em mim e eu nele.")

        //      ("+-----------------------------------------------------------------------------+")
        Linha   ("No seu último suspiro de sanidade diante daquele horror, você corre entre mui- ")
        LinhaF  ("tos tropeços e quedas no sangue e pedaços de carne do falso jesus.")

        LinhaF  ("E logo depois, se joga e pega a sua adaga.")

        LinhaF  ("Segura o cabo com muita força com as duas mãos.")

        Dialogo ("Jesse")
        FalaS   ("Eu... eu... devo tar num pesadelo.")

        FalaS   ("Eu preciso morrer.")

        FalaS   ("É a única maneira de se acordar de pesadelos.")

        LinhaF  ("Você encosta a lâmina quente e latente na sua garganta.")

        Dialogo ("Jesse")
        FalaS   ("AHAHAHAHAHAHAAAAAA")

        FalaS   ("HAHAHAHAHAHAAAAAA")

        FalaS   ("HAHAHAHaahhaAHHSAAAAA")

        LinhaF  ("Sua sanidade agora é inexistente.")

        LinhaF  ("Você puxa a adaga, cortando o próprio pescoço.")

        LinhaF  ("Você cai no chão ainda segurando a adaga.")

        Dialogo ("Jesse")
        FalaS   ("GAHAHAHAHAHAAAAAA")

        Dialogo ("Nyarlathotep")
        FalaS   ("HUAHAHAH, AHAHAAAAAA")

        Dialogo ("Jesse, Nyarlathotep")
        FalaS   ("HAHAHAHAHAHAAAAAA")

        //      ("+-----------------------------------------------------------------------------+")
        Linha   ("Lentamente, suas gargalhadas de loucura e agonia se misturam com as gargalhadas")
        LinhaF  ("loucas de Nyarlathotep.")

        LinhaF  ("Nyarlathotep chega perto de seu corpo.")

        LinhaF  ("Ele fica maravilhado com tudo aquilo, com o macabro sorriso louco em seu rosto.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Nyarlathotep")
        FalaS   ("Isso, beba do meu sangue e renasça como minha leal filha.")

        LinhaF  ("Ele derrama um pouco de sangue na sua boca.")

        LinhaF  ("Você começa a se convulsionar pelo chão.")

        Linha   ("O corte na garganta começou a se encher de um líquido preto como pi-  ")
        LinhaF  ("che.")

        LinhaF  ("Você, involuntariamente, começa a flutuar e fica em pé.")

        Dialogo ("Nyarlathotep")
        FalaS   ("Seja bem vinda de volta, minha filha.")

        FalaS   ("GYAHAHAHAHAHAHAAAAAA")

        FalaS   ("HAHAHAHAHAHAAAAAA")

        FalaS   ("HMUAHAHHHSHhauahsuHAHu!!!")

        FimDoMundo()

      OUTROCASO
        LinhaF  ("Ou você acredita, ou não acredita. Não tem meio termo...")
        Pergunta("E aí, você acredita em Jesus ou não??")
    FIMESCOLHA
  FIMENQUANTO
FIMPROCEDIMENTO


// ======================================================================== //
// ------------------------------------------------------------------------ //
// ======================================================================== //

PROCEDIMENTO MenuDebug
 INICIO
  LIMPATELA()

  Titulo  ("        MENU DE DEBUG         ")

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
  Resposta(entrada)

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
