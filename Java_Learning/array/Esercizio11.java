package array;
import java.util.Scanner;

public class Esercizio11 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] numeri = new int[6];

        // Legge i 6 numeri
        System.out.println("Inserisci 6 numeri interi:");
        for (int i = 0; i < numeri.length; i++) {
            System.out.print("Numero " + (i + 1) + ": ");
            numeri[i] = scanner.nextInt();
        }

        // Legge l'ulteriore numero
        System.out.print("Inserisci un altro numero intero: ");
        int numeroConfronto = scanner.nextInt();

        // Conta quanti sono inferiori e quanti superiori
        int inferiori = 0;
        int superiori = 0;

        for (int num : numeri) {
            if (num < numeroConfronto) {
                inferiori++;
            } else if (num > numeroConfronto) {
                superiori++;
            }
        }

        // Mostra i risultati
        System.out.println("Numeri inferiori a " + numeroConfronto + ": " + inferiori);
        System.out.println("Numeri superiori a " + numeroConfronto + ": " + superiori);
    }
}
