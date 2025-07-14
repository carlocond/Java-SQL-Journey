package classi;

public class Dipendente {
    public String nome;
    public double stipendio;

    // Costruttore senza parametri
    public Dipendente() {
        nome = "";
        stipendio = 0.0;
    }

    // Costruttore con parametri
    public Dipendente(String nomeDipendente, double stipendioDipendente) {
        nome = nomeDipendente;
        stipendio = stipendioDipendente;
    }

    // Metodo per aumentare lo stipendio
    public void aumentaSalario(double aumento) {
        stipendio += stipendio * aumento / 100;
    }
}
