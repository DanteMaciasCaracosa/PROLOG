# Coin Challenge

Este programa en Java encuentra todas las formas posibles de dar cambio para una cantidad específica usando ciertas monedas.

## Explicacion

1. **Entrada del usuario**  
   Se usa `Scanner` para leer un número (cantidad a desglosar en monedas).

2. **Lista de monedas**  
   Tiene el array: `{1, 2, 5, 10, 20, 50, 100}` para representa el tipo de cambio

3. **Cálculo de combinaciones (Recursión)**  
   La función `waysToGiveChange()` obtiene todas las combinaciones de un numero:
   - Si `amount == 0`, se encontró una combinación válida y se guarda.
   - Si `idx == coins.length`, ya no hay más monedas que probar.
   - Si la moneda actual cabe (`coin <= amount`), se añade y se sigue probando.

4. **Resultados**  
   - Se imprimen todas las combinaciones encontradas.
   - Se muestra el número total de formas de dar cambio.

Codigo: 

``` bash
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class coin {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int amount = sc.nextInt();
        Integer[] coins = { 1, 2, 5, 10, 20, 50, 100 };
        ArrayList<List<Integer>> result = new ArrayList<>();
        waysToGiveChange(result, coins, amount, 0, new ArrayList<>());
        for (List<Integer> combination : result) {
            System.out.println(combination);
        }
        System.out.println("Difentes formas: " + result.size());
        sc.close();
    }

    public static void waysToGiveChange(ArrayList<List<Integer>> result, Integer[] coins,
            int amount, int idx, List<Integer> newCombination) {
        if (amount == 0) {
            result.add(new ArrayList<>(newCombination));
            return;
        }
        if (idx == coins.length) {
            return;
        }
        int coin = coins[idx];
        if (coin <= amount) {
            newCombination.add(coin);
            waysToGiveChange(result, coins, amount - coin, idx, newCombination);
            newCombination.remove(newCombination.size() - 1);
        }
        waysToGiveChange(result, coins, amount, idx + 1, newCombination);

    }
}
```
