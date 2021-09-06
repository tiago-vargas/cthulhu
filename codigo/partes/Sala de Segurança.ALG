ALGORITMO "Sala de Segurança"

TIPO
  OPCAO = REGISTRO
    rotulo       : CARACTERE
    foiEscolhida : LOGICO
  FIMREGISTRO

VAR entrada: CARACTERE

PROCEDIMENTO Titulo(texto: CARACTERE)
 INICIO
  ESCREVAL("+-----------------------------------------------------------------------------+")
  ESCREVA ("¦                        ") // 24 espacos
  ESCREVA (texto) // 30 caracteres exatamente
  ESCREVAL("                       ¦")  // 23 espacos
  ESCREVAL("+-----------------------------------------------------------------------------+")
FIMPROCEDIMENTO
// ----------------------------------------------------------------------

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

PROCEDIMENTO SalaDeSeguranca()
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

  Titulo  ("     A SALA DE SEGURANÇA      ")

  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("Você utiliza sua lanterna para expurgar a escuridão que tomava conta do lugar. ")

  Linha   ("A sala, assim como todo o lugar, estava toda deteriorada, suja e infestada de  ")
  LinhaF  ("mofo.                                                                          ")

  LinhaF  ("Na sala tem:                                                                   ")

  Linha   ("Duas mesas, uma na parede da porta e a outra na adjacente com um corpo com     ")
  LinhaF  ("a parte de cima apoiada como se estivesse tirando um cochilo.                    ")

  LinhaF  ("Quatro armários na parede oposta à porta.                                      ")

  LinhaF  ("Na parede oposta à mesa do corpo, tem uma estante com apenas quatro livros.    ")

  Linha   ("Do lado da estante, tem uma cômoda com um machado encravado e três             ")
  LinhaF  ("bustos em cima.                                                                ")

  Pergunta("Por onde você vai começar a investigar?                                        ") // P1

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
        LinhaF  ("Você olha a mesa e as suas gavetas, mas a única coisa que encontra é poeira. ")

      CASO "MESA DO CORPO"
        LinhaF  ("Você pensa em olhar o corpo, mas muda de ideia.                              ")

        //     ("+____________________________________________________________________+")
        Dialogo ("Jesse")
        FalaS   ("É melhor eu ter respeito pelos mortos.                             ")

        Dialogo ("???")
        FalaI   ("Ora mais porque? Não seja tola, ele já está morto, não sente       ")
        FalaF   ("mais nada. Não tem porque você não mexer.                          ")

        FalaS   ("Talvez você encontre algo, quem sabe.                              ")

        LinhaF  ("Você percebe que essa é a mesma voz que ouviu no corredor.         ")

        LinhaF  ("Você tenta procurar de onde ela vem, mas não encontra.             ")

        LinhaF  ("Apesar de ficar tentada, você decide ignorar o que a voz te disse. ")

        Linha   ("Procurando na mesa, em uma das gavetas, você encontra um revólver  ")
        LinhaF  ("de tambor com espaço para 6 balas.")

        LinhaF  ("Porém a arma estava descarregada. Você a guarda na bolsa.          ")

        Linha   ("Você também encontra um bilhete dizendo que há uma passagem        ")
        LinhaF  ("secreta na estante e que leva até o térreo.                        ")

      CASO "ARMARIO"

        LinhaF  ("Dos quatro armários você só consegue abrir um.                     ")

        LinhaF  ("Dentro você encontra um kit de primeiro socorros                   ")

      CASO "COMODA"

        LinhaF  ("Você vai até a cômoda velha e desgastada.                          ")

        LinhaF  ("Procura por algo em suas gavetas.                                  ")

        LinhaF  ("Mas não encontra nada.                                             ")

        Linha   ("Você olha para o machado e torce que o cabo não esteja podre demais")
        LinhaF  ("para arrancá-lo dali.                                              ")

        LinhaF  ("Você coloca as duas mãos no cabo.                                  ")

        Linha   ("Você faz força para cima com uma das mãos e deixa a outra parada   ")
        LinhaF  ("como ponto de apoio.                                               ")

        LinhaF  ("CRREEECK!                                                          ")

        Linha   ("Apesar dos barulhos feitos pela cômoda, você consegue tirar o      ")
        LinhaF  ("machado sem quebrá-lo.                                             ")

        LinhaF  ("Você tem agora uma arma para se proteger.                          ")

        Linha   ("Logo após, você analisa aqueles bustos que pertenciam a três homens")
        LinhaF  ("diferentes, de idades muito diferentes.                            ")

        Linha   ("No busto mais à direita está escrito o nome James Marcus,          ")
        LinhaF  ("ele tinha feições de um homem adulto de 30 e poucos.               ")

        Linha   ("No do meio tem o nome Edward Ashford, ele aparentava ser o mais    ")
        LinhaF  ("novo dos três, parecia ter acabado de entrar na vida adulta.       ")

        Linha   ("No da esquerda tinha a figura de um homem muito velho, estava      ")
        LinhaF  ("escrito que seu nome era Oswell Spencer.                           ")

        Linha   ("Você não tem certeza se esse nomes poderão ou não ser úteis no     ")
        LinhaF  ("futuro, mas os guarda na memória.                                  ")

      CASO "ESTANTE"
        LinhaF  ("Você vai até a estante e percebe algo muito suspeito e curioso.    ")

        Linha   ("Na estante tem apenas quatro livros, cada um em um andar e em      ")
        LinhaF  ("posições bem separadas.")

        Linha   ("Cada livro tinha uma cor diferente, sendo um era azul, o outro era ")
        LinhaF  ("amarelo, outro era branco encardido e o último era preto.          ")

        LinhaF  ("Você lê o nome dos livros um por um:                               ")

        LinhaF  ("Livro amarelo: O Rei de Amarelo de Robert W. Chambers.             ")

        LinhaF  ("Livro azul: A cor vindo do Espaço e outros Contos de H.P.Lovecraft.")

        Linha  ("Livro branco: Nas montanhas da Loucura e outros Contos de H.P      ")
        LinhaF  ("Lovecraft                                                          ")

        Linha   ("Livro preto: O sussurro nas trevas e outros Contos de H.P.         ")
        LinhaF  ("Lovecraft.")

        Linha   ("Você tenta puxar o livro branco encardido, pois ele era um dos seus")
        Linha   ("contos favoritos de H.P.Lovecraft, e te dava orgulho de dizer que é")
        LinhaF  ("uma parente dele.                                                  ")

        LinhaF  ("Click!!!                                                           ")

        Linha   ("Você percebe que esses livros são apenas alavancas disfarçadas e   ")
        LinhaF  ("que você acionou algo.                                             ")

        Dialogo ("Jesse")
        LinhaF  ("O que acontece quando eu puxo na ordem certa?                      ")

        Pergunta("Você tenta qual ordem?")
        
        ENQUANTO (entrada <> "AMARELO, BRANCO, AZUL, PRETO") FAÇA
        ESCREVAL("Exemplo de ordem - AMARELO, AZUL, BRANCO, PRETO                    ")

        Resposta(entrada)
        ESCOLHA entrada
            CASO "AMARELO, BRANCO, AZUL, PRETO"
              //      ("+____________________________________________________________________+")
              LIMPATELA()
              LinhaF  ("Você puxa os livros na ordem que estava no enigma.                  ")

              LinhaF  ("Você se afasta um pouco esperando por algo.                         ")

              LinhaF  ("Você escuta sons abafados de engrenagem.                            ")

              Linha   ("A estante vai milímetros para frente, deixando uma frestinha que    ")
              LinhaF  ("cabia seus dedos.                                                   ")

              Linha   ("Você enfia seus dedos na fresta e arrasta a estante para frente,    ")
              LinhaF  ("abrindo a passagem.                                                 ")
            OUTROCASO
              LIMPATELA()
              LinhaF  ("Você puxa os livros na ordem que acha que está certa.               ")

              LinhaF  ("Você se afasta um pouco esperando por algo.                         ")

              LinhaF  ("Mas nada acontece, a ordem colocada era a errada                    ")

              Dialogo ("Jesse")
              FalaI   ("Provavelmente está errada. É melhor eu tentar outra ordem ou        ")
              FalaF   ("procurar mais alguma pista.                                         ")
              
              LIMPATELA()
              Pergunta("Tente outra ordem                                                   ")
              FIMESCOLHA
  FIMENQUANTO


      OUTROCASO
        LinhaF  ("Escolha inválida.                                                         ")
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
  SalaDeSeguranca()
FIMALGORITMO
