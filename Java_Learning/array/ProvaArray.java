package array;

import java.util.Scanner;

public class ProvaArray {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] numeri; //dichiarazione array

        numeri = new int[6]; //Inizializzazione di un array di dimensione 6

        numeri[0] = 4;
        numeri[1] = 8;
        numeri[2] = 6;
        numeri[3] = 3;
        numeri[4] = 7;
        numeri[5] = 2;



        for (int j = 0; j < 6; j++) {
            System.out.println("Inserisci un valore");
            numeri[j] = scanner.nextInt();
        }

        String[] parole = {"java", "sql", "microservizi"};

        parole[0] = "python";

        for (int i = 0; i < 3; i++) {
            System.out.println(parole[i]);
        }

    }
}

