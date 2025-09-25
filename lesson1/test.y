%{
#include <stdio.h>
#include <string.h>


//在lex.yy.c里定义，会被yyparse()调用。在此声明消除编译和链接错误。
extern int yylex(void); 

// 在此声明，消除yacc生成代码时的告警
extern int yyparse(void); 

int yywrap()
{
	return 1;
}

// 该函数在y.tab.c里会被调用，需要在此定义
void yyerror(const char *s)
{
	printf("[error] %s\n", s);
}

int yydebug = 1;
int main()
{
	yyparse();
	return 0;
}
%}

%token NUMBER

%%

line
    : expr                 { printf("Value = %d\n", $1); }
    ;

expr
    : expr '+' term        { $$ = $1 + $3; }
    | term                 { $$ = $1; }
    ;

term
    : term '*' factor      { $$ = $1 * $3; }
    | factor               { $$ = $1; }
    ;

factor
    : '(' expr ')'         { $$ = $2; }
    | NUMBER               { $$ = $1; }
    ;

%%
