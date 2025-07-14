package cicli;
import java.util.Scanner;

public class Esercizio76 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Inserisci valori numerici (0 per terminare):");

        double somma = 0.0;
        int conteggio = 0;

        int numero = scanner.nextInt();  // lettura iniziale

        while (numero != 0) {
            somma += numero;
            conteggio++;
            numero = scanner.nextInt();  // nuova lettura nel ciclo
        }

        if (conteggio > 0) {
            double media = somma / conteggio;
            System.out.println("Hai inserito " + conteggio + " numeri.");
            System.out.println("Media = " + media);
        } else {
            System.out.println("Nessun numero inserito (diverso da 0), non è possibile calcolare la media.");
        }

        scanner.close();
    }
}
