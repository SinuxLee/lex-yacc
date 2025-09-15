%{
#include <stdio.h>
#include <stdlib.h>
%}
%token NUMBER PLUS MINUS
%left PLUS MINUS   /* 定义运算符优先级 */
%start expr
%%
expr:
      expr PLUS expr   { printf("%d\n", $1 + $3); }
    | expr MINUS expr  { printf("%d\n", $1 - $3); }
    | NUMBER           { $$ = $1; }
    ;
%%
int main() {
    return yyparse();
}
int yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
    return 0;
}

