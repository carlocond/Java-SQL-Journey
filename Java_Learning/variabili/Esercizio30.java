package variabili;
import java.util.Scanner;

public class Esercizio30 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Inserisci il primo numero: ");
        int a = scanner.nextInt();

        System.out.print("Inserisci il secondo numero: ");
        int b = scanner.nextInt();

        System.out.print("Inserisci il terzo numero: ");
        int c = scanner.nextInt();

        int temp;

        // Ordinamento semplice a 3 numeri (bubble sort)
        if (a > b) {
            temp = a; a = b; b = temp;
        }
        if (a > c) {
            temp = a; a = c; c = temp;
        }
        if (b > c) {
            temp = b; b = c; c = temp;
        }

        System.out.println("Ordine crescente: " + a + ", " + b + ", " + c);

        scanner.close();
    }
}
