ALGORITMO "Jogo"

VAR
   entrada: CARACTERE

// ======================================================================== //
PROCEDIMENTO mostre(trecho: CARACTERE)
VAR a: CARACTERE // so pra poder pausar o texto
INICIO
   ESCREVAL(trecho)
   LEIA(a)
FIMPROCEDIMENTO
// ------------------------------------------------------------------------ //
PROCEDIMENTO pergunte(texto: CARACTERE)
INICIO
   ESCREVAL(texto)
   ESCREVA(">> ")
FIMPROCEDIMENTO

// ======================================================================== //
INICIO
   // ...
FIMALGORITMO
