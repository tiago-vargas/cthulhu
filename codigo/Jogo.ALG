ALGORITMO "Jogo"

VAR entrada      : CARACTERE
    terminarJogo : LOGICO

// ======================================================================== //
// ------------------------------ FRAMEWORK ------------------------------- //


// Textos: ("+-----------------------------------------------------------------------------+")
// Falas : ("+____________________________________________________________________+")

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



PROCEDIMENTO PassagemSecreta1()
 INICIO
  ESCREVAL("                                PASSAGEM SECRETA                               ")
  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Vinha um forte cheiro de mofo da passagem, característicos de lugares a muito  ")
  LinhaF  ("tempo isolados do mundo.")

  LinhaF  ("Toda a passagem era feita de madeira que parecia ser de muito tempo atrás.")

  Linha   ("Assim que você entra, a primeira coisa que vê é um quadro com a imagem de um   ")
  Linha   ("prédio enorme em construção e um monte de trabalhadores indo para um lado e pro")
  LinhaF  ("outro.")

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

  FalaS   ("Como o benevolente deus que eu sou, vou te dar uma pequena dica.")

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
 VAR
 INICIO
  LIMPATELA()
  ESCREVAL("                                PASSAGEM SECRETA                               ")
  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("Você quase desmaia com o impacto na parede.")
  LinhaF  ("Você corre até a alavanca da porta da sala de máquinas e levanta ela.")

  Linha   ("Quando você finalmente se sente em segurança, você recua até a parede e se sen-")
  LinhaF  ("ta na escada encostando a cabeça na parede.")

  LinhaF  ("Você começa com um choro leve e baixo.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesse")
  FalaS   ("De todas as pessoas, por que  isso tá acontecendo comigo?")
  FalaS   ("Por que essa merda tá rolando comigo?")
  FalaS   ("Ou melhor, mas que porra tá acontecendo aqui?!")
  FalaS   ("E que merda de sanatório é esse?!")

  Linha   ("Você se levanta.")

  Dialogo ("Jesse")
  FalaS   ("Tá, eu preciso me acalmar e me limp…")

  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Ao olhar para a suas roupas, você vê que elas estão um pouco danificadas, porém")
  LinhaF  ("limpas, tirando as marcas de sangue em algumas partes.")

  //      ("+____________________________________________________________________+")
  Dialogo ("Jesse")
  FalaI   ("Isso... Não faz nenhum sentido, como diabos minha roupa tá toda ferra-")
  FalaF   ("da, eu to toda ferida, mas as minhas roupas estão limpas??")

  FalaS   ("Será que eu estou ficando louca e me auto mutilei?")
  FalaS   ("Será que aquela pessoa que me salvou também é coisa da minha cabeça?")
  FalaS   ("Ou melhor, será que TUDO isso é coisa da minha cabeça?")
  FalaS   ("...")

  FalaI   ("Jesse, para de falar merda e se acalma, você é a porra de uma psicólo-")
  FalaF   ("ga.")

  FalaS   ("Só… Foca em encontrar uma forma de sair dessa merda de lugar.")

  FalaS   ("*suspiro*")

  FalaI   ("Queria que o John estivesse aqui, ele com certeza falaria alguma coisa")
  FalaF   ("para fazer tudo isso ter sentido.")

  //      ("+-----------------------------------------------------------------------------+")
  Linha   ("Enquanto você sobe a escada até a sala de descanso, você fica pensando em pos- ")
  LinhaF  ("síveis respostas para o que aconteceu, além da óbvia de que você está louca.")

  Linha   ("Uma música clássica sinistra está invadindo a passagem, vindo da sala de segu- ")
  LinhaF  ("rança.")

  Linha   ("Você sobe até a sala de descanso que fica no térreo, então aciona a alavanca,  ")
  Linha   ("entra na sala que também está bem iluminada e que tem uma vitrola na mesa de   ")
  LinhaF  ("centro, tocando a mesma música que estava no corredor.")
FIMPROCEDIMENTO

PROCEDIMENTO SalaDeDescanso
 INICIO
  LIMPATELA()
  ESCREVAL("                                SALA DE DESCANSO                               ")
  //      ("+-----------------------------------------------------------------------------+")
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
