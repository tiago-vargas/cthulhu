ALGORITMO "Encarando o Bicho"

VAR entrada: CARACTERE

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
PROCEDIMENTO EncarandoOBicho()
 INICIO
  LIMPATELA()
  Titulo  ("       ENCARANDO O BICHO      ")
  //      ("+-----------------------------------------------------------------------------+")
  LinhaF  ("O tentáculo que fica no lugar do braço de enfermeira te agarra e puxa.         ")

  LinhaF  ("Ele está te apertando com tanta força que você começa a ficar sem ar.          ")

  LinhaF  ("Ele te joga na parede onde ficam as celas. Você quase desmaia com a pancada   .")

  Dialogo ("??????")
  FalaS   ("Use a adaga.")

  LinhaF  ("Era aquela voz rouca de novo.")

  Pergunta("Você vai usar a adaga agora ou vai esperar?")

  REPITA
    ESCREVAL("- USAR")
    ESCREVAL("- ESPERAR")

    Resposta(entrada)

    ESCOLHA entrada
      CASO "USAR"
        LIMPATELA()
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("Você enfia a adaga no tentáculo. Ele te solta e se afasta, urrando de dor.     ")

        LinhaF  ("Você pega o seu machado e disfere um golpe, acertando bem no peito da criatura.")

        LinhaF  ("Ela te bate, te jogando contra a grade.")

        LinhaF  ("Você se levanta, mancando, e vai para cima dela para dar mais um golpe.        ")

        Linha   ("Porém a criatura te dá um golpe com o tentáculo, te jogando para fora pela ja- ")
        LinhaF  ("nela.")

      CASO "ESPERAR"
        LIMPATELA()
        //      ("+-----------------------------------------------------------------------------+")
        LinhaF  ("...")

        LinhaF  ("Você espera a criatura chegar mais perto de você.")

        LinhaF  ("...")

        LinhaF  ("Ela já está quase com o rosto colado no seu.")

        Linha   ("Você enfia a adaga no pescoço dela e ela dá um urro de dor. Ela te solta e se  ")
        LinhaF  ("afasta indo para mais perto da janela.")

        LinhaF  ("Você pega o seu machado e o desce no peito dela.")

        LinhaF  ("Ela urra mais uma vez e chega no parapeito da janela.")

        Linha   ("Você corre para cima dela e desfere um último golpe que a faz ir para trás, ba-")
        LinhaF  ("tendo no parapeito e caindo para fora.")

        Linha   ("Porém, ela era mais rápida que você e te agarra antes de cair, levando você    ")
        LinhaF  ("junto com ela.")
      OUTROCASO
        LIMPATELA()
        LinhaF  ("Matematicamente, só há essas duas opções!!")
        Pergunta("O que você faz??")
    FIMESCOLHA
  ATE (entrada = "USAR") ou (entrada = "ESPERAR")
FIMPROCEDIMENTO

// ======================================================================
INICIO
  EncarandoOBicho()
FIMALGORITMO
