class ErrosLexicos {
    public static void main(String[] a) {
        int valor;
        // Erros léxicos abaixo:
        valor = 100 % 2;  // % não é um operador válido
        boolean check = |true; // | não é um operador válido
        int outro = 10#;    // # não é um símbolo válido
    }
}