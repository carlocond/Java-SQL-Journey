package cicli;
import java.util.Scanner;

public class Esercizio4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int conteggio = 0;
        System.out.println("Inserisci il prossimo numero:");
        int precedente = scanner.nextInt();

        while (true) {
            System.out.println("Inserisci il prossimo numero:");
            int corrente = scanner.nextInt();

            if (corrente > precedente) {
                conteggio++;
                precedente = corrente;
            } else {
                break;
            }
        }

        System.out.println("Hai immesso una sequenza di numeri crescenti lunga " + conteggio);
        scanner.close();
    }
}
