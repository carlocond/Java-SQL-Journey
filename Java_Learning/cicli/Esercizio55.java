package cicli;
import java.util.Scanner;

public class Esercizio55 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Inserisci una frase da ripetere");
        String frase = scanner.nextLine();

        System.out.println("Inserisci un numero per determinare quante volte verrà ripetuta la frase");
        int numero = scanner.nextInt();

        int i = 0;

        if (numero > 0){
            while(i < numero){
                System.out.println(frase);
                i++;
            }
        } else {
            System.out.println("Numero di ripetizioni non valido");
            return;
        }
    }
}
