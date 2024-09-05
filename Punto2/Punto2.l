%{
#include <stdio.h>
#include <stdlib.h>

int valid_expression = 1;  // Indicador para saber si la expresión es válida
int paren_balance = 0;     // Contador para verificar el balance de los paréntesis
%}

%%
[a-zA-Z_][a-zA-Z0-9_]*    { /* Reconoce cualquier identificador válido, como add_three, x, y, z, etc. */ }
"lambda"                  { }
"print"                   { }
"="                       { }
":"                       { }
"**"                      { }
"+"                       { }  // Operador de suma
"*"                       { }
","                       { }  // Coma para separar parámetros
[0-9]+                    { }
"("                       { paren_balance++; }  // Incrementar el balance al encontrar paréntesis izquierdo
")"                       { 
                            if (paren_balance == 0) {
                                valid_expression = 0;  // Error: paréntesis derecho sin correspondiente izquierdo
                            } else {
                                paren_balance--;  // Decrementar el balance al encontrar paréntesis derecho
                            }
                          }
[ \t\n]+                  { /* Ignorar espacios y saltos de línea */ }
.                         { valid_expression = 0; }  // Cualquier otro carácter no es válido

%%

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Uso: %s <archivo>\n", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if (!file) {
        fprintf(stderr, "Error al abrir el archivo %s\n", argv[1]);
        return 1;
    }

    yyin = file;
    yylex();

    // Comprobar si la expresión es válida y los paréntesis están balanceados
    if (valid_expression && paren_balance == 0) {
        printf("ACEPTA\n");
    } else {
        printf("NO ACEPTA\n");
    }

    fclose(file);
    return 0;
}
