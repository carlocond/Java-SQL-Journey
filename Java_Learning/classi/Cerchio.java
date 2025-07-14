package classi;

public class Cerchio {

    public double raggio;

    // Costruttore
    public Cerchio(double r) {
        raggio = r;
    }

    // Metodo che restituisce il diametro
    public double diametro() {
        return 2 * raggio;
    }

    // Metodo che restituisce il perimetro (circonferenza)
    public double perimetro() {
        return 2 * Math.PI * raggio;
    }

    // Metodo che restituisce l'area
    public double area() {
        return Math.PI * raggio * raggio;
    }

    // Metodo che restituisce un nuovo Cerchio con raggio somma dei raggi
    public Cerchio sommaRaggio(Cerchio c) {
        return new Cerchio(raggio + c.raggio);
    }

}
