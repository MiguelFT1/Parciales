import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.nio.file.*;
import java.io.IOException;

public class TrigCalculator {
    public static void main(String[] args) throws IOException {
        // Leer el archivo de entrada
        String inputFile = "expr.in";
        String input = Files.readString(Paths.get(inputFile));

        // Crear lexer y parser
        ExprLexer lexer = new ExprLexer(CharStreams.fromString(input));
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        ExprParser parser = new ExprParser(tokens);

        // Evaluar cada expresión en el archivo de entrada
        for (String line : input.split("\\n")) {
            lexer.setInputStream(CharStreams.fromString(line));
            tokens = new CommonTokenStream(lexer);
            parser.setTokenStream(tokens);
            ExprParser.ExprContext tree = parser.expr();

            // Crear el visitor para evaluar la expresión
            EvalVisitor visitor = new EvalVisitor();
            double result = visitor.visit(tree);

            // Imprimir el resultado
            System.out.printf("%.2f\n", result);
        }
    }
}

// Clase visitor que evaluará las funciones trigonométricas
class EvalVisitor extends ExprBaseVisitor<Double> {

    @Override
    public Double visitFuncExpr(ExprParser.FuncExprContext ctx) {
        String func = ctx.func().getText();
        double value = visit(ctx.expr());

        switch (func) {
            case "Sin":
                return Math.sin(Math.toRadians(value)); // Convertir a radianes
            case "Cos":
                return Math.cos(Math.toRadians(value));
            case "Tan":
                return Math.tan(Math.toRadians(value));
            default:
                throw new RuntimeException("Función desconocida: " + func);
        }
    }

    @Override
    public Double visitNumberExpr(ExprParser.NumberExprContext ctx) {
        return Double.parseDouble(ctx.NUM().getText());
    }
}
