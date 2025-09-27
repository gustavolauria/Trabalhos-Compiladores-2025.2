import java.io.*;

public class MainCalc {
    public static void main(String[] args) throws IOException {
        String filePath = args[0];
        FileReader fr = new FileReader(filePath);       
        CalcScanner scanner = new CalcScanner(fr);
        String tokenType;

        while ((tokenType = scanner.yylex()) != null) {
            String lexeme = scanner.yytext();
            System.out.println("Token reconhecido: " + tokenType + " ( " + lexeme + " )");
        }
    }
}