import java.io.*;

public class MainMiniJava {
    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            System.out.println("Uso: java MainMiniJava <arquivo-minijava>");
            return;
        }

        String filePath = args[0];
        Reader reader = new FileReader(filePath);

        MiniJavaScanner scanner = new MiniJavaScanner(reader);
        parser p = new parser(scanner);   // parser gerado pelo CUP (MiniJava.cup)

        try {
            p.parse();
            System.out.println("Programa sintaticamente correto!");
        } catch (Exception e) {
            System.out.println("Falha na análise sintática: " + e.getMessage());
        }
    }
}
