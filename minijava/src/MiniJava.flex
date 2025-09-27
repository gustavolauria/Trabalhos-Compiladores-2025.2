%%

%class MiniJavaScanner
%unicode
%public
%type String

%%

/* Ignorar comentários e espaços em branco */
"/*" ( [^*] | \*+[^*/] )* \*+ "/"  { /* Ação vazia para ignorar */ }

"String"             { return "KEYWORD_STRING"; }
"extends"            { return "KEYWORD_EXTENDS"; }
"System.out.println" { return "KEYWORD_PRINTLN"; }
"length"             { return "KEYWORD_LENGTH"; }
"this"               { return "KEYWORD_THIS"; }
"new"                { return "KEYWORD_NEW"; }
"class"              { return "KEYWORD_CLASS"; }  
"public"             { return "KEYWORD_PUBLIC"; }  
"static"             { return "KEYWORD_STATIC"; } 
"void"               { return "KEYWORD_VOID"; }    
"main"               { return "KEYWORD_MAIN"; }  
"int"                { return "KEYWORD_INT"; } 
"boolean"            { return "KEYWORD_BOOLEAN"; } 
"if"                 { return "KEYWORD_IF"; }   
"else"               { return "KEYWORD_ELSE"; } 
"while"              { return "KEYWORD_WHILE"; } 
"return"             { return "KEYWORD_RETURN"; } 
"true"               { return "KEYWORD_TRUE"; }  
"false"              { return "KEYWORD_FALSE"; }  

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
"&&"                { return "AND"; }
"!"                 { return "NOT"; }
"."                 { return "DOT"; }
"["                 { return "LBRACKET"; } 
"]"                 { return "RBRACKET"; }

[0-9]+          { return "NUMBER (" + yytext() + ")"; }
[a-zA-Z_][a-zA-Z0-9_]*   { return "ID (" + yytext() + ")"; }

"//".*          { }
[ \t\r\n]+      { }

.               { return "UNKNOWN (" + yytext() + ")"; }
