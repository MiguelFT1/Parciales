grammar Expr;

@header {
import java.lang.Math;
}

expr: func '(' expr ')'     # FuncExpr
    | NUM                   # NumberExpr
    ;

func: 'Sin' 
    | 'Cos' 
    | 'Tan'
    ;

NUM: [0-9]+ ('.' [0-9]+)? ;
WS: [ \t\r\n]+ -> skip ;
