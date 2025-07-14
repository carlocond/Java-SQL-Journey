package array;

public class Esercizio4 {
    public static void main(String[] args) {

        int[] numeri = new int[100];

        // Riempimento dell'array con numeri da 100 a 1
        for (int i = 0; i < 100; i++) {
            numeri[i] = 100 - i;
        }

        // Stampa dell'array al contrario
        for (int i = 0; i < 100; i++) {
            System.out.print("Posizione " + i + ": " + numeri[i] + " \n");
        }
    }
}
