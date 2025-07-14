package array;

public class Esercizio7 {
    public static void main(String[] args) {
        double[] temperature = {18.0, 19.5, 20.0, 21.0, 22.3, 24.0, 23.6, 22.8, 22.9, 20.5, 19.2, 18.7};

        double somma = 0;

        // Calcolo della somma
        for (double temp : temperature) {
            somma += temp;
        }

        // Calcolo della media
        double media = somma / temperature.length;

        // Stampa del risultato per ogni temperatura
        for (double temp : temperature) {
            if (temp >= media) {
                System.out.println(temp + " superiore o uguale alla media");
            } else {
                System.out.println(temp + " inferiore alla media");
            }
        }
    }
}
