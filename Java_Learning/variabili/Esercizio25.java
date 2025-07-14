package variabili;
import java.util.Scanner;

public class Esercizio25 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input del consumo
        System.out.print("Inserisci il consumo di acqua (in m³): ");
        double consumo = scanner.nextDouble();

        double quotaFissa = 20.0;
        double importoVariabile;

        if (consumo <= 100) {
            importoVariabile = consumo * 2.50;
        } else {
            importoVariabile = 100 * 2.50 + (consumo - 100) * 4.00;
        }

        double importoTotale = quotaFissa + importoVariabile;

        // Output del risultato
        System.out.println("L'importo totale della bolletta è: " + importoTotale + " euro");

        scanner.close();
    }
}
