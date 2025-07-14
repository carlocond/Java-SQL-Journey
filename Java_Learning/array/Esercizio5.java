package array;
import java.util.Scanner;

public class Esercizio5 {
    public static void main(String[] args) {
        int[] numeri = {18, 9, 20, 211, 22, 0, -12, -83, 29, 5};

        Scanner scanner = new Scanner(System.in);
        System.out.print("Inserire un numero: ");
        int alunno = scanner.nextInt();

        boolean presente = false;

        // Ricerca con for-each
        for (int num : numeri) {
            if (num == alunno) {
                presente = true;
                break;
            }
        }

        if (presente) {
            System.out.println("Presente!");
        } else {
            System.out.println("Assente!");
        }
    }
}
