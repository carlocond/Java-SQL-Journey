package classi;

public class ContoBancario {
    private String numeroConto;
    private int bilancio;

    // Costruttore con solo numero di conto, bilancio inizializzato a 0
    public ContoBancario(String numeroConto) {
        this.numeroConto = numeroConto;
        this.bilancio = 0;
    }

    // Costruttore con numero di conto e bilancio iniziale
    public ContoBancario(String numeroConto, int bilancioIniziale) {
        this.numeroConto = numeroConto;
        this.bilancio = bilancioIniziale;
    }

    // Metodo per ottenere il numero del conto
    public String getNumeroConto() {
        return numeroConto;
    }

    // Metodo per ottenere il bilancio
    public int getBilancio() {
        return bilancio;
    }

    // Metodo per depositare denaro
    public void deposita(int importo) {
        if (importo > 0) {
            bilancio += importo;
        } else {
            System.out.println("Importo non valido per il deposito.");
        }
    }

    // Metodo per prelevare denaro
    public void preleva(int importo) {
        if (importo > 0 && importo <= bilancio) {
            bilancio -= importo;
        } else {
            System.out.println("Prelievo non possibile: fondi insufficienti o importo non valido.");
        }
    }
}
