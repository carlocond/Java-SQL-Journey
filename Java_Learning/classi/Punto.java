package classi;

public class Punto {
    //x e y sono variabili di istanza

    private int x;
    private int y;

    //Questo è il costruttore di default che java inserisce nella classe quando noi non ne creiamo uno
    public Punto(){

    }

    public Punto(int a, int b){
        x = a;
        y = b;
    }

    //Questo metodo modifica lo stato dell'oggetto, solitamente non ha tipo di ritorno
    public void MuoviPunto(int a, int b){
        x = a;
        y = b;
    }

    //Metodo che fa un calcolo e ritorna un valore, bisogna mettere il tipo di ritorno adatto ed utilizzare return
    public double DistanzaDaOrigine(){
        double distanza = Math.sqrt(x*x + y*y);

        return distanza;
    }

    public int getX(){
        return x;
    }

    public int getY(){
        return y;
    }

    public void setX(int a){
        x = a;
    }

    public void setY(int b){
        y = b;
    }
}


