package variabili;
import java.util.Scanner;

public class Esercizio9 {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        // Input del prezzo originale
        System.out.print("Inserisci il prezzo del prodotto: ");
        double prezzo = scanner.nextDouble();

        // Calcolo dello sconto (20%)
        double sconto = prezzo * 20 / 100;
        double prezzoScontato = prezzo - sconto;

        // Output del prezzo scontato
        System.out.println("Il prezzo scontato del 20% è: " + prezzoScontato);

        scanner.close();

    }
}
