# Tarea 2
## Hacer un programa para multiplicar con sumas y dividir con restas

Este código en Java pide al usuario ingresar dos números para evaluar la multiplicación y la división de forma recursiva.
Multiplicación: La función multi realiza una multiplicación mediante recursión. En lugar de usar el operador *, la función suma el primer número (a) repetidamente, b veces. Si b es 0, el resultado es 0, y de lo contrario, suma a a la llamada recursiva reduciendo b en 1.

División: La función div realiza una división recursiva. La idea es restar b de a hasta que a sea menor que b, y contar cuántas veces puede hacerlo (esto es equivalente a la división de enteros). Si a es menor que b, retorna 0 (como el cociente). De lo contrario, sigue restando b a a y sumando 1 en cada llamada recursiva.

Es un ejemplo de cómo implementar operaciones matemáticas básicas sin usar los operadores convencionales, utilizando recursión en su lugar.

```java
import java.util.Scanner;

public class Multidiv {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.println("Ingresar dos numeros para evaluar la multplicacion y division");
        int a = sc.nextInt();
        int b = sc.nextInt();
        System.out.println("La multiplicacion de " + a + " * " + b + " es: " + multi(a, b));
        System.out.println("La division de " + a + " / " + b + " es: " + div(a, b));
        sc.close();
    }

    public static int multi(int a, int b) {
        if (b == 0) {
            return 0;
        }
        return a + multi(a, b - 1);
    }

    public static int div(int a, int b) {
        if (a < b) {
            return 0;
        }
        return 1 + div(a - b, b);

    }
}
```