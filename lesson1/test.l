%{
#include <stdio.h>
#include "y.tab.h"
%}

%%

\*                             { return ('*'); }
\+                             { return ('+'); }
\(                             { return ('('); }
\)                             { return (')'); }
[0-9]*                         { yylval = atoi(yytext); return (NUMBER); }

%%

