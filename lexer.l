%{
#include "parser.tab.h"
#include <string.h>
%}

%%

"int"           { return ID; }
"float"         { return ID; }
"char"          { return ID; }
"if"            { return ID; }
"else"          { return ID; }
"while"         { return ID; }
"return"        { return ID; }

/* Identifiers */
[a-zA-Z_][a-zA-Z0-9_]*   { return ID; }

/* Numbers */
[0-9]+                   { return NUM; }

/* Operators */
"="                      { return '='; }
"+"                      { return '+'; }
"-"                      { return '-'; }
"*"                      { return '*'; }
"/"                      { return '/'; }

/* Relational Operators */
"=="                     { return ID; }
"!="                     { return ID; }
">"                      { return ID; }
"<"                      { return ID; }

/* Special Symbols */
"("                      { return '('; }
")"                      { return ')'; }
";"                      { return ';'; }

/* New Line */
\n                       { return '\n'; }

/* Ignore spaces and tabs */
[ \t]                    ;

/* Ignore everything else */
.                        ;

%%

int yywrap()
{
    return 1;
}
