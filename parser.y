%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s);
int yylex();
%}

/* Tokens */
%token ID NUM

/* Operator precedence */
%left '+' '-'
%left '*' '/'

%%

stmt:
      ID '=' expr '\n'        { printf("Valid Assignment Expression\n"); }
    | expr '\n'               { printf("Valid Arithmetic Expression\n"); }
    ;

expr:
      expr '+' expr
    | expr '-' expr
    | expr '*' expr
    | expr '/' expr
    | '(' expr ')'
    | ID
    | NUM
    ;

%%

void yyerror(char *s)
{
    printf("Invalid Expression\n");
}

int main()
{
    printf("Enter Expression:\n");
    yyparse();
    return 0;
}
