sample:
	lex sample.l
	yacc -d sample.y
	cc lex.yy.c y.tab.c -o sample

# cpp
# sample:
# 	lex -o $@.yy.c $@.lex
# 	cc -c $@.yy.c -o $@.yy.o
# 	yacc -dtv $@.yy -o $@.cpp
# 	gcc $@.yy.o $@.cpp -o $@.out