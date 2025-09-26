import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        FileReader fr = new FileReader("src/entrada_0.txt");
        CalcScanner scanner = new CalcScanner(fr);
        String tokenType;

        while ((tokenType = scanner.yylex()) != null) {
            String lexeme = scanner.yytext();
            System.out.println("Token reconhecido: " + tokenType + " (" + lexeme + ")");
        }
    }
}
