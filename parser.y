%{
#include <stdio.h>
#include <stdlib.h>

void yyerror(char *s);
int yylex();
%}

%token ID NUM

%%

stmt:
    ID '=' expr '\n'
    {
        printf("Valid Expression\n");
    }
    ;

expr:
      expr '+' term
    | term
    ;

term:
      ID
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