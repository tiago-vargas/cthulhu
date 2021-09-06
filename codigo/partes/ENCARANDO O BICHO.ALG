ALGORITMO "Encarando o Bicho"

VAR entrada: CARACTERE

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
PROCEDIMENTO RESPOSTA(var entr: CARACTERE)
 INICIO
  ESCREVAL()
  ESCREVA(">> ")
  LEIA(entr)
FIMPROCEDIMENTO

// ----------------------------------------------------------------------
PROCEDIMENTO Bicho
 INICIO
  //       "+-----------------------------------------------------------------------------+"
  TEXTO   ("O tentáculo que fica no lugar do braço de enfermeira te agarra e puxa.")
  TEXTO   ("Ela está te apertando muito forte, você começa a ficar sem ar.")
  TEXTO   ("Ela te bate com muita força na parede onde ficam as celas.")
  TEXTO   ("Com essa pancada você quase desmaia.")

  DIALOGO ("     ???????")
  FALA    ("Use a adaga.")

  TEXTO   ("Era aquela voz rouca de novo.")

  PERGUNTA("Usar agora ou esperar?")

  REPITA
    ESCREVAL("- USAR")
    ESCREVAL("- ESPERAR")
    Resposta(entrada)
    LIMPATELA()
    ESCOLHA entrada
    CASO "USAR"
      //       "+-----------------------------------------------------------------------------+"
      TEXTO   ("Você enfia a adaga no tentáculo.")
      TEXTO   ("Ela te solta e se afasta urrando de dor.")
      TEXTO   ("Você pega o seu machado e disfere um golpe.")
      TEXTO   ("Você acerta bem no peito da criatura.")
      TEXTO   ("Ela te bate, te jogando contra a grade.")
      TEXTO   ("Você se levanta e vai para cima dela para dar mais um golpe.")

      ESCREVAL("Porém ela te dá um golpe horizontal com o tentáculo te jogando para fora da ja-")
      TEXTO   ("nela.")
    CASO "ESPERAR"
      TEXTO   ("Você a espera chegar mais próxima.")
      TEXTO   ("Ela já está quase com o rosto colado no seu.")
      TEXTO   ("Você enfia a adaga no pescoço dela e ela dá um urro de dor.")
      TEXTO   ("Ela te solta e se afasta indo para mais perto da janela.")
      TEXTO   ("Você pega o seu machado e desce no peito dela")
      TEXTO   ("Ela dá mais um urro de dor e chega no parapeito da janela.")

      ESCREVAL("Você corre para cima dela e desfere um último golpe que a faz ir mais para traz")
      TEXTO   ("batendo no parapeito e caindo.")

      ESCREVAL("Porém ela era mais rápida que você e te agarra antes de cair, levando você jun-")
      TEXTO   ("to com ela.")
    OUTROCASO
      TEXTO   ("Não há outras opções!!")
      PERGUNTA("O que você faz??")
    FIMESCOLHA
  ATE (entrada = "USAR") ou (entrada = "ESPERAR")


FIMPROCEDIMENTO

// ======================================================================
INICIO
  Bicho
FIMALGORITMO
