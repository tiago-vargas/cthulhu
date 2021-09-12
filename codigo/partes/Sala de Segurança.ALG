PROCEDIMENTO SalaDeSeguranca()
 VAR terminarLoop : LOGICO
     iteracao, i  : INTEIRO
     opcoes       : vetor[1..5] de OPCAO
     livros       : vetor[1..4] de CARACTERE
     acertouOrdem : LOGICO
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
  LinhaF  ("mofo.")

  Linha   ("Na sala tem:")
  Linha   ("- Duas mesas: uma na parede da porta e a outra na parede adjacente, com um corpo")
  LinhaF  ("  apoiado como se estivesse tirando um cochilo.")

  LinhaF  ("- Quatro armários na parede oposta à porta.")

  LinhaF  ("- Uma estante com apenas quatro livros na parede oposta à mesa do corpo.        ")

  Linha   ("- Uma cômoda, do lado da estante, com um machado encravado e três bustos em ci- ")
  LinhaF  ("  ma.")

  Pergunta("Por onde você vai começar a investigar?") // P1

  terminarLoop <- FALSO
  iteracao <- 1
  ENQUANTO nao terminarLoop FACA
    PerguntaExtra("O que você vai investigar agora?", iteracao > 1)

    PARA i de 1 ate 5 FACA
      ListarSeNaoEscolhida(opcoes[i].rotulo, opcoes[i].foiEscolhida)
    FIMPARA

    Resposta(entrada)

    PARA i de 1 ate 5 FACA
      SE entrada = opcoes[i].rotulo ENTAO
        opcoes[i].foiEscolhida <- VERDADEIRO
      FIMSE
    FIMPARA

    LIMPATELA()

    ESCOLHA entrada
      CASO "MESA DA PORTA"
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você olha a mesa e as suas gavetas, mas a única coisa que encontra é poeira.   ")

      CASO "MESA DO CORPO"
        LinhaF  ("Você pensa em olhar o corpo, mas muda de ideia.")

        //      ("+____________________________________________________________________+")
        Dialogo ("Jesse")
        FalaS   ("É melhor eu ter respeito pelos mortos.")

        Dialogo ("??????")
        FalaI   ("Ora, mas por quê? Não seja tola, ele já está morto, não sente mais na-")
        FalaF   ("da. Não tem porquê você não mexer.")

        FalaS   ("Talvez você encontre algo, quem sabe.")

        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você percebe que essa é a mesma voz que ouviu no corredor.                     ")

        LinhaF  ("Você tenta procurar de onde ela vem, mas não encontra.                         ")

        LinhaF  ("Apesar de ficar tentada, você decide ignorar o que a voz te disse.             ")

        Linha   ("Procurando na mesa, em uma das gavetas você encontra um revólver de tambor com ")
        LinhaF  ("espaço para 6 balas.")

        LinhaF  ("Porém a arma estava descarregada. Você a guarda na bolsa, mesmo assim.         ")

        Linha   ("Você também encontra um bilhete dizendo que há uma passagem secreta na estante ")
        LinhaF  ("e que leva até o térreo.")

      CASO "ARMARIO"
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Dos quatro armários você só consegue abrir um.")

        LinhaF  ("Dentro dele você encontra um kit de primeiro socorros.")

      CASO "COMODA"
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você vai até a cômoda velha e desgastada.")

        LinhaF  ("Procura por algo em suas gavetas, mas não encontra nada.")

        Linha   ("Você olha para o machado e torce para que o cabo não esteja podre demais para  ")
        LinhaF  ("arrancá-lo dali.")

        LinhaF  ("Você coloca as duas mãos no cabo.")

        Linha   ("Você faz força para cima com uma das mãos e deixa a outra parada como ponto de ")
        LinhaF  ("apoio.")

        LinhaF  ("CRREEECK!")

        Linha   ("Apesar dos barulhos feitos pela cômoda, você consegue tirar o machado sem que- ")
        LinhaF  ("brá-lo.")

        LinhaF  ("Você tem agora uma arma para se proteger.")

        Linha   ("Logo após, você analisa aqueles bustos que pertenciam a três homens diferentes ")
        LinhaF  ("de idades também muito diferentes.")

        Linha   ("No busto mais à direita está escrito o nome James Marcus. Ele tinha feições de ")
        LinhaF  ("um homem adulto de trinta e poucos anos.")

        Linha   ("No do meio tem o nome Edward Ashford. Ele aparentava ser o mais novo dos três, ")
        LinhaF  ("parecia ter acabado de entrar na vida adulta.")

        Linha   ("No da esquerda tinha a figura de um homem muito velho. Estava escrito que seu  ")
        LinhaF  ("nome era Oswell Spencer.")

        Linha   ("Você não tem certeza se esse nomes poderão ou não ser úteis no futuro, mas os  ")
        LinhaF  ("guarda na memória.")

      CASO "ESTANTE"
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você vai até a estante e percebe algo muito suspeito e curioso.                ")

        Linha   ("Na estante tem apenas quatro livros, cada um em um andar e em posições bem se- ")
        LinhaF  ("paradas.")

        Linha   ("Cada livro tinha uma cor diferente, sendo um era azul, o outro era amarelo, o  ")
        LinhaF  ("outro era branco encardido e o último era preto.")

        LinhaF  ("Você lê o nome dos livros um por um:")

        LinhaF  ("Livro amarelo : O Rei de Amarelo, de Robert W. Chambers.                       ")

        LinhaF  ("Livro azul    : A cor vindo do Espaço e outros Contos, de H. P. Lovecraft.     ")

        LinhaF  ("Livro branco  : Nas montanhas da Loucura e outros Contos, de H. P. Lovecraft.  ")

        LinhaF  ("Livro preto   : O sussurro nas trevas e outros Contos, de H. P. Lovecraft.     ")

        Linha   ("Você tenta puxar o livro branco encardido, pois ele era um dos seus contos fa- ")
        LinhaF  ("voritos de H. P. Lovecraft, e te dava orgulho de dizer que é uma parente dele. ")

        LinhaF  ("Click!!!")

        Linha   ("Você percebe que esses livros são apenas alavancas disfarçadas e que você acio-")
        LinhaF  ("nou algo.")

        Linha   ("Você puxa os outros livros aleatoriamente. Escuta um som baixo de um mecanismo,")
        LinhaF  ("mas nada acontece. Os livros voltam às posições originais.")

        // OK ATE AQUI!!
        //      ("+____________________________________________________________________+")
        Dialogo ("Jesse")
        LinhaF  ("O que será que acontece se eu puxar na ordem certa?")

        Pergunta("Você tenta qual ordem?")

        ENQUANTO nao acertouOrdem FAÇA
          ESCREVAL("- AMARELO")
          ESCREVAL("- AZUL")
          ESCREVAL("- BRANCO")
          ESCREVAL("- PRETO")

          PARA i de 1 ate 4 FACA
            REPITA
              ESCREVA ("Livro", i, " :  ")
              LEIA    (livros[i])

              SE (livros[i] <> "AMARELO") e (livros[i] <> "AZUL") e (livros[i] <> "BRANCO") e (livros[i] <> "PRETO") ENTAO
                ESCREVAL()
                LinhaF  ("Não existe livro dessa cor na estante.")
              FIMSE
            ATE (livros[i] = "AMARELO") ou (livros[i] = "AZUL") ou (livros[i] = "BRANCO") ou (livros[i] = "PRETO")
          FIMPARA

          SE (livros[1] = "AMARELO") e (livros[2] = "BRANCO") e (livros[3] = "AZUL") e (livros[4] = "PRETO") ENTAO
            acertouOrdem <- VERDADEIRO
            LIMPATELA()
            //      ("+-----------------------------------------------------------------------------+")
            LinhaF  ("Você se afasta um pouco esperando por alguma coisa acontecer.")

            LinhaF  ("...")

            LinhaF  ("Você escuta sons abafados de engrenagem.")

            LinhaF  ("...")

            Linha   ("A estante vai centímetros para frente, deixando uma frestinha por onde cabem os")
            LinhaF  ("seus dedos.")

            Linha   ("Você enfia seus dedos na fresta e arrasta a estante para frente, abrindo a pas-")
            LinhaF  ("sagem.")
            terminarLoop <- VERDADEIRO
            ESCREVAL("fim")
          SENAO
            LIMPATELA()
            //      ("+-----------------------------------------------------------------------------+")
            LinhaF  ("Você se afasta um pouco esperando por alguma coisa.")

            LinhaF  ("...")
            LinhaF  ("...")
            LinhaF  ("...")

            LinhaF  ("Mas nada acontece.")

            //      ("+____________________________________________________________________+")
            Dialogo ("Jesse")
            FalaS   ("Provavelmente está errada. É melhor eu tentar outra ordem.")

            Pergunta("Qual ordem você tenta agora?")
          FIMSE
        FIMENQUANTO

      OUTROCASO
        LinhaF  ("Esse móvel não existe na sala.")
    FIMESCOLHA

    iteracao <- iteracao + 1
  FIMENQUANTO
  ESCREVAL("FIM")
FIMPROCEDIMENTO
