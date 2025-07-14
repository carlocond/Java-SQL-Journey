package classi;
import java .util.Scanner;

public class TestCerchio {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        double r1 = -1;
        while (r1 < 0) {
            System.out.print("Inserisci il raggio del cerchio 1: ");
            r1 = scanner.nextDouble();
            if (r1 < 0) {
                System.out.println("Errore: il raggio non può essere negativo.");
            }
        }

        double r2 = -1;
        while (r2 < 0) {
            System.out.print("Inserisci il raggio del cerchio 2: ");
            r2 = scanner.nextDouble();
            if (r2 < 0) {
                System.out.println("Errore: il raggio non può essere negativo.");
            }
        }

        Cerchio c1 = new Cerchio(r1);
        Cerchio c2 = new Cerchio(r2);
        Cerchio c3 = c1.sommaRaggio(c2);

        System.out.println("Cerchio 1 - Raggio: " + c1.raggio);
        System.out.println("Area: " + c1.area());
        System.out.println("Perimetro: " + c1.perimetro());

        System.out.println();

        System.out.println("Cerchio 2 - Raggio: " + c2.raggio);
        System.out.println("Area: " + c2.area());
        System.out.println("Perimetro: " + c2.perimetro());

        System.out.println();

        System.out.println("Cerchio somma - Raggio: " + c3.raggio);
        System.out.println("Area: " + c3.area());
        System.out.println("Perimetro: " + c3.perimetro());

        scanner.close();
    }
}
