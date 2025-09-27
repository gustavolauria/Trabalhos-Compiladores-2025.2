# Scanner para Calculadora e Mini-Java com JFlex

Este projeto implementa dois analisadores léxicos (scanners) utilizando **JFlex**: um para uma linguagem de **Calculadora** e outro para um subconjunto da linguagem Java, o **Mini-Java**.

## Estrutura do Projeto

O repositório está organizado em subprojetos para cada linguagem:

```
Compiladores/
├── calculadora/
│   └── src/
│       ├── Calculadora.flex
│       ├── MainCalc.java
│       └── testes/
│           ├── entrada_calc_1.txt
│           ├── ...
│
└── minijava/
    └── src/
        ├── MiniJava.flex
        ├── MainMiniJava.java
        └── testes/
            ├── TesteBasico.java
            └── ...
```

## Como Rodar os Projetos

### Pré-requisitos
- Java (JDK) instalado.
- Arquivo `jflex-1.9.1.jar` (ou similar) na pasta `libs/`.

---
### Para a Calculadora:

Execute os seguintes comandos a partir da pasta raiz (`Compiladores`).

**1. Gerar o Scanner:**
```bash
java -jar libs/jflex-1.9.1.jar calculadora/src/Calculadora.flex
```

**2. Compilar:**
```bash
javac calculadora/src/*.java
```

**3. Executar (Exemplo):**
```bash
java -cp calculadora/src MainCalc calculadora/src/testes/entrada_calc_1.txt
```

---
### Para o Mini-Java:

Execute os seguintes comandos a partir da pasta raiz (`Compiladores`).

**1. Gerar o Scanner:**
```bash
java -jar libs/jflex-1.9.1.jar minijava/src/MiniJava.flex
```

**2. Compilar:**
```bash
javac minijava/src/*.java
```

**3. Executar (Exemplo):**
```bash
java -cp minijava/src MainMiniJava minijava/src/testes/TesteBasico.java
```

## Exemplo de Saída (Mini-Java com `TesteBasico.java`)

Ao rodar o scanner do Mini-Java com o arquivo `TesteBasico.java`, a saída será:

```
Token reconhecido: KEYWORD_CLASS
Token reconhecido: ID (TesteBasico)
Token reconhecido: LBRACE
Token reconhecido: KEYWORD_PUBLIC
Token reconhecido: KEYWORD_STATIC
Token reconhecido: KEYWORD_VOID
Token reconhecido: KEYWORD_MAIN
Token reconhecido: LPAREN
Token reconhecido: KEYWORD_STRING
Token reconhecido: LBRACKET
Token reconhecido: RBRACKET
Token reconhecido: ID (a)
Token reconhecido: RPAREN
Token reconhecido: LBRACE
Token reconhecido: KEYWORD_PRINTLN
Token reconhecido: LPAREN
Token reconhecido: NUMBER (1)
Token reconhecido: RPAREN
Token reconhecido: SEMICOLON
Token reconhecido: RBRACE
Token reconhecido: RBRACE
```