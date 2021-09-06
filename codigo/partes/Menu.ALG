ALGORITMO "Menu Principal"

VAR
   entrada: CARACTERE

// ----------------------------------------------------------------------
PROCEDIMENTO Menu
 VAR
 INICIO
  LIMPATELA()

  // Arte ASCII aqui
  ESCREVAL("[1] - JOGAR")
  ESCREVAL("[2] - REDIMENSIONAR TELA")
  ESCREVAL("[3] - CREDITOS")
  ESCREVAL("[4] - SAIR")

  ESCREVAL()
  ESCREVA(">> ")
  LEIA(entrada)

  ESCOLHA entrada
    CASO "1"
      Jogar()
    CASO "2"
      RedimensionarTela()
    CASO "3"
       Creditos()
    CASO "4"
      // sair
    OUTROCASO
      Menu()
  FIMESCOLHA
FIMPROCEDIMENTO
// +-----------------------------------------------------------------------------+

PROCEDIMENTO RedimensionarTela
 VAR a : CARACTERE
 INICIO
  LIMPATELA()

  ESCREVAL("Redimensione sua tela até que a linha apareça por completo.")
  ESCREVAL("+-----------------------------------------------------------------------------+") // 79 caracteres
  ESCREVAL()
  ESCREVA("Aperte Enter para voltar.")
  LEIA(a)
  Menu()
FIMPROCEDIMENTO

// ----------------------------------------------------------------------

PROCEDIMENTO Creditos
 VAR a : CARACTERE
 INICIO
  LIMPATELA()

  ESCREVAL("CRIADORES")
  ESCREVAL()
  ESCREVAL("Tiago Vargas Pereira de Oliveira")
  ESCREVAL("Joao Vitor Abreu Castro")
  ESCREVAL("Joao Victor De Souza Albuquerque")
  ESCREVAL()
  ESCREVA("Aperte Enter para voltar.")
  LEIA(a)
  Menu()
FIMPROCEDIMENTO

// ======================================================================
INICIO
  Menu
FIMALGORITMO
