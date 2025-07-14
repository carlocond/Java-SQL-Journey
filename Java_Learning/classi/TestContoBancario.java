package classi;
import java.util.Scanner;

public class TestContoBancario {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Inserimento numero conto
        System.out.print("Inserisci il numero del conto: ");
        String numeroConto = scanner.nextLine();

        // Scelta su creazione conto con o senza bilancio iniziale
        System.out.print("Vuoi specificare un bilancio iniziale? (s/n): ");
        String risposta = scanner.nextLine();

        ContoBancario conto;

        if (risposta.equalsIgnoreCase("s")) {
            System.out.print("Inserisci il bilancio iniziale: ");
            int bilancio = scanner.nextInt();
            conto = new ContoBancario(numeroConto, bilancio);
        } else {
            conto = new ContoBancario(numeroConto);
        }

        // Operazioni
        boolean continua = true;
        while (continua) {
            System.out.println("\n--- Operazioni ---");
            System.out.println("1. Visualizza bilancio");
            System.out.println("2. Deposita");
            System.out.println("3. Preleva");
            System.out.println("0. Esci");
            System.out.print("Scegli un'opzione: ");
            int scelta = scanner.nextInt();

            switch (scelta) {
                case 1:
                    System.out.println("Conto: " + conto.getNumeroConto());
                    System.out.println("Bilancio: " + conto.getBilancio() + " euro");
                    break;
                case 2:
                    System.out.print("Inserisci l'importo da depositare: ");
                    int deposito = scanner.nextInt();
                    conto.deposita(deposito);
                    break;
                case 3:
                    System.out.print("Inserisci l'importo da prelevare: ");
                    int prelievo = scanner.nextInt();
                    conto.preleva(prelievo);
                    break;
                case 0:
                    System.out.println("Arrivederci");
                    continua = false;
                    break;
                default:
                    System.out.println("Scelta non valida.");
            }
        }

        scanner.close();
    }
}
