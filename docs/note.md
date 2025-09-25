
### lex 和 yacc 配合
对于 yylex()，每次识别一个 token 时，yylex() 都会向 yyparse() 返回一个值表示已识别的 token 的类型。
显然，yylex() 和 yyparse() 必须统一对于 token 类型的认知。

yacc 可以独立生成一个仅包含 token 宏定义的文件。
编译时，我们可以使用 -D 选项来指定编译常量所在的文件，包括：#include、#define 等预编译指令

https://chuquan.me/2022/07/10/compiler-principle-tool-yacc/
https://silcnitc.github.io/roadmap.html
https://www.cnblogs.com/hdk1993/p/4922866.html

### Python 版的 lex-yacc
https://github.com/PChou/python-lex-yacc

yacc 描述文件的基本结构与 lex 基本一致

``` yacc
定义(Definitions)

%% 

规则(Rules)

%% 

代码(Codes)
```

yacc 会将 %token 指令转换成 C 语言宏定义 #define。默认，yacc 内部宏定义占用了 0-256 宏定义常量值，因此，%token 命令转换后的宏定义常量值会从 257 开始，依次累加

C 语言自身的 yacc 描述 https://www.lysator.liu.se/c/ANSI-C-grammar-y.html
