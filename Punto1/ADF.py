def afd(token):
    estado = 0  # Estado inicial
    i = 0

    while i < len(token):
        char = token[i]

        if estado == 0:
            if char == '+':
                estado = 1  # Transición hacia SUMA
            elif char.isdigit():
                estado = 3  # Transición hacia ENTERO
            else:
                return "Token no válido"

        elif estado == 1:
            if char == '+':
                estado = 2  # Transición hacia INCR
            else:
                return "Token no válido"

        elif estado == 2:
            return "INCR"

        elif estado == 3:
            if char.isdigit():
                estado = 3  # Sigue siendo ENTERO
            elif char == '.':
                estado = 4  # Transición hacia REAL (parte fraccionaria)
            else:
                return "Token no válido"

        elif estado == 4:
            if char.isdigit():
                estado = 5  # Parte decimal del número real
            else:
                return "Token no válido"

        elif estado == 5:
            if char.isdigit():
                estado = 5  # Sigue siendo REAL
            else:
                return "Token no válido"

        i += 1

    # Determina el token final en función del estado en el que terminó
    if estado == 1:
        return "SUMA"
    elif estado == 2:
        return "INCR"
    elif estado == 3:
        return "ENTERO"
    elif estado == 5:
        return "REAL"
    else:
        return "Token no válido"

# Programa principal que recibe una cadena y devuelve el token
if __name__ == "__main__":
    cadena = input("Introduce una expresión: ")
    resultado = afd(cadena)
    print("El token es:", resultado)
