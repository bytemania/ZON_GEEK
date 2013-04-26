grammar Expr;

//START:stat

prog	:	stat+;
stat	:	 expr NEWLINE
	|	ID '=' NEWLINE
	|	NEWLINE
	;
	
expr	:	multExpr (('+' | '-') multExpr)*
	;

multExpr :	atom ('*' atom)*
	;
	
atom 	:	INT
	|	ID
	|	'(' expr ')'
	;
	
ID 	: ('a'..'z' | 'A'..'Z')+ ;
INT	: '0'..'9' +;
NEWLINE : '\r'? '\n';
WS	: (' ' | '\t' | '\n' | '\r')+ {skip();};

				
	