/*
*	Program 	-	Scanner
*	Author		-	Jonathan Webber
*	Date		-	2/11/18
*	Description	-	Recognize the tokens in C-minus "except for comments" and displays them using the factorial.c file.
*/

%%

%public
%unicode
%line
%column
%standalone
%char
%class Scanner

digit = [0-9]
letter = [a-zA-Z]
sp_char = [+|-|*|/|<|<=|>|>=|==|!=|=|;|,|(|)|[|]|{|}|/*|*/]
reserved = (if)|(else)|(int)|(return)|(void)|(while)
identifier = {letter}({digit}|{letter})*

%%

<YYINITIAL>{sp_char}		{System.out.println(yyline + "-" + yycolumn + "\tsp_char\t\t" + yytext());}
<YYINITIAL>{reserved}		{System.out.println(yyline + "-" + yycolumn + "\treserved\t" + yytext());}
<YYINITIAL>{identifier}		{System.out.println(yyline + "-" + yycolumn + "\tidentifier\t" + yytext());}
.							{}