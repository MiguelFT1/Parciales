#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Función para contar las ocurrencias de una palabra en un archivo
int contar_coincidencias(FILE *archivo, const char *palabra_clave) {
    char buffer[1024]; // Buffer para leer líneas del archivo
    int contador = 0;  // Contador de ocurrencias
    size_t palabra_len = strlen(palabra_clave); // Longitud de la palabra clave
    
    // Leer línea por línea el archivo
    while (fgets(buffer, sizeof(buffer), archivo)) {
        char *ptr = buffer;
        
        // Buscar la palabra clave en la línea actual
        while ((ptr = strstr(ptr, palabra_clave)) != NULL) {
            contador++;   // Incrementar el contador cada vez que se encuentre la palabra
            ptr += palabra_len; // Avanzar el puntero después de la palabra clave
        }
    }
    
    return contador;
}

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Uso: %s <archivo> <palabra_clave>\n", argv[0]);
        return 1;
    }

    const char *nombre_archivo = argv[1];    // Nombre del archivo
    const char *palabra_clave = argv[2];     // Palabra clave a buscar

    // Abrir el archivo en modo lectura
    FILE *archivo = fopen(nombre_archivo, "r");
    if (archivo == NULL) {
        perror("Error al abrir el archivo");
        return 1;
    }

    // Contar las ocurrencias de la palabra clave en el archivo
    int ocurrencias = contar_coincidencias(archivo, palabra_clave);

    // Cerrar el archivo
    fclose(archivo);

    // Mostrar el resultado
    printf("'%s' se repite %d veces en el texto.\n", palabra_clave, ocurrencias);

    return 0;
}
