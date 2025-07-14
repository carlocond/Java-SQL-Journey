package classi;

public class ProvaPunto {
    public static void main(String[] args) {

        //p1 è la variabile di riferimento della classe Punto, mentre new Punto è l'oggetto della classe Punto
        Punto p1 = new Punto();

        System.out.println(p1.getX());
        System.out.println(p1.getY());

        p1.setX(2);
        p1.setY(9);

        System.out.println(p1.getX());
        System.out.println(p1.getY());

        Punto p2 = new Punto(6, 7);

        System.out.println(p2.getX());
        System.out.println(p2.getY());

        p2.setX(5);
        p2.setY(9);

        System.out.println(p2.getX());
        System.out.println(p2.getY());

        p1.MuoviPunto(10, 15);

        System.out.println(p1.getX());
        System.out.println(p1.getY());

        p1.DistanzaDaOrigine();
        System.out.println(p1.DistanzaDaOrigine());
    }
}
