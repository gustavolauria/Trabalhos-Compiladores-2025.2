import java.io.*;

public class MainCalc {
    public static void main(String[] args) throws Exception {
        Reader reader;

        reader = new FileReader(args[0]);

        CalcScanner scanner = new CalcScanner(reader);
        parser p = new parser(scanner);   // 'parser' = classe gerada pelo CUP

        Object result = p.parse().value;

        System.out.println("Resultado final = " + result);
    }
}
