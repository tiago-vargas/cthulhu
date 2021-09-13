# Guia de Estilo

Palavras chaves são maiúsculas.

As primeiras variáveis são declaradas na mesma linha que `VAR`, não embaixo. Variáveis em linhas subsequentes devem ser alinhadas com base na primeira linha. Todos os dois-pontos `:` devem estar alinhados com relação ao mesmo bloco `VAR`. Coloque 1 espaço antes e após dois-pontos `:`.

``` alg
VAR <var1>         : <tipo1>
    <var2>, <var3> : <tipo2>
```

`VAR` e `INICIO` em procedimentos ou funções devem ser indentadas de 1 espaço.


``` alg
PROCEDIMENTO proc
 VAR <var1> : <tipo1>
     <var2> : <tipo2>
 INICIO
  ...
FIMPROCEDIMENTO
```

Indentação padrão de 2 espaços dentro de cada bloco.

## Escrevendo na Tela

### Paragrafos
Use os procedimentos `Linha` e `LinhaF` pra mostrar paragrafos na tela seguido de uma pausa, que o usuario pode pressionar `Enter` pra continuar o programa. Como o usuario pode avancar sem escrever nada, o efeito tambem eh de textos separados de uma linha em branco. Util pra mostrar textos aos poucos. `Linha` eh pra escrever as primeiras linhas do paragrafo. A ultima linha (ou a unica, se for o caso) deve ser feita com `LinhaF`

``` alg
PROCEDIMENTO Linha(texto: CARACTERE) // Linha de texto intermediária
 INICIO
  ESCREVA ("  ") // margem
  ESCREVAL(texto)
FIMPROCEDIMENTO

PROCEDIMENTO LinhaF(texto: CARACTERE) // Linha de texto final
 VAR a : CARACTERE
 INICIO
  ESCREVA ("  ") // margem
  ESCREVAL(texto)

  ESCREVA ("  ") // margem
  LEIA    (a)
FIMPROCEDIMENTO
```

### Dialogo de Personagens

Em cada dialogo deve ser indicado quem fala com `Dialogo`.

```
PROCEDIMENTO Dialogo(nomeDaPessoa: CARACTERE)
 VAR i : INTEIRO
 INICIO
  ESCREVA ("        ~ ") // 8 espaços + til + 1 espaço
  ESCREVA(nomeDaPessoa)
  ESCREVAL(" ~")
  //ESCREVAL()
FIMPROCEDIMENTO
```

Dialogo de linha simples eh implementado com o procedimento `FalaS`.

```
// ----------------------------------------------------------------------
PROCEDIMENTO FalaS(text: CARACTERE) // Fala Simples
 VAR a : CARACTERE
 INICIO
  ESCREVA ("     — ")
  ESCREVAL(text)
  LEIA(a)
FIMPROCEDIMENTO
```

Dialogo de multiplas linhas eh implementado com `FalaI` pra primeira linha, `FalaF` pra ultima linha. Linhas intermediarias sao escritas com `FalaC`

```
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
```

O tamanho maximo de uma linha de dialogo deve ser do tamanho de `"+____________________________________________________________________+"`

## Lendo Entrada do Usuario

Use o procedimento `pergunte` pra fazer uma pergunta ao usuario antes. Esse procedimento ja vem escreve um *campo de escrita* pro usuario saber que precisa digitar.

``` alg
PROCEDIMENTO pergunte(pergunta: CARACTERE)
INICIO
	ESCREVAL(pergunta)
	ESCREVA(">> ")
FIMPROCEDIMENTO
```

Pra implementar, faca:

``` alg
pergunte("O que voce vai fazer?")
leia(resposta)
```

Isso mostra no console:

```
O que voce vai fazer?
>> [resposta]
```

## Multiplas Escolhas

_**ADICIONAR ESSA PARTE**_
