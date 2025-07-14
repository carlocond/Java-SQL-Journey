package classi;
import java.util.Scanner;

public class TestPotenza {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input valori
        System.out.print("Inserisci la base: ");
        int base = scanner.nextInt();

        System.out.print("Inserisci l'esponente: ");
        int esponente = scanner.nextInt();

        // Creazione oggetto
        Potenza p = new Potenza(base, esponente);

        // Calcolo e stampa della potenza
        System.out.println("Risultato: " + base + "^" + esponente + " = " + p.pow());

        scanner.close();
    }
}
