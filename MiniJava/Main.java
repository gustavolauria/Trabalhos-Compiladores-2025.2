import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        String filePath = args[0];
        FileReader fr = new FileReader(filePath);
        MiniJavaScanner scanner = new MiniJavaScanner(fr);
        String token;

        while ((token = scanner.yylex()) != null) {
            System.out.println("Token reconhecido: " + token);
        }
    }
}