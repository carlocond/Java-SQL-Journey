package array;
import java.util.Scanner;
public class Esercizio2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double[] numeri = new double[8];

        // Lettura e memorizzazione dei numeri
        for (int i = 0; i < 8; i++) {
            System.out.print("Inserisci il numero reale " + (i + 1) + ": ");
            numeri[i] = scanner.nextDouble();
        }

        // Calcolo della somma
        double somma = 0;
        for (int i = 0; i < 8; i++) {
            somma += numeri[i];
        }

        // Calcolo e stampa della media
        double media = somma / 8;
        System.out.println("Somma = " + somma);
        System.out.println("Media = " + media);

        scanner.close();
    }
}
