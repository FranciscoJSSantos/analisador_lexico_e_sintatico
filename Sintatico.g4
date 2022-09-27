grammar Sintatico;

import Descricao;

prog : 'PROGRAM' IDENTIFIER PVIG decls cmdComp PONTO | 'PROGRAM' IDENTIFIER PVIG cmdComp PONTO ;

decls: 'VAR' listDecl;

listDecl: declTip | declTip listDecl;

declTip: listId DPONTOS tip PVIG;

listId: IDENTIFIER | IDENTIFIER VIG listId;

tip: TIPO;

cmdComp: 'BEGIN' listCmd 'END';

listCmd: cmd PVIG | cmd PVIG listCmd;

cmd: cmdIf | cmdWhile | cmdRead | cmdWrite | cmdAtrib | cmdComp;

cmdIf: 'IF' exprBool 'THEN' cmd | 'IF' exprBool 'THEN' cmd 'ELSE' cmd;

cmdWhile: 'WHILE' exprBool 'DO' cmd;
 
cmdRead: 'READ' 'ABPAR' listId 'FPAR';

cmdWrite: 'WRITE' 'ABPAR' listW 'FPAR';

cmdAtrib: IDENTIFIER ATRIB expr;

listW: elemW | elemW VIG listW;

elemW: expr | CADEIA;

expr: expAritm | exprBool;

expAritm: CTE OPAD expAritm | ABPAR expAritm FPAR | CTE OPMULT expAritm | CTE;
exprBool: CTE | OPNEG? IDENTIFIER | OPNEG CTE | OPNEG? ABPAR exprBool FPAR | OPNEG? BOOL | CTE OPREL CTE;
