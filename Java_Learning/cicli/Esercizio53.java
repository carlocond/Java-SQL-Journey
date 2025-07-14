package cicli;
import java.util.Scanner;

public class Esercizio53 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int x = 1;

        System.out.println("Inserisci una frase da ripetere:");
        String frase = scanner.nextLine();

        while(x <= 5){
            System.out.println(frase);
            x++;
        }
    }
}
