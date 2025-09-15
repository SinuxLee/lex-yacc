%{
#include "y.tab.h"   /* Yacc 生成的 token 定义 */
%}
%%
[0-9]+      { yylval = atoi(yytext); return NUMBER; }
[+]         { return PLUS; }
[-]         { return MINUS; }
[ \t\n]     ;   /* 忽略空白 */
.           { return yytext[0]; }
%%

