package variabili;
import java.util.Scanner;

public class Esercizio5 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        //Input delle basi e dell'altezza
        System.out.println("Inserisci la base maggiore del trapezio: ");
        double base1 = scanner.nextDouble();

        System.out.println("Inserisci la base minore del trapezio: ");
        double base2 = scanner.nextDouble();

        System.out.println("Inserisci l'altezza del trapezio: ");
        double altezza = scanner.nextDouble();

        //Calcolo dell'area
        double areaTrapezio = (base1 + base2) * altezza / 2;

        //Output del risultato
        System.out.println("L'area del trapezio misura: " + areaTrapezio);

        scanner.close();

    }
}
