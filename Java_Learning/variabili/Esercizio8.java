package variabili;
import java.util.Scanner;

public class Esercizio8 {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        //Input dell'età di 3 persone

        System.out.println("Inserisci l'età della prima persona");
        int eta1 = scanner.nextInt();

        System.out.println("Inserisci l'età della seconda persona");
        int eta2 = scanner.nextInt();

        System.out.println("Inserisci l'età della terza persona");
        int eta3 = scanner.nextInt();

        //Calcolo dell'età media

        int etaMedia = (eta1 + eta2 + eta3) / 3;

        System.out.println("La media dell'età di tre persone è: ");

        scanner.close();
    }
}
