package classi;

public class Automobile {
    private double resaKmPerLitro;     // Resa in km/litro
    private double carburanteNelSerbatoio; // Carburante disponibile (in litri)

    // Costruttore: inizializza la resa e imposta il carburante a 0
    public Automobile(double resaKmPerLitro) {
        this.resaKmPerLitro = resaKmPerLitro;
        this.carburanteNelSerbatoio = 0;
    }

    // Metodo per far "guidare" l'auto per una certa distanza
    public boolean drive(int distanzaKm) {
        double carburanteNecessario = distanzaKm / resaKmPerLitro;

        if (carburanteNecessario <= carburanteNelSerbatoio) {
            carburanteNelSerbatoio -= carburanteNecessario;
            return true;
        } else {
            return false;
        }
    }

    // Metodo per ottenere il carburante attuale
    public double getCarburante() {
        return carburanteNelSerbatoio;
    }

    // Metodo per aggiungere carburante
    public void addCarburante(double litri) {
        if (litri > 0) {
            carburanteNelSerbatoio += litri;
        } else {
            System.out.println("Quantità di carburante non valida.");
        }
    }
}
