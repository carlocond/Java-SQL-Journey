package variabili;
import java.util.Scanner;

public class Esercizio23 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input dei dati
        System.out.print("Inserisci il giorno: ");
        int giorno = scanner.nextInt();

        System.out.print("Inserisci il mese: ");
        int mese = scanner.nextInt();

        System.out.print("Inserisci l'anno: ");
        int anno = scanner.nextInt();

        // Verifica della validità della data (con mesi da 30 giorni)
        if (giorno >= 1 && giorno <= 30 &&
                mese >= 1 && mese <= 12 &&
                anno > 0) {
            System.out.println("La data è valida.");
        } else {
            System.out.println("La data NON è valida.");
        }

        scanner.close();
    }
}
