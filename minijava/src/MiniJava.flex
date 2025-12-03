import java_cup.runtime.Symbol;

%%
%class MiniJavaScanner
%public
%unicode
%cup
%line
%column

ID  = [a-zA-Z_][a-zA-Z0-9_]*
INT = [0-9]+

%%

/* PALAVRAS-CHAVE */

"class"      { return new Symbol(sym.CLASS,   yyline, yycolumn); }
"public"     { return new Symbol(sym.PUBLIC,  yyline, yycolumn); }
"static"     { return new Symbol(sym.STATIC,  yyline, yycolumn); }
"void"       { return new Symbol(sym.VOID,    yyline, yycolumn); }
"main"       { return new Symbol(sym.MAIN,    yyline, yycolumn); }
"String"     { return new Symbol(sym.STRING,  yyline, yycolumn); }
"extends"    { return new Symbol(sym.EXTENDS, yyline, yycolumn); }
"return"     { return new Symbol(sym.RETURN,  yyline, yycolumn); }

"int"        { return new Symbol(sym.INT,     yyline, yycolumn); }
"boolean"    { return new Symbol(sym.BOOLEAN, yyline, yycolumn); }
"true"       { return new Symbol(sym.TRUE,    yyline, yycolumn); }
"false"      { return new Symbol(sym.FALSE,   yyline, yycolumn); }
"this"       { return new Symbol(sym.THIS,    yyline, yycolumn); }
"new"        { return new Symbol(sym.NEW,     yyline, yycolumn); }

"if"         { return new Symbol(sym.IF,      yyline, yycolumn); }
"else"       { return new Symbol(sym.ELSE,    yyline, yycolumn); }
"while"      { return new Symbol(sym.WHILE,   yyline, yycolumn); }

"System.out.println" { return new Symbol(sym.PRINTLN, yyline, yycolumn); }
"length"     { return new Symbol(sym.LENGTH,  yyline, yycolumn); }

/* OPERADORES */

"&&"         { return new Symbol(sym.AND,     yyline, yycolumn); }
"<"          { return new Symbol(sym.LT,      yyline, yycolumn); }
"+"          { return new Symbol(sym.PLUS,    yyline, yycolumn); }
"-"          { return new Symbol(sym.MINUS,   yyline, yycolumn); }
"*"          { return new Symbol(sym.TIMES,   yyline, yycolumn); }
"/"          { return new Symbol(sym.DIV,     yyline, yycolumn); }
"!"          { return new Symbol(sym.NOT,     yyline, yycolumn); }
"="          { return new Symbol(sym.ASSIGN,  yyline, yycolumn); }

/* DELIMITADORES */

"("          { return new Symbol(sym.LPAREN,   yyline, yycolumn); }
")"          { return new Symbol(sym.RPAREN,   yyline, yycolumn); }
"{"          { return new Symbol(sym.LBRACE,   yyline, yycolumn); }
"}"          { return new Symbol(sym.RBRACE,   yyline, yycolumn); }
"["          { return new Symbol(sym.LBRACKET, yyline, yycolumn); }
"]"          { return new Symbol(sym.RBRACKET, yyline, yycolumn); }
";"          { return new Symbol(sym.SEMICOLON,yyline, yycolumn); }
","          { return new Symbol(sym.COMMA,    yyline, yycolumn); }
"."          { return new Symbol(sym.DOT,      yyline, yycolumn); }

/* LITERAIS */

{INT}        {
                int val = Integer.parseInt(yytext());
                return new Symbol(sym.INTEGER_LITERAL, yyline, yycolumn, val);
             }

{ID}         {
                return new Symbol(sym.IDENT, yyline, yycolumn, yytext());
             }

/* COMENTÁRIOS */

// comentário de linha
"//".*       { /* ignora */ }

/* comentário de bloco */
"/*" ([^*]|\*+[^*/])* \*+ "/"   { /* ignora */ }

/* ESPAÇOS */

[ \t\r\n\f]+ { /* ignora */ }

/* FIM DE ARQUIVO */

<<EOF>>      { return new Symbol(sym.EOF, yyline, yycolumn); }

/* QUALQUER OUTRO SÍMBOLO = ERRO LÉXICO */

.            {
                System.err.println(
                    "Erro léxico: caractere inválido '" + yytext() +
                    "' na linha " + yyline + ", coluna " + yycolumn
                );
                throw new Error("Erro léxico");
             }
