package variabili;
import java.util.Scanner;

public class Esercizio17 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        //Input del prezzo
        System.out.println("Inserisci il prezzo del prodotto");
        int prezzo = scanner.nextInt();

        if(prezzo < 30){

            double sconto = 12;
            double prezzoDaScontare = prezzo * sconto / 100;
            double prezzoScontato = prezzo - prezzoDaScontare;
            System.out.println("Il prezzo scontato del 12% è " + prezzoScontato);
        }
        else {

            double sconto = 25;
            double prezzoDaScontare = prezzo * sconto / 100;
            double prezzoScontato = prezzo - prezzoDaScontare;
            System.out.println("Il prezzo scontato del 25% è " + prezzoScontato);
        }
    }
}
