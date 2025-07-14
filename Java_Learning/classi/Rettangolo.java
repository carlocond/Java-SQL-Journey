package classi;

public class Rettangolo {

    public double base;
    public double altezza;

    // Metodo per ridimensionare il rettangolo
    public void ridimensiona(double nuovaBase, double nuovaAltezza) {
        base = nuovaBase;
        altezza = nuovaAltezza;
    }

    // Metodo per calcolare il perimetro
    public double perimetro() {
        return 2 * (base + altezza);
    }

    // Metodo per calcolare l'area
    public double area() {
        return base * altezza;
    }
}
