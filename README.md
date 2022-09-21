# Analisador léxico e sintácio

## Desenvolvedores 🧑‍💻

- Francisco José
- Danilo Michell

## Linguagem 📘

- ANTLR4


==============

grammar Descricao;

r: 'hello';
NINTEIRO: ('+'|'-')?[0-9]+;
NUMERO: [0-9]+;
OPAD:  '+' | '-';
OPMULT:  '*' | '/';
OPLOG: 'OR' | 'AND';
OPNEG: '~';
OPREL: '<' | '<=' | '>' | '>=' | '==' | '<>';
PVIG: ';';
PONTO: '.';
DPONTOS: ':';
VIG: ',';
ABPAR: '(';
FPAR: ')';
ATRIB: ':=';
PRESERVADA: 'PROGRAM' | 'INTEGER' | 'BOOLEAN' | 'BEGIN' 
| 'END' | 'WHILE' | 'DO' | 'READ' | 'VAR' | 'FALSE' | 'TRUE' 
| 'WRITE' | 'STRING' | 'THEN' ;
WS: [ \t\r\n]+ -> skip;
LETRA: [a-zA-Z]+;
COMENTARIO: '//' ~[\r\n]* -> skip;
IDENTIFIER: [a-z][a-zA-Z0-9]*;


Prog: PROGRAM IDENTIFIER PVIG Decls CmdComp PONTO

Decls: E | VAR ListDecl

ListDecl: DeclTip | DeclTip ListDecl

DeclTip: ListId DPONTOS Tip PVIG

ListId: IDENTIFIER | IDENTIFIER VIG ListId

Tip: INTEGER | BOOLEAN | STRING

CmdComp: BEGIN ListCmd END

ListCmd: Cmd | Cmd PVIG ListCmd

Cmd: CmdIf | CmdWhile | CmdRead | CmdWrite | CmdAtrib | CmdComp

CmdIf: IF Expr THEN Cmd | IF Expr THEN Cmd ELSE Cmd 

CmdWhile: WHILE Expr DO Cmd

CmdRead: READ (ListId)

CmdWrite: WRITE (ListW)

CmdAtrib: IDENTIFIER ATRIB Expr

ListW: ElemW | ElemW VIG ListW

ElemW: Expr | IDENTIFIER

Expr: NINTEIRO OPMULT Expr | NINTEIRO OPAD Expr | ABPAR Expr FPAR | NINTEIRO;

ExprBool: NINTEIRO OPREL NINTEIRO | OPNEG? ABPAR ExprBool FPAR | TRUE | FALSE
 
