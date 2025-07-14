package cicli;
import java.util.Scanner;

public class Esercizio62 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        double somma = 0;
        int i = 0;

        while(i < 10){
            System.out.println("Inserisci il " + (i + 1) + " numero");
            int numero = scanner.nextInt();
            somma += numero;
            i++;
        }
        double media = somma / 10;
        System.out.println("La media aritmetica dei numeri è: " + media);

    }
}
