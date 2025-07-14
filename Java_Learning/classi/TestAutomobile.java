package classi;
import java.util.Scanner;

public class TestAutomobile {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Creazione automobile con resa definita dall'utente
        System.out.print("Inserisci la resa dell'automobile (km/l): ");
        double resa = scanner.nextDouble();

        Automobile auto = new Automobile(resa);

        boolean continua = true;
        while (continua) {
            System.out.println("\n--- Menu ---");
            System.out.println("1. Aggiungi carburante");
            System.out.println("2. Guida");
            System.out.println("3. Mostra carburante disponibile");
            System.out.println("4. Esci");
            System.out.print("Scegli un'opzione: ");
            int scelta = scanner.nextInt();

            switch (scelta) {
                case 1:
                    System.out.print("Inserisci i litri da aggiungere: ");
                    double litri = scanner.nextDouble();
                    auto.addCarburante(litri);
                    break;
                case 2:
                    System.out.print("Inserisci la distanza da percorrere (km): ");
                    int distanza = scanner.nextInt();
                    if (auto.drive(distanza)) {
                        System.out.println("Percorso completato con successo.");
                    } else {
                        System.out.println("Carburante insufficiente per percorrere la distanza.");
                    }
                    break;
                case 3:
                    System.out.printf("Carburante disponibile: %.2f litri\n", auto.getCarburante());
                    break;
                case 4:
                    continua = false;
                    break;
                default:
                    System.out.println("Scelta non valida.");
            }
        }

        scanner.close();
        System.out.println("Programma terminato.");
    }
}
