
### 环境
```shell
  sudo apt-get install bison flex
```

### 示例
```shell
  flex lexer.l        # 生成 lex.yy.c
  bison -y -d parser.y    # 生成 y.tab.c 和 y.tab.h
  gcc lex.yy.c y.tab.c -o calc -lfl
  ./calc # 输入表达式 10 + 20 - 5

```

### 源文件
  *.l → Lex/Flex 词法文件
  *.y → Yacc/Bison 语法文件

### 转译
  flex example.l
  bison -y -d example.y

### 构建
 gcc lex.yy.c example.tab.c -o my_parser -lfl

