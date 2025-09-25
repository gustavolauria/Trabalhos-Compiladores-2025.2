import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        FileReader fr = new FileReader("entrada_0.txt");
        CalcScanner scanner = new CalcScanner(fr);
        String token;

        while ((token = scanner.yylex()) != null) {
            System.out.println("Token reconhecido: " + token);
        }
    }
}
