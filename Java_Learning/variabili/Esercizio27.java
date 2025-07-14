package variabili;
import java.util.Scanner;

public class Esercizio27 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input dei nomi delle squadre
        System.out.print("Inserisci il nome della prima squadra: ");
        String squadra1 = scanner.nextLine();

        System.out.print("Inserisci il nome della seconda squadra: ");
        String squadra2 = scanner.nextLine();

        // Input dei goal segnati
        System.out.print("Inserisci i goal segnati da " + squadra1 + ": ");
        int goal1 = scanner.nextInt();

        System.out.print("Inserisci i goal segnati da " + squadra2 + ": ");
        int goal2 = scanner.nextInt();

        // Verifica del risultato
        if (goal1 > goal2) {
            System.out.println("Ha vinto " + squadra1 + "!");
        } else if (goal2 > goal1) {
            System.out.println("Ha vinto " + squadra2 + "!");
        } else {
            System.out.println("La partita è terminata in pareggio.");
        }

        scanner.close();
    }
}
