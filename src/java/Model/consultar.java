package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 * @author Isma
 */
public class consultar {

    public String ejecutaConsulta() {
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
                    consulta += "<th>"+
                                    " <a href=detalles.jsp?id=" + rs.getString("idmat") + ">"+
                                        "<i class=\"fas fa-plus-circle fa-2x green-text\"></i>"+
                                    "</a>"+
                                "</th>";
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
    
    public String detalles(String id) {
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
            ResultSet rs = stat.executeQuery("select * from material WHERE idmat="+id);
            while (rs.next()) {
                consulta += "<tr>";
                    consulta += "<th>ID</th>";
                    consulta += "<td>" + rs.getString("idmat") + "</td>";
                consulta += "</tr>";
                consulta += "<tr>";
                    consulta += "<th>Titulo</th>";
                    consulta += "<td>" + rs.getString("titulo") + "</td>";
                consulta += "</tr>";
                consulta += "<tr>";
                    consulta += "<th>Autor</th>";
                    consulta += "<td>" + rs.getString("autor") + "</td>";
                consulta += "</tr>";
                consulta += "<tr>";
                    consulta += "<th>Género</th>";
                    consulta += "<td>" + rs.getString("genero") + "</td>";
                consulta += "</tr>";
                consulta += "<tr>";
                    consulta += "<th>Editorial</th>";
                    consulta += "<td>" + rs.getString("editorial") + "</td>";
                consulta += "</tr>";
                consulta += "<tr>";
                    consulta += "<th>Cant. Páginas</th>";
                    consulta += "<td>" + rs.getString("npag") + "</td>";
                consulta += "</tr>";
                consulta += "<tr>";
                    consulta += "<th>Precio</th>";
                    consulta += "<td>$ " + rs.getString("precio") + "</thd";
                consulta += "</tr>";
                consulta += "<tr>";
                    consulta += "<th>Tiempo de Entrega</th>";
                    consulta += "<td>" + rs.getString("tmpentrega") + "</td>";
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
    
    public String buscar(String texto, String filtro) {
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
            String query = "";
            if(filtro.equals("1")){
                query = "SELECT * FROM material WHERE LOWER(titulo) LIKE LOWER('%"+texto+"%') AND tipo='Libro' ORDER BY titulo;";
            }
            if(filtro.equals("2")){
                query = "SELECT * FROM material WHERE LOWER(titulo) LIKE LOWER('%"+texto+"%') AND tipo='Periodico' ORDER BY titulo;";
            }
            if(filtro.equals("3")){
                query = "SELECT * FROM material WHERE LOWER(titulo) LIKE LOWER('%"+texto+"%') AND tipo='Revista' ORDER BY titulo;";
            }
            ResultSet rs = stat.executeQuery(query);
            while (rs.next()) {
                consulta += "<tr>";
                    consulta += "<th>" + rs.getString("idmat") + "</th>";
                    consulta += "<th>" + rs.getString("titulo") + "</th>";
                    consulta += "<th>" + rs.getString("autor") + "</th>";
                    consulta += "<th>" + rs.getString("genero") + "</th>";
                    consulta += "<th> $ " + rs.getString("precio") + "</th>";
                    consulta += "<th>"+
                                    " <a href=detalles.jsp?id=" + rs.getString("idmat") + ">"+
                                        "<i class=\"fas fa-plus-circle fa-2x green-text\"></i>"+
                                    "</a>"+
                                "</th>";
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
}
