class FatorialCompleto {
    public static void main(String[] a) {
        System.out.println(new Fatorial().calcular(5));
    }
}

class Fatorial {
    public int calcular(int n) {
        if (n < 1) 
            return 1;
        else 
            return n * calcular(n - 1);
    }
}