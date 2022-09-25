lexer grammar Descricao;

COMENTARIO : '//' ~[\r\n]* -> skip;
PRESERVADA : 'PROGRAM' | 'BEGIN' | 'END' | 'WHILE' | 'IF' | 'THEN' | 'ELSE' | 'DO' | 'READ' | 'VAR' | 'WRITE';
TIPO : 'STRING' | 'INTEGER' | 'BOOLEAN';  
BOOL : 'FALSE' | 'TRUE'; 
IDENTIFIER : [a-zA-Z][a-zA-Z0-9]*;
CTE : ('0'..'9')+|'-'('0'..'9')+;
CADEIA : '"'('A'..'Z'|'a'..'z'|'0'..'9'|'-'|'_')+ '"';
OPAD : '+' | '-';
OPMULT : '*' | '/';
OPLOG : 'OR' | 'AND';
OPNEG : '~';
OPREL : '<' | '<=' | '>' | '>=' | '==' | '<>';
PVIG : ';';
PONTO : '.';
DPONTOS : ':';
VIG : ',';
ABPAR : '(';
FPAR : ')';
ATRIB : ':=';
WS : (' '|'\t'|'\n'|'\r')+ -> skip;