package classi;

import javax.swing.*;
import java.util.Scanner;

public class TestDipendente {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        Dipendente d1 = new Dipendente();
        Dipendente d2 = new Dipendente();

        // Inserimento dati per il primo dipendente
        System.out.println("Inserisci il nome del primo dipendente:");
        d1.nome = scanner.nextLine();

        System.out.println("Inserisci lo stipendio di " + d1.nome + ":");
        d1.stipendio = scanner.nextDouble();
        if (d1.stipendio <= 0) {
            System.out.println("Stipendio non valido. Inserisci un valore maggiore di 0:");
            d1.stipendio = scanner.nextDouble();
        }
        scanner.nextLine(); //Questo serve a pulire il buffer, cioè a non far saltare gli input o leggere stringhe inaspettate

        // Inserimento dati per il secondo dipendente
        System.out.println("\nInserisci il nome del secondo dipendente:");
        d2.nome = scanner.nextLine();

        System.out.println("Inserisci lo stipendio di " + d2.nome + ":");
        d2.stipendio = scanner.nextDouble();
        if (d2.stipendio <= 0) {
            System.out.println("Stipendio non valido. Inserisci un valore maggiore di 0:");
            d2.stipendio = scanner.nextDouble();
        }
        scanner.nextLine();

        boolean continua = true;

        while (continua) {
            System.out.println("\n--- Menù Aumenti ---");
            System.out.println("1 - Dare aumento a " + d1.nome);
            System.out.println("2 - Dare aumento a " + d2.nome);
            System.out.println("3 - Dare aumento a entrambi");
            System.out.println("4 - Mostra stipendi attuali");
            System.out.println("5 - Esci");
            System.out.println("Scegli un'opzione (1-5):");

            int scelta = scanner.nextInt();

            switch (scelta) {
                case 1:
                    System.out.println("Inserisci percentuale di aumento per " + d1.nome + ":");
                    double a1 = scanner.nextDouble();
                    while (a1 <= 0) {
                        System.out.println("Percentuale non valida, riprova:");
                        a1 = scanner.nextDouble();
                    }
                    d1.aumentaSalario(a1);
                    System.out.println("Aumento applicato a " + d1.nome);
                    break;

                case 2:
                    System.out.println("Inserisci percentuale di aumento per " + d2.nome + ":");
                    double a2 = scanner.nextDouble();
                    while (a2 <= 0) {
                        System.out.println("Percentuale non valida, riprova:");
                        a2 = scanner.nextDouble();
                    }
                    d2.aumentaSalario(a2);
                    System.out.println("Aumento applicato a " + d2.nome);
                    break;

                case 3:
                    System.out.println("Inserisci percentuale di aumento per entrambi:");
                    double a3 = scanner.nextDouble();
                    while (a3 <= 0) {
                        System.out.println("Percentuale non valida, riprova:");
                        a3 = scanner.nextDouble();
                    }
                    d1.aumentaSalario(a3);
                    d2.aumentaSalario(a3);
                    System.out.println("Aumento applicato a entrambi.");
                    break;

                case 4:
                    System.out.println("\nStipendi attuali:");
                    System.out.println(d1.nome + ": " + d1.stipendio);
                    System.out.println(d2.nome + ": " + d2.stipendio);
                    break;

                case 5:
                    continua = false;
                    System.out.println("Uscita dal programma.");
                    break;

                default:
                    System.out.println("Scelta non valida, riprova.");
                    break;
            }

        }

        scanner.close();
    }
}
