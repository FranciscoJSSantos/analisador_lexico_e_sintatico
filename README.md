# Analisador léxico e sintácio

## Desenvolvedores 🧑‍💻

- Francisco José
- Danilo Michell

## Linguagem 📘

- ANTLR4


NINTEIROS: (+|-)?[0-9]*;
OPAD:  '+' | '-';
OPMULT:  '*' | '/';
OPLOG: OR | AND;
OPNEG: '~';
OPREL: '<' | '<=' | '>' | '>=' | '==' | '<>';
PVIG: ';';
PONTO: '.';
DPONTOS: ':';
VIG: ',';
ABPAR: '(';
FPAR: ')';
ATRIB: ':=';
PRESERVADA: PROGRAM | INTEGER | BOOLEAN |
BEGIN | END | WHILE | DO | READ | VAR | FALSE | TRUE | WRITE;
WS: [ \t\r\n]+: skip;
LETRA: [a-zA-Z]*;
COMENTARIO: '//';


GRAMATICA

IDENTIFIER --> IDENTIFIER IDENTIFIER | LETRA |LETRA NUMERO | IDENTIFIER
