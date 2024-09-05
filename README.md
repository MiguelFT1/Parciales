# Parciales
Parciales de Lenguajes de Programación y Transducción

Miguel Angel Flechas Tenorio


# Autómata Finito Determinista (AFD) en Python para expresiones regulares
Descripción
Este programa implementa un Autómata Finito Determinista (AFD) para aceptar y reconocer las siguientes expresiones regulares:

+ → Representa la operación de suma.
++ → Representa el operador incremento.
[0-9]+ → Representa números enteros de una o más cifras.
([0-9]+) "." ([0-9])+ → Representa números flotantes con un punto decimal.
Ejemplos:
+ → Retorna el token SUMA.
++ → Retorna el token INCREMENTO.
123 → Retorna el token ENTERO.
12.34 → Retorna el token FLOTANTE.
El programa recibe una expresión regular como entrada y devuelve el token correspondiente a dicha expresión.

Ejecución
Requisitos previos:

Asegúrate de tener Python instalado en tu máquina.
Instrucciones para ejecutar:

Abre una terminal o consola de comandos.
Ejecuta el archivo AFD.py pasando la expresión regular como argumento:

python AFD.py +
El programa devolverá el token correspondiente. Por ejemplo:
SUMA

# Gramática regular en LEX para expresiones lambda en Python
Descripción
Este programa implementa una gramática regular en LEX que reconoce expresiones lambda en Python, como las siguientes:
square = lambda x: x ** 2
print(square(3))

Ejecución
Requisitos previos:

Asegúrate de tener instalado Flex, el generador de analizadores léxicos.
Instrucciones para compilar y ejecutar:

Abre una terminal o consola de comandos.
Compila el programa usando Flex:
Ejecución
Requisitos previos:

Asegúrate de tener instalado Flex, el generador de analizadores léxicos.
Instrucciones para compilar y ejecutar:

Abre una terminal o consola de comandos.
Compila el programa usando Flex:
flex lambda.l
gcc lex.yy.c -o a.out

Ejecuta el programa pasándole un archivo de texto como parámetro:

./a.out archivo.txt

Resultado:

El programa imprimirá:
ACEPTA si la expresión lambda es válida.
NO ACEPTA si no lo es.

# Contador de Coincidencias en un Archivo de Texto

Este repositorio contiene un programa en C que cuenta cuántas veces una palabra clave aparece en un archivo de texto. El programa recibe el nombre del archivo y la palabra clave como parámetros de la línea de comandos, y luego devuelve el número de coincidencias.

## Descripción

El programa se encarga de:
1. Abrir un archivo de texto en modo lectura.
2. Buscar todas las ocurrencias de una palabra clave en el archivo.
3. Devolver cuántas veces aparece la palabra en el archivo.

## Requisitos

Para compilar y ejecutar el programa en un sistema basado en Linux, necesitas:
- Un compilador de C (por ejemplo, `gcc`).
- Un archivo de texto para buscar la palabra clave.

## Uso

### 1. Clona el repositorio:

git clone <URL-del-repositorio>

###2. Compila el programa:
gcc miprograma.c -o miprograma

###3. Ejecuta el programa:
./miprograma <nombre_archivo> <palabra_clave>

Ejemplo de uso:
./miprograma ejemplo.txt arroz
En este ejemplo, el programa buscará cuántas veces aparece la palabra "arroz" en el archivo ejemplo.txt.

###4. Ejemplo de texto:
Si usas el siguiente texto como contenido del archivo ejemplo.txt:
Hoy fui al supermercado y compré arroz. El arroz es uno de los alimentos básicos en mi cocina. A menudo preparo arroz con pollo, pero también me gusta hacer arroz frito. Mi abuela tiene una receta especial de arroz con leche que es deliciosa. Cuando era pequeño, solíamos comer arroz casi todos los días. El arroz es muy versátil, lo puedes cocinar de muchas maneras. A veces lo preparo simplemente como arroz blanco, y otras veces lo hago con especias para darle más sabor. En la cena de hoy también habrá arroz, porque a mi familia le encanta.

El programa devolverá:

'arroz' se repite 10 veces en el texto.



# Programa en AWK para identificar números primos
Descripción
Este programa en AWK analiza un archivo de texto que contiene 1000 números enteros aleatorios entre 1 y 1000, y muestra cuáles de esos números son primos.

Ejecución
Requisitos previos:

Asegúrate de tener AWK instalado en tu sistema.
Instrucciones para ejecutar:

Ejecuta el programa pasándole el archivo de texto que contiene los números:
awk -f primos.awk nombre_archivo.txt

Resultado:

El programa imprimirá todos los números primos presentes en el archivo.

# Programa en ANTLR para calcular funciones trigonométricas
Descripción
Este proyecto contiene un programa que utiliza ANTLR para calcular valores de funciones trigonométricas (Sin, Cos, Tan) a partir de expresiones en un archivo de entrada. Las expresiones se procesan usando un lexer y parser generado con ANTLR y los cálculos se realizan utilizando radianes.

Funciones trigonométricas soportadas:
Sin(x) - Calcula el seno de un ángulo en grados.
Cos(x) - Calcula el coseno de un ángulo en grados.
Tan(x) - Calcula la tangente de un ángulo en grados.
El archivo de entrada debe contener expresiones como Sin(90), Cos(0), etc.

Estructura del Proyecto
El repositorio contiene los siguientes archivos:

Expr.g4 - Archivo de gramática ANTLR que define la sintaxis de las expresiones trigonométricas.
TrigCalculator.java - Programa Java que procesa el archivo de entrada, evalúa las expresiones trigonométricas, y muestra el resultado.
expr.in - Archivo de entrada con las expresiones trigonométricas a evaluar.
README.md - Este archivo, que describe el proyecto.
Requisitos
ANTLR4 - Necesario para generar el lexer y parser a partir de la gramática. Instrucciones de instalación
Java - Se utiliza para ejecutar el programa principal.
Instalación
1. Instalar ANTLR4
Si no tienes ANTLR4 instalado, puedes instalarlo siguiendo estas instrucciones.

En Linux, puedes instalar ANTLR4 usando los siguientes pasos:
sudo apt-get install antlr4
Clonar el repositorio
Clona el repositorio en tu máquina local:
git clone https://github.com/usuario/repo_trig_calculator.git
cd repo_trig_calculator

Generar el Lexer y Parser
Una vez que estés dentro del directorio del proyecto, genera las clases de ANTLR usando el siguiente comando:
antlr4 -visitor Expr.g4

Este comando generará los archivos necesarios, incluidos ExprLexer.java, ExprParser.java y ExprBaseVisitor.java.

4. Compilar el código
Compila el programa principal junto con los archivos generados por ANTLR:
javac Expr*.java TrigCalculator.java

Ejecutar el programa
Ejecuta el programa pasando el archivo de entrada (expr.in) que contiene las expresiones a evaluar:
java TrigCalculator

Modificar el archivo de entrada
El archivo expr.in contiene las expresiones trigonométricas que serán evaluadas. Puedes modificar este archivo para calcular nuevos valores de Sin, Cos o Tan.

Ejemplo de expr.in:
Sin(90)
Cos(0)
Cos(180)
Sin(45)

 Resultado esperado
Para el archivo de entrada proporcionado (expr.in), el resultado esperado sería:
1.00
1.00
-1.00
0.71



