ALGORITMO "Sala de Segurança"

TIPO
  OPCAO = REGISTRO
    rotulo       : CARACTERE
    foiEscolhida : LOGICO
  FIMREGISTRO

VAR entrada: CARACTERE

PROCEDIMENTO Linha(texto: CARACTERE)
 INICIO
  // Dar margem antes.
  ESCREVAL(texto)
FIMPROCEDIMENTO
// ----------------------------------------------------------------------

PROCEDIMENTO LinhaF(texto: CARACTERE)
 VAR a: CARACTERE
 INICIO
  // Dar margem antes.
  ESCREVAL(texto)
  LEIA    (a)
FIMPROCEDIMENTO
// ----------------------------------------------------------------------
PROCEDIMENTO Pergunta(texto: CARACTERE)
 INICIO
  Linha   (texto)
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
PROCEDIMENTO Resposta(var entr: CARACTERE)
 INICIO
  ESCREVAL()
  ESCREVA(">> ")
  LEIA(entr)
FIMPROCEDIMENTO
// ----------------------------------------------------------------------
PROCEDIMENTO Dialogo(nomeDaPessoa: CARACTERE)
 VAR i : INTEIRO
 INICIO
  ESCREVA ("        ~ ") // 8 espaços + til + 1 espaço
  ESCREVA (nomeDaPessoa)
  ESCREVAL(" ~")
  //ESCREVAL()
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
  ESCREVA ("     — ") // 4 espaços + 2 hifens + 1 espaço
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
  ESCREVA ("       ")
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
// +-----------------------------------------------------------------------------+

PROCEDIMENTO Seguranca
 VAR terminarLoop : LOGICO
     iteracao, i  : INTEIRO
     opcoes       : vetor[1..5] DE OPCAO
 INICIO
  opcoes[1].rotulo <- "MESA DA PORTA"
  opcoes[2].rotulo <- "MESA DO CORPO"
  opcoes[3].rotulo <- "ARMARIO"
  opcoes[4].rotulo <- "COMODA"
  opcoes[5].rotulo <- "ESTANTE"

  LIMPATELA()

  ESCREVAL("                                   SALA DE SEGURANÇA                           ")
  Linha   ("+-----------------------------------------------------------------------------+")
  LINHAF ("Você utiliza sua lanterna para expurgar a escuridão que tomava conta do lugar.")

  LINHA  ("A sala, assim como todo o lugar, estava toda deteriorada, suja e infestada")
  LINHAF ("de mofo.")

  LINHAF ("Na sala tem:")

  LINHA  ("Duas mesas, uma na parede da porta e a outra na adjacente com um corpo com")
  LINHAF ("a parte de cima apoiada como se estivesse tirando um cochilo.")

  LINHAF ("Quatro armários na parede oposta à porta.")

  LINHAF ("Na parede oposta à mesa do corpo, tem uma estante com apenas quatro livros")

  LINHA  ("Do lado da estante, tem uma cômoda com um machado encravado e três")
  LINHAF ("bustos em cima.")

  Pergunta("Por onde você vai começar a investigar?") // P1

  terminarLoop <- FALSO
  iteracao <- 1
  ENQUANTO NAO terminarLoop FACA
    PerguntaExtra("Por onde você vai começar a investigar?", iteracao > 1)

    PARA i de 1 ate 5 FACA
      ListarSeNaoEscolhida(opcoes[i].rotulo, opcoes[i].foiEscolhida)
    FIMPARA

    Resposta(entrada)

    LIMPATELA()

    ESCOLHA entrada
      CASO "MESA DA PORTA"
        //      ("+-----------------------------------------------------------------------------+")
        LINHAF ("Você olha a mesa e as suas gavetas, mas a única coisa que encontra é poeira.")
        
      CASO "MESA DO CORPO"
        LINHAF ("Você pensa em olhar o corpo, mas muda de ideia.")

        DIALOGO("Jesse")
        FALAS  ("É melhor eu ter respeito pelos mortos.")

        DIALOGO("???")
        FALAI  ("Ora mais porque? Não seja tola, ele já está morto, não sente")
        FALAF  ("mais nada. Não tem porque você não mexer.")

        FALAS  ("Talvez você encontre algo, quem sabe.")

        LINHAF ("Você percebe que essa é a mesma voz que ouviu no corredor.")

        LINHAF ("Você tenta procurar de onde ela vem, mas não encontra.")

        LINHAF ("Apesar de ficar tentada, você decide ignorar o que a voz te disse.")

        LINHA  ("Procurando na mesa, em uma das gavetas, você encontra um revólver de")
        LINHAF ("tambor com espaço para 6 balas.")

        LINHAF ("Porém a arma estava descarregada. Você a guarda na bolsa.")

        LINHA  ("Você também encontra um bilhete dizendo que há uma passagem")
        LINHAF ("secreta na estante e que leva até o térreo.")
        
      CASO "ARMARIO"
      
        LINHAF ("Dos quatro armários você só consegue abrir um.")

        LINHAF ("Dentro você encontra um kit de primeiro socorros")

      CASO "COMODA"

        LINHAF ("Você vai até a cômoda velha e desgastada.")

        LINHAF ("Procura por algo em suas gavetas.")

        LINHAF ("Mas não encontra nada.")

        LINHA  ("Você olha para o machado e torce que o cabo não esteja podre demais")
        LINHAF ("para arrancá-lo dali.")

        LINHAF ("Você coloca as duas mãos no cabo.")

        LINHA  ("Você faz força para cima com uma das mãos e deixa a outra parada")
        LINHAF ("como ponto de apoio.")

        LINHAF ("CRREEECK!")

        LINHA  ("Apesar dos barulhos feitos pela cômoda, você consegue tirar o")
        LINHAF ("machado sem quebrá-lo.")

        LINHAF ("Você tem agora uma arma para se proteger.")

        LINHA  ("Logo após, você analisa aqueles bustos que pertenciam a três homens")
        LINHAF ("diferentes, de idades muito diferentes.")

        LINHA  ("No busto mais à direita está escrito o nome James Marcus,")
        LINHAF ("ele tinha feições de um homem adulto de 30 e poucos.")

        LINHA  ("No do meio tem o nome Edward Ashford, ele aparentava ser o mais")
        LINHAF ("novo dos três, parecia ter acabado de entrar na vida adulta.")

        LINHA  ("No da esquerda tinha a figura de um homem muito velho, estava escrito")
        LINHAF ("que seu nome era Oswell Spencer.")

        LINHA  ("Você não tem certeza se esse nomes poderão ou não ser úteis no futuro,")
        LINHAF ("mas os guarda na memória.")
        
      CASO "ESTANTE"
        LINHAF ("Você vai até a estante e percebe algo muito suspeito e curioso.")

        LINHA  ("Na estante tem apenas quatro livros, cada um em um andar e em posições")
        LINHAF ("bem separadas.")

        LINHA  ("Cada livro tinha uma cor diferente, sendo um era azul, o outro era amarelo,")
        LINHAF ("outro era branco encardido e o último era preto.")

        LINHAF ("Você lê o nome dos livros um por um:")

        LINHAF ("Livro amarelo: O Rei de Amarelo por Robert W. Chambers.")

        LINHAF ("Livro azul: A cor vindo do Espaço e outros Contos por H.P.Lovecraft.")

        LINHAF ("Livro branco: Nas montanhas da Loucura e outros Contos por H.P.Lovecraft.")

        LINHAF ("Livro preto: O sussurro nas trevas e outros Contos por H.P.Lovecraft.")

        LINHA  ("Você tenta puxar o livro branco encardido, pois ele era um dos seus contos")
        LINHA  ("favoritos de H.P.Lovecraft, e te dava orgulho de dizer que é")
        LINHAF ("uma parente dele.")

        LINHAF ("Click!!!")

        LINHA  ("Você percebe que esses livros são apenas alavancas disfarçadas e que você")
        LINHAF ("acionou algo.")

        DIALOGO("Jesse")
        LINHAF ("O que acontece quando eu puxo na ordem certa?")
        
        Pergunta("Você tenta qual ordem?")
        ESCREVAL("Exemplo de ordem - AMARELO, AZUL, BRANCO, PRETO")
        REPITA

          Resposta(entrada)


          ESCOLHA entrada
            CASO "AMARELO, BRANCO, AZUL, PRETO"
              //      ("+____________________________________________________________________+")
              LIMPATELA()
              LINHAF ("Você puxa os livros na ordem que estava no enigma.")

              LINHAF ("Você se afasta um pouco esperando por algo.")

              LINHAF ("Você escuta sons abafados de engrenagem.")

              LINHA  ("A estante vai milímetros para frente, deixando uma frestinha que")
              LINHAF ("cabia seus dedos.")

              LINHA  ("Você enfia seus dedos na fresta e arrasta a estante para frente,")
              LINHAF ("abrindo a passagem.")
              terminarLoop <- VERDADEIRO
            OUTROCASO
              LIMPATELA()
              LINHAF ("Você puxa os livros na ordem que acha que está certa.")

              LINHAF ("Você se afasta um pouco esperando por algo.")

              LINHAF ("Mas nada acontece, a ordem colocada era a errada")

              DIALOGO("Jesse")
              FALAI  ("Provavelmente está errada. É melhor eu tentar outra ordem ou")
              FALAF  ("procurar mais alguma pista.")

              LIMPATELA()

              PERGUNTA ("Você tenta qual ordem?")
              ESCREVAL ("Exemplo de ordem - AMARELO, AZUL, BRANCO, PRETO")
              FIMESCOLHA

              
      OUTROCASO
        LinhaF  ("Escolha inválida.")
    FIMESCOLHA



    PARA i de 1 ate 5 FACA
      SE entrada = opcoes[i].rotulo ENTAO
        opcoes[i].foiEscolhida <- VERDADEIRO
      FIMSE
    FIMPARA

    iteracao <- iteracao + 1
    FIMENQUANTO
FIMPROCEDIMENTO


// ======================================================================
INICIO
  Seguranca()
FIMALGORITMO