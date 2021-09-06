ALGORITMO "Prólogo"

VAR

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

INICIO
  Prologo()
FIMALGORITMO
