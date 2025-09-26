%%

%class MiniJavaScanner
%unicode
%public
%type String

%%

"class"         { return "CLASS"; }
"public"        { return "PUBLIC"; }
"static"        { return "STATIC"; }
"void"          { return "VOID"; }
"main"          { return "MAIN"; }
"int"           { return "INT"; }
"boolean"       { return "BOOLEAN"; }
"if"            { return "IF"; }
"else"          { return "ELSE"; }
"while"         { return "WHILE"; }
"return"        { return "RETURN"; }
"true"          { return "TRUE"; }
"false"         { return "FALSE"; }

"{"             { return "LBRACE"; }
"}"             { return "RBRACE"; }
"("             { return "LPAREN"; }
")"             { return "RPAREN"; }
";"             { return "SEMICOLON"; }
","             { return "COMMA"; }
"="             { return "ASSIGN"; }
"+"             { return "PLUS"; }
"-"             { return "MINUS"; }
"*"             { return "MULT"; }
"<"             { return "LT"; }

[0-9]+          { return "NUMBER(" + yytext() + ")"; }
[a-zA-Z_][a-zA-Z0-9_]*   { return "ID(" + yytext() + ")"; }

"//".*          { }
[ \t\r\n]+      { }

.               { return "UNKNOWN(" + yytext() + ")"; }
