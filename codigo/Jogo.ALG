ALGORITMO "Jogo"

VAR entrada      : CARACTERE
    terminarJogo : LOGICO

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
