

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
"*"                     { return "TIMES"; } // A regra [*x] que você tinha também é válida!
"/"                     { return "DIV"; }


/* Tratamento de Erros (sempre por último) */
.                       { return "ERROR"; }