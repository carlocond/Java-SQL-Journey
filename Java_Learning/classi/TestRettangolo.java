package classi;

public class TestRettangolo {
    public static void main(String[] args) {

        Rettangolo r1 = new Rettangolo();
        Rettangolo r2 = new Rettangolo();
        Rettangolo r3 = new Rettangolo();

        // Inizializzazione usando ridimensiona
        r1.ridimensiona(4.0, 5.0);
        r2.ridimensiona(3.5, 2.0);
        r3.ridimensiona(6.0, 3.0);

        // Calcolo delle somme
        double sommaAree = r1.area() + r2.area() + r3.area();
        double sommaPerimetri = r1.perimetro() + r2.perimetro() + r3.perimetro();

        System.out.println("Somma delle aree: " + sommaAree);
        System.out.println("Somma dei perimetri: " + sommaPerimetri);

        // Ridimensionamento diretto
        r2.base = 7.0;
        r2.altezza = 2.5;

        // Calcolo dopo della modifica
        sommaAree = r1.area() + r2.area() + r3.area();
        sommaPerimetri = r1.perimetro() + r2.perimetro() + r3.perimetro();


        System.out.println("Somma delle aree dopo la modifica: " + sommaAree);
        System.out.println("Somma dei perimetri dopo la modifica: " + sommaPerimetri);
    }
}
