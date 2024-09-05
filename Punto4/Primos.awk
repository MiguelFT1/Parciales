#!/usr/bin/awk -f

function es_primo(n) {
    if (n < 2) return 0
    for (i = 2; i <= int(sqrt(n)); i++) {
        if (n % i == 0) return 0
    }
    return 1
}

{
    if (es_primo($1)) {
        print $1 " es primo"
    }
}
