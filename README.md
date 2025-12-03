# Scanner para Calculadora e Mini-Java com JFlex

Este projeto implementa dois analisadores léxicos (scanners) utilizando **JFlex**: um para uma linguagem de **Calculadora** e outro para um subconjunto da linguagem Java, o **Mini-Java**.

## Estrutura do Projeto

O repositório está organizado em subprojetos para cada linguagem:

Trabalhos-Compiladores-2025.2/
│
├── calculadora/
│   ├── src/
│   │   ├── Calculadora.flex
│   │   ├── Calculadora.cup
│   │   ├── CalcScanner.java
│   │   ├── MainCalc.java
│   │   ├── parser.java
│   │   ├── sym.java
│   └── Testes/
│       ├── entrada_calc_1.txt
│       ├── entrada_calc_2.txt
│       └── entrada_calc_3.txt
│
├── minijava/
│   ├── src/
│   │   ├── MiniJava.flex
│   │   ├── MiniJava.cup
│   │   ├── MiniJavaScanner.java
│   │   ├── MainMiniJava.java
│   │   ├── parser.java
│   │   ├── sym.java
│   └── Testes/
│       ├── TesteBasico.java
│       ├── ComentariosEspacamento.java
│       ├── DeclaracoesExpressoes.java
│       ├── EstruturasDeControle.java
│       ├── ClassesEObjetos.java
│       ├── FatorialCompleto.java
│       └── ErrosLexicos.java
│
└── libs/
    ├── jflex-1.9.1.jar
    ├── java-cup-11b.jar


## Como Rodar os Projetos

### Pré-requisitos
- Java (JDK) instalado.
- Arquivos **jflex-1.9.1.jar** e **java-cup-11b.jar** na pasta *libs/*.

---

### Para a Calculadora

Execute os seguintes comandos a partir da pasta raiz (Trabalhos-Compiladores-2025.2).

**1. Gerar o Scanner:**
java -jar libs/jflex-1.9.1.jar calculadora/src/Calculadora.flex

**2. Gerar o Parser (CUP):**
java -jar libs/java-cup-11b.jar -parser parser -symbols sym calculadora/src/Calculadora.cup

**3. Compilar:**
javac -cp libs/java-cup-11b.jar calculadora/src/*.java

**4. Executar (Exemplo):**
java -cp calculadora/src;libs/java-cup-11b.jar MainCalc calculadora/Testes/entrada_calc_1.txt

---

### Para o Mini-Java

Execute os seguintes comandos a partir da pasta raiz (Trabalhos-Compiladores-2025.2).

**1. Gerar o Scanner:**
java -jar libs/jflex-1.9.1.jar minijava/src/MiniJava.flex

**2. Gerar o Parser (CUP):**
java -jar libs/java-cup-11b.jar -parser parser -symbols sym minijava/src/MiniJava.cup

**3. Compilar:**
javac -cp libs/java-cup-11b.jar minijava/src/*.java

**4. Executar (Exemplo):**
java -cp minijava/src;libs/java-cup-11b.jar MainMiniJava minijava/Testes/TesteBasico.java

---

## Exemplo de Saída (Mini-Java com TesteBasico.java)

Ao rodar o scanner e parser do Mini-Java com o arquivo `TesteBasico.java`, a saída será:

Programa sintaticamente correto!
