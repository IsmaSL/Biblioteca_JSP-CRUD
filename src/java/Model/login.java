package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * @author Isma
 */
public class login {
    
    private Statement stat;
    private ResultSet rs;
    
    public boolean buscaUsuario(String user, String pass) {
        String consulta = "";
        Connection conn = null;

        try {
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/bibliotecadb", "postgres", "holamundo");
            //conn = DriverManager.getConnection("jdbc:postgresql://node53288-bdigital-ito.jl.serv.net.mx:5432/bibliotecadb", "webadmin", "HLDxri66718");
        } catch (SQLException se) {
            consulta += "\nMensaje: " + se.getMessage();
            consulta += "\nEstado: " + se.getSQLState();
            consulta += "\nError: " + se.getErrorCode();
            System.out.println("Fallo: " + consulta);
        }
        
        try {
            stat = conn.createStatement();
            rs = stat.executeQuery("SELECT * FROM usuario WHERE usr='"+user+"' AND pas='"+pass+"'");
            while (rs.next()) {
                return true;
            }
            
            //conn.close();
        } catch (SQLException se) {
            
        }
        return false;
    }
}

