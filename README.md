# Trabalho Final de Compiladores (Scanner + Parser)

**Disciplina:** Compiladores 2025.2 - UFF  
**Integrantes:**  
- Davi Santiago  
- Gustavo Lauria  
- Igor Quintes  

Este projeto contém a implementação completa da **Análise Léxica (Scanner com JFlex)** e **Análise Sintática (Parser com Java CUP)** para duas linguagens:

1. **Calculadora**: Gramática LALR para expressões aritméticas.  
2. **Mini-Java**: Subconjunto simplificado da linguagem Java.

---

## Estrutura do Projeto

```
Trabalhos-Compiladores-2025.2/
│
├── calculadora/
│   ├── src/
│   │   ├── Calculadora.flex
│   │   ├── Calculadora.cup
│   │   ├── CalcScanner.java     (Gerado)
│   │   ├── parser.java          (Gerado)
│   │   ├── sym.java             (Gerado)
│   │   └── MainCalc.java
│   └── Testes/
│       └── entrada_calc_1.txt ...
│
├── minijava/
│   ├── src/
│   │   ├── MiniJava.flex
│   │   ├── MiniJava.cup
│   │   ├── MiniJavaScanner.java (Gerado)
│   │   ├── parser.java          (Gerado)
│   │   ├── sym.java             (Gerado)
│   │   └── MainMiniJava.java
│   └── Testes/
│       └── TesteBasico.java ...
│
└── libs/
    ├── jflex-1.9.1.jar
    ├── java-cup-11b.jar
```

---

##  Como Rodar

### **Pré-requisitos**
- Java (JDK) instalado.
- Arquivos **jflex-1.9.1.jar** e **java-cup-11b.jar** na pasta libs/.
- Execute tudo a partir da **pasta raiz (Trabalhos-Compiladores-2025.2)**.

---

# 1. Calculadora

### **Passo 1 — Gerar o Scanner (JFlex)**

```bash
java -jar libs/jflex-1.9.1.jar calculadora/src/Calculadora.flex
```

### **Passo 2 — Gerar o Parser (Java CUP)**

```bash
java -jar libs/java-cup-11b.jar -destdir calculadora/src -parser parser -symbols sym calculadora/src/Calculadora.cup
```

### **Passo 3 — Compilar**

```bash
javac -cp libs/java-cup-11b.jar calculadora/src/*.java
```

### **Passo 4 — Executar**

```bash
java -cp "calculadora/src;libs/java-cup-11b.jar" MainCalc calculadora/src/Testes/entrada_calc_1.txt
```

---

# 2. Mini-Java

### **Passo 1 — Gerar o Scanner (JFlex)**

```bash
java -jar libs/jflex-1.9.1.jar minijava/src/MiniJava.flex
```

### **Passo 2 — Gerar o Parser (Java CUP)**

```bash
java -jar libs/java-cup-11b.jar -destdir minijava/src -parser parser -symbols sym minijava/src/MiniJava.cup
```

### **Passo 3 — Compilar**

```bash
javac -cp libs/java-cup-11b.jar minijava/src/*.java
```

### **Passo 4 — Executar**

```bash
java -cp "minijava/src;libs/java-cup-11b.jar" MainMiniJava minijava/src/Testes/TesteBasico.java
```


---

## Saída Esperada (Mini-Java)

Para um arquivo válido (ex.: `TesteBasico.java`):

```
Programa sintaticamente correto!
```

Em caso de erro sintático, o parser indicará a falha.

---
