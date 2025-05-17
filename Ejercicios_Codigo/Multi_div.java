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
