#!/usr/bin/env bash
# apt/yum install -y flex bison

lex test.l
yacc --verbose --debug -d test.y
cc lex.yy.c y.tab.c -lfl -o test
