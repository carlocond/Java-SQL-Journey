package variabili;
import java.util.Scanner;

public class Esercizio4 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        //Input dell'orario
        System.out.println("Inserisci le ore: ");
        int ore = scanner.nextInt();

        System.out.println("Inserisci i minuti: ");
        int minuti = scanner.nextInt();

        System.out.println("Inserisci i secondi: ");
        int secondi = scanner.nextInt();

        //Calcolo dei secondi totali
        int totaleOrario = ore * 3600 + minuti * 60 + secondi;

        System.out.println("Il totale dei secondi è: " + totaleOrario);

        scanner.close();
    }

}
