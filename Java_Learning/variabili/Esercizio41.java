package variabili;
import java.util.Scanner;

public class Esercizio41 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Inserimento dati
        System.out.print("Inserisci la media dei voti dello studente: ");
        double media = scanner.nextDouble();

        System.out.print("Inserisci il reddito familiare: ");
        double reddito = scanner.nextDouble();

        double quotaFissa = 18.00;
        double quotaAggiuntiva = 0.00;

        // Calcolo della quota aggiuntiva in base alla media
        if (media < 7) {

            quotaAggiuntiva = 25.00;
        }
        else if (media >= 7 && media <= 8) {

            quotaAggiuntiva = 17.50; // Nessuna quota aggiuntiva se media > 8
        }

        // Calcolo importo totale
        double importoTotale = quotaFissa + quotaAggiuntiva;

        // Riduzione per reddito basso
        if (reddito < 16000) {
            importoTotale *= 0.60; // Riduzione del 40%
        }

        // Output del risultato
        System.out.printf("L'importo da versare è: € %.2f%n", importoTotale);

        scanner.close();
    }
}
