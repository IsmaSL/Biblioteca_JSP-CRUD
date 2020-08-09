package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * @author Isma
 */
public class insertar {

    public String ejecutaInsertar(String tit,String aut,String gen,String edi,String pag,String pre,String ent,String tip) {
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
            Statement stat = conn.createStatement();
            //ResultSet rs = stat.executeQuery("select * from material");
            int val = stat.executeUpdate("INSERT INTO material (titulo,autor,genero,editorial,precio,tmpentrega,npag,tipo)"
                    + "VALUES ('"+tit+"','"+aut+"','"+gen+"','"+edi+"','"+pre+"','"+ent+"','"+pag+"','"+tip+"')");
            
            conn.close();
            
            if(val>0 ){
                consulta += "<div class=\"alert alert-success\" id=\"alertOk\"  role=\"alert\">"+
                                "<h4 class=\"alert-heading\">¡Nuevo elemento agregado!</h4>"+
                                "<p>Felicidades, has ingresado un nuevo elemento a la lista de materiales.</p>"+
                                "<hr>"+
                                "<p class=\"mb-0\">Espere 5 segundos y será redirigido al formulario o de "+
                                "<a href=\"inserta.jsp\" class=\"alert-link\">click aquí</a>.</p>"+
                            "</div>";
            }else{
                consulta += "No se inserto el registro";   
            }
        } catch (SQLException se) {
            consulta += "<br>LMensaje: " + se.getMessage();
            consulta += "<br>LEstado: " + se.getSQLState();
            consulta += "<br>LError: " + se.getErrorCode();
            System.out.println("<br>Fallo: " + consulta);
        } finally {
            return consulta;
        }
    }
}