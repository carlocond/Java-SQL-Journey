package classi;

public class Potenza {
    private int base;
    private int esponente;

    // Costruttore
    public Potenza(int baseNuova, int esponenteNuovo) {
        base = baseNuova;
        esponente = esponenteNuovo;
    }

    // Metodo per calcolare la potenza manualmente
    public int pow() {
        int risultato = 1;

        for (int i = 0; i < esponente; i++) {
            risultato *= base;
        }

        return risultato;
    }

}
