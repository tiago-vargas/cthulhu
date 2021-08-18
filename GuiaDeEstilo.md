# Guia de Estilo

Palavras chaves serao maiusculas.

Identacao de 4 espacos

``` alg
PROGRAMA "..."
VAR
	// ...
INICIO
	ESREVAL("...")
	// ...
FIMALGORITMO
```

## Escrevendo no Tela

Use o procedimento `mostre` pra mostrar texto na tela seguido de uma pausa, que o usuario pode pressionar `Enter` pra continuar o programa. Como o usuario pode avancar sem escrever nada, o efeito tambem eh de textos separados de uma linha em branco. Util pra mostrar textos aos poucos.

``` alg
PROCEDIMENTO mostre(texto: CARACTERE)
VAR
	a: CARACTERE
INICIO
	ESCREVAL(texto)
	LEIA(a)
FIMPROCEDIMENTO
```

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