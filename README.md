# Calculadora com JFlex

Este projeto implementa uma calculadora utilizando **JFlex** para a análise léxica. O scanner gerado é capaz de reconhecer números inteiros, números de ponto flutuante (decimais) e múltiplos operadores aritméticos.

## Recursos Implementados

O analisador léxico reconhece os seguintes tokens:
- **Números:** Inteiros e Decimais (ex: `10`, `12.5`).
- **Operadores:** `+` (soma), `-` (subtração), `*` (multiplicação), `/` (divisão).
- **Operadores Especiais:** `**` (potência), `//` (divisão inteira).
- **Precedência:** `(` e `)` (parênteses).

## Estrutura do Projeto

- **`libs/jflex-1.9.1.jar`** → Arquivo executável do JFlex.
- **`src/Main.java`** → Classe principal que roda o analisador.
- **`src/Calculadora.flex`** → Arquivo de especificação JFlex para gerar o scanner.
- **`src/entrada_0.txt`** → Arquivo de entrada com expressões a serem analisadas.

## Como Rodar o Projeto

### Pré-requisitos
- Java (JDK) instalado.

### 1. Gerar o Analisador Léxico
No terminal, na pasta raiz do projeto, rode o comando abaixo.

```bash
java -jar libs/jflex-1.9.1.jar src/Calculadora.flex
```
Isso vai gerar o arquivo `CalcScanner.java` dentro de `src/`.

### 2. Compilar os Arquivos Java
Ainda na pasta raiz do projeto:

```bash
javac src/*.java
```

### 3. Executar o Programa
Na raiz do projeto, rode o comando passando o arquivo de entrada como argumento:

```bash
java -cp src Main src/entrada_0.txt
```

## Exemplo de Entrada

Conteúdo do arquivo `entrada_0.txt`:

```
( 100.25 - ( 2.5 ** 3 ) ) // 10 * 5 + ( 144 / 12 )
```

---

## Saída Esperada

Ao rodar o programa com a entrada de exemplo, a saída será a seguinte lista de tokens reconhecidos:

```
Token: LPAREN (()
Token: NUM_DECIMAL (100.25)
Token: MINUS (-)
Token: LPAREN (()
Token: NUM_DECIMAL (2.5)
Token: POWER (**)
Token: NUM_INTEIRO (3)
Token: RPAREN ())
Token: RPAREN ())
Token: INT_DIV (//)
Token: NUM_INTEIRO (10)
Token: TIMES (*)
Token: NUM_INTEIRO (5)
Token: PLUS (+)
Token: LPAREN (()
Token: NUM_INTEIRO (144)
Token: DIV (/)
Token: NUM_INTEIRO (12)
Token: RPAREN ())
```