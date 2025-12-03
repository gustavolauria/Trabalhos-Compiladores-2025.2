class FatorialCompleto {
    public static void main(String[] a) {
        int n;
        int resultado;
        int i;

        n = 5;
        resultado = 1;
        i = 1;

        while (i < n + 1) {
            resultado = resultado * i;
            i = i + 1;
        }

        System.out.println(resultado);
    }
}
