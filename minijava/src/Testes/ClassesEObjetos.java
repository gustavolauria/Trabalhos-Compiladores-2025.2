class A {
    public int start() {
        return 0;
    }
}

class B extends A {
    public int start() {
        int[] arr;
        arr = new int[10];
        System.out.println(arr.length);
        return this.start();
    }
}