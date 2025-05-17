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
