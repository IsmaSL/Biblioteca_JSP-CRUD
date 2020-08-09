package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Isma
 */
public class eliminar {

    public String ejecutaEliminacion() {
        String consulta = "";
        Connection conn = null;

        try {
            //conn = DriverManager.getConnection("jdbc:postgresql://node53288-bdigital-ito.jl.serv.net.mx:5432/bibliotecadb", "webadmin", "HLDxri66718");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/bibliotecadb", "postgres", "holamundo");
        } catch (SQLException se) {
            consulta += "\nMensaje: " + se.getMessage();
            consulta += "\nEstado: " + se.getSQLState();
            consulta += "\nError: " + se.getErrorCode();
            System.out.println("Fallo: " + consulta);
        }
        try {
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("SELECT * FROM material ORDER BY idmat");
            while (rs.next()) {

                consulta += "<tr>";

                consulta += "<th>" + rs.getString("idmat") + "</th>";
                consulta += "<th>" + rs.getString("titulo") + "</th>";
                consulta += "<th>" + rs.getString("autor") + "</th>";
                consulta += "<th>" + rs.getString("genero") + "</th>";
                consulta += "<th> $ " + rs.getString("precio") + "</th>";
                consulta += "<th>"
                        + "<a href=ctrlElimina.jsp?id=" + rs.getString("idmat") + ">"
                        + "<i class=\"far fa-trash-alt fa-2x red-text\"></i>"
                        + "</a>"
                        + "</th>";
                consulta += "</tr>";
            }
            conn.close();
        } catch (SQLException se) {
            consulta += "<br>LMensaje: " + se.getMessage();
            consulta += "<br>LEstado: " + se.getSQLState();
            consulta += "<br>LError: " + se.getErrorCode();
            System.out.println("<br>Fallo: " + consulta);
        } finally {
            return consulta;
        }
    }

    public String Eliminacion(String id) {
        Connection conn = null;
        String consulta = "";
        try {
            //conn = DriverManager.getConnection("jdbc:postgresql://node53288-bdigital-ito.jl.serv.net.mx:5432/bibliotecadb", "webadmin", "HLDxri66718");
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/bibliotecadb", "postgres", "holamundo");
        } catch (SQLException se) {
            consulta += "\nMensaje: " + se.getMessage();
            consulta += "\nEstado: " + se.getSQLState();
            consulta += "\nError: " + se.getErrorCode();
            System.out.println("Fallo: " + consulta);
        }
        try{
            String query = "DELETE FROM material WHERE idmat=" + id + ";";
            Statement stat = conn.createStatement();
            int rs = stat.executeUpdate(query);
            if(rs==1 ){
                consulta += "<div class=\"alert alert-success\" id=\"alertOk\"  role=\"alert\">"+
                                "<h4 class=\"alert-heading\">¡Elemento borrado!</h4>"+
                                "<p>Felicidades, has ingresado un nuevo elemento a la lista de materiales.</p>"+
                                "<hr>"+
                                "<p class=\"mb-0\">Espere 5 segundos y será redirigido a la página anterior o de "+
                                "<a href=\"elimina.jsp\" class=\"alert-link\">click aquí</a>.</p>"+
                            "</div>";
            }else{
                consulta += "<div class=\"alert alert-danger\" id=\"alertOk\"  role=\"alert\">"+
                                    "<h4 class=\"alert-heading\">¡Error al borrar!</h4>"+
                                "<p>No ha sido posible borrar el elemento seleccionado.</p>"+
                                "<hr>"+
                                "<p class=\"mb-0\">Espere 5 segundos y será redirigido a la página anterior o de "+
                                "<a href=\"elimina.jsp\" class=\"alert-link\">click aquí</a>.</p>"+
                            "</div>";   
            }
            conn.close();
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
