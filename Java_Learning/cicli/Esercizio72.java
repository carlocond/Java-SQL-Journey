package cicli;
import java.util.Scanner;

public class Esercizio72 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int n = 0;

        // Chiedi n > 0
        while (n <= 0) {
            System.out.print("Quanti numeri vuoi inserire? ");
            n = scanner.nextInt();
        }

        int sommaNegativi = 0;
        int sommaPositivi = 0;
        int contaPositivi = 0;
        int i = 0;

        while (i < n) {
            System.out.print("Inserisci il numero " + (i + 1) + ": ");
            int numero = scanner.nextInt();

            if (numero < 0) {
                sommaNegativi += numero;
            } else if (numero > 0) {
                sommaPositivi += numero;
                contaPositivi++;
            }

            i++;
        }

        System.out.println("Somma dei numeri negativi: " + sommaNegativi);

        if (contaPositivi > 0) {
            double mediaPositivi = (double) sommaPositivi / contaPositivi;
            System.out.println("Media dei numeri positivi: " + mediaPositivi);
        } else {
            System.out.println("Nessun numero positivo inserito.");
        }

        scanner.close();
    }
}
