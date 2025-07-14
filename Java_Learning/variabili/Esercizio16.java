package variabili;
import java.util.Scanner;

public class Esercizio16 {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        // Input dei due numeri
        System.out.print("Inserisci il primo numero: ");
        int num1 = scanner.nextInt();

        System.out.print("Inserisci il secondo numero: ");
        int num2 = scanner.nextInt();

        // Verifica se entrambi sono positivi
        if (num1 > 0 && num2 > 0) {

            int somma = num1 + num2;
            System.out.println("Entrambi i numeri sono positivi. Somma: " + somma);
        }
        else {

            int prodotto = num1 * num2;
            System.out.println("Uno dei numeri NON è positivo. Prodotto: " + prodotto);
        }

        scanner.close();
    }
}
