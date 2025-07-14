package cicli;
import java.util.Scanner;

public class Esercizio66 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Quanti numeri vuoi inserire? ");
        int n = scanner.nextInt();

        if (n <= 0) {
            scanner.close();
            return;
        }

        int positivi = 0;
        int i = 0;

        while (i < n) {
            System.out.print("Inserisci il numero " + (i + 1) + ": ");
            int numero = scanner.nextInt();

            if (numero > 0) {
                positivi++;
            }

            i++;
        }

        System.out.println("Hai inserito " + positivi + " numeri positivi.");
        scanner.close();
    }
}
