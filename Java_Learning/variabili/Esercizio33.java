package variabili;
import java.util.Scanner;

public class Esercizio33 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input dei due numeri interi
        System.out.print("Inserisci il primo numero: ");
        int num1 = scanner.nextInt();

        System.out.print("Inserisci il secondo numero: ");
        int num2 = scanner.nextInt();

        // Input dell'operatore
        System.out.print("Inserisci l'operazione (+, -, *, /): ");
        char operatore = scanner.next().charAt(0);

        // Input del risultato inserito dal bambino
        System.out.print("Inserisci il risultato che hai ottenuto: ");
        int risultatoInserito = scanner.nextInt();

        int risultatoCorretto;

        switch (operatore) {
            case '+':
                risultatoCorretto = num1 + num2;
                break;
            case '-':
                risultatoCorretto = num1 - num2;
                break;
            case '*':
                risultatoCorretto = num1 * num2;
                break;
            case '/':
                if (num2 == 0) {
                    System.out.println("Errore: divisione per zero.");
                    scanner.close();
                    return;
                }
                risultatoCorretto = num1 / num2; // divisione intera
                break;
            default:
                System.out.println("Operatore non valido.");
                scanner.close();
                return;
        }

        // Verifica del risultato
        if (risultatoCorretto == risultatoInserito) {
            System.out.println("Bravo! Il risultato è corretto.");
        } else {
            System.out.println("Oops! Il risultato è sbagliato.");
            System.out.println("Il risultato corretto era: " + risultatoCorretto);
        }

        scanner.close();
    }
}
