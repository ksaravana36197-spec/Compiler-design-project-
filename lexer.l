%{
#include "parser.tab.h"
%}

%%
[a-zA-Z]+    { return ID; }
[0-9]+       { return NUM; }
"="          { return '='; }
"+"          { return '+'; }
\n           { return '\n'; }
[ \t]        ;
.            ;
%%

int yywrap()
{
    return 1;
}