package Model;
/**
 * @author Isma
 */
public class accessDB {
    public boolean estaControlador() {
        boolean band = false;
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            band = true;
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            band = false;
            System.out.println("Fallo driver: " + ex);
        } finally {
            return band;
        }
    }
}
