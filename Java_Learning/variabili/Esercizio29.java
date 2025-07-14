package variabili;
import java.util.Scanner;
public class Esercizio29 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Inserisci il primo numero: ");
        int num1 = scanner.nextInt();

        System.out.print("Inserisci il secondo numero: ");
        int num2 = scanner.nextInt();

        System.out.print("Inserisci il terzo numero: ");
        int num3 = scanner.nextInt();

        int minore = num1;

        if (num2 < minore) {
            minore = num2;
        }

        if (num3 < minore) {
            minore = num3;
        }

        System.out.println("Il numero minore è: " + minore);

        scanner.close();
    }
}
