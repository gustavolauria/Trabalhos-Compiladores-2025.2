/* Calculadora.flex - scanner compatível com CUP (aceita int, decimal, //, **) */

import java_cup.runtime.Symbol;

%%
%class CalcScanner
%unicode
%cup
%line
%column

INT     = [0-9]+
DEC     = {INT}"."{INT}

%%

"("         { return new Symbol(sym.PA); }
")"         { return new Symbol(sym.PF); }

"+"         { return new Symbol(sym.SOMA); }
"-"         { return new Symbol(sym.SUB); }

/* importante: padrões mais longos vêm antes dos mais curtos */
"//"        { return new Symbol(sym.INTDIV); }
"**"        { return new Symbol(sym.POT); }

"*"         { return new Symbol(sym.MULT); }
"/"         { return new Symbol(sym.DIV); }

/* números decimais e inteiros */
{DEC}       {
                double val = Double.parseDouble(yytext());
                return new Symbol(sym.NUM, val);
            }

{INT}       {
                double val = Double.parseDouble(yytext());
                return new Symbol(sym.NUM, val);
            }

/* ignorar espaços, tabs e \r */
[ \t\r]+    { /* ignora */ }

/* ignorar quebras de linha */
\n          { /* ignora */ }

/* fim de arquivo */
<<EOF>>     { return new Symbol(sym.EOF); }

/* qualquer outra coisa é erro léxico */
