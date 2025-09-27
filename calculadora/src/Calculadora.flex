

%%

%class CalcScanner
%unicode
%public
%type String

%%

/* Espaços em Branco (Ignorar) */
[ \t\r\n]+              { }

/* Números */
[0-9]+\.[0-9]+          { return "NUM_DECIMAL"; }
[0-9]+                  { return "NUM_INTEIRO"; }

/* Parênteses */
"("                     { return "LPAREN"; }
")"                     { return "RPAREN"; }

/* Operadores (mais longos primeiro) */
"**"                    { return "POWER"; }
"//"                    { return "INT_DIV"; }
"+"                     { return "PLUS"; }
"-"                     { return "MINUS"; }
"*"                     { return "TIMES"; }
"/"                     { return "DIV"; }


/* Tratamento de Erros */
.                       { return "ERROR"; }