

%%

%class CalcScanner
%unicode
%public
%type String

%%

[0-9]+                  { return "NUM"; }
[\+]                    { return "PLUS"; }
[\-]                    { return "MINUS"; }
[\*x]                   { return "TIMES"; }    // * ou x
[\/]                    { return "DIV"; }
[ \t\r\n]+              { } // ignora espaços
.                       { return "ERROR"; }
