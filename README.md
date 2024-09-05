# Parciales
Parciales de Lenguajes de Programación y Transducción

Miguel Angel Flechas Tenorio


# Autómata Finito Determinista (AFD) en Python para expresiones regulares

## Descripción del proyecto
Este proyecto implementa un programa en LEX (Flex) para analizar si una expresión lambda en Python cumple con una gramática regular específica. El programa recibe un archivo de texto como entrada, analiza el contenido del archivo y determina si la expresión es aceptada o no.

El proyecto está diseñado para trabajar con expresiones lambda que tengan la siguiente estructura:

square = lambda x: x ** 2
print(square(3))
El programa devolverá si la expresión es ACEPTADA o NO ACEPTADA según si coincide con la gramática predefinida.

## Estructura del proyecto
lambda.l: Archivo LEX que contiene la definición de la gramática y las reglas de tokens.
archivo.txt: Archivo de ejemplo que contiene una expresión lambda en Python.
lex.yy.c: Archivo generado automáticamente por Flex al compilar lambda.l.
lambda_program: Programa ejecutable generado después de compilar el archivo lex.yy.c.

## Requisitos
Para ejecutar este proyecto, necesitas tener instalados los siguientes programas:

Flex (LEX): Para analizar las expresiones.
GCC: Compilador para compilar el código generado por Flex.
Puedes instalarlos en un entorno basado en Linux como Kali Linux mediante los siguientes comandos:

sudo apt-get install flex
sudo apt-get install gcc

## Instrucciones de instalación y uso
Clonar el repositorio o copiar el archivo: Asegúrate de tener el archivo lambda.l y el archivo de prueba archivo.txt.

Compilar el archivo LEX: Ejecuta el siguiente comando para compilar el archivo .l usando Flex:


flex lambda.l
Esto generará un archivo llamado lex.yy.c.

Compilar el archivo C generado: Usa GCC para compilar el archivo lex.yy.c y crear el programa ejecutable:

gcc lex.yy.c -lfl -o lambda_program
Ejecutar el programa: Una vez compilado, puedes ejecutar el programa proporcionando el archivo de entrada (archivo.txt) que contiene la expresión lambda:

./lambda_program archivo.txt
Resultado: El programa analizará el archivo y devolverá si la expresión es ACEPTADA o NO ACEPTADA, dependiendo de si cumple con la gramática esperada.

Ejemplo de archivo archivo.txt
Aquí tienes un ejemplo del archivo de entrada que el programa acepta:

square = lambda x: x ** 2
print(square(3))

## Detalles técnicos
Tokens reconocidos
El programa reconoce los siguientes tokens:

lambda: La palabra clave lambda en Python.
x: Una variable identificada en la expresión lambda.
**: El operador de exponenciación en Python.
Números: Los números enteros (como 2 en la expresión x ** 2).
print: La función print de Python.
Otros símbolos necesarios como =, :, (), etc.
Flujo de análisis
Asignación de la variable: La variable square es asignada con una función lambda.
Estructura de la función lambda: La función lambda acepta un parámetro (x) y devuelve su cuadrado (x ** 2).
Llamada a print: La función print invoca la variable square con un valor de prueba.

## Posibles salidas
ACEPTA: Si la expresión lambda tiene la estructura correcta.
NO ACEPTA: Si la expresión no sigue la gramática definida.

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



