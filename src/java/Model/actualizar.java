package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author Isma
 */
public class actualizar {

    public String ejecutaConsulta() {
        String consulta = "";
        Connection conn = null;

        try {
            //conn = DriverManager.getConnection("jdbc:postgresql://node53288-bdigital-ito.jl.serv.net.mx:5432/bibliotecadb", "webadmin", "HLDxri66718");
            //conn = DriverManager.getConnection("jdbc:postgresql://192.168.5.180:5432/bibliotecadb", "webadmin", "HVVhkn89154");
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
                                    "<a href=formEdit.jsp?id="+rs.getString("idmat")+">"+
                                        "<i class=\"fas fa-pen-square fa-2x yellow-text\"></i>"+
                                    "</a>"+
                                "</th>";
                consulta += "</tr>";
                conn.close();                
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
    
    public String extraccion(String id) {
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
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("select * from material where idmat="+id);
            while(rs.next()){
                String idmat = rs.getString("idmat");
                String titulo = rs.getString("titulo");
                String autor = rs.getString("autor");
                String genero = rs.getString("genero");
                String editorial = rs.getString("editorial");
                String npag = rs.getString("npag");
                String precio = rs.getString("precio");
                String entrega = rs.getString("tmpentrega");
                String tipo = rs.getString("tipo");
                //
                consulta += "<div>";
                consulta +=     "<input type=\"hidden\" name=\"id\" value=\""+idmat+"\" readonly>";
                consulta += "</div>";
                consulta += "<div class=\"form-row\">";
                consulta +=     "<div class=\"col\">";
                consulta +=         "<div class=\"md-form\">";
                consulta +=             "<input type=\"text\" id=\"materialRegisterFormFirstName\" class=\"form-control\" name=\"titulo\" value=\""+titulo+"\" required>";
                consulta +=             "<label for=\"materialRegisterFormFirstName\">Título</label>";
                consulta +=         "</div>";
                consulta +=     "</div>";
                consulta +=     "<div class=\"col\">";
                consulta +=         "<div class=\"md-form\">";
                consulta +=             "<input type=\"text\" id=\"materialRegisterFormLastName\" class=\"form-control\" name=\"autor\" value=\""+autor+"\" required>";
                consulta +=             "<label for=\"materialRegisterFormLastName\">Autor</label>";
                consulta +=         "</div>";
                consulta +=     "</div>";
                consulta += "</div>";
                consulta += "<div class=\"md-form mt-0\">";
                consulta +=     "<span>Género</span>";
                consulta +=     "<select class=\"browser-default custom-select\" name=\"genero\" required>";
                consulta +=         "<option value=\""+genero+"\" selected>"+genero+"</option>";
                consulta +=         "<option value=\"Aventura\">Aventura</option>";
                consulta +=         "<option value=\"Ciencia\">Ciencia</option>";
                consulta +=         "<option value=\"Documental\">Documental</option>";
                consulta +=         "<option value=\"Fantastico\">Fantástico</option>";
                consulta +=         "<option value=\"Farandula\">Farandula</option>";
                consulta +=         "<option value=\"Ficcion\">Ficción</option>";
                consulta +=         "<option value=\"Informativo\">Informativo</option>";
                consulta +=         "<option value=\"Miedo\">Miedo</option>";
                consulta +=         "<option value=\"Romance\">Romance</option>";
                consulta +=         "<option value=\"Suspenso\">Suspenso</option>";
                consulta +=         "<option value=\"Tecnologia\">Tecnología</option>";
                consulta +=     "</select>";
                consulta += "</div>";
                consulta += "<div class=\"md-form mt-0\">";
                consulta +=     "<input type=\"text\" id=\"materialRegisterFormEmail\" class=\"form-control\" name=\"editorial\" value=\""+editorial+"\" required>";
                consulta +=     "<label for=\"materialRegisterFormEmail\">Editorial</label>";
                consulta += "</div>";
                consulta += "<div class=\"form-row\">";
                consulta +=     "<div class=\"col\">";
                consulta +=         "<div class=\"md-form\">";
                consulta +=             "<input type=\"number\" id=\"materialRegisterFormFirstName\" ";
                consulta +=                    "min=\"0\" max=\"5000\" class=\"form-control\" name=\"paginas\" value=\""+npag+"\" required>";
                consulta +=             "<label for=\"materialRegisterFormFirstName\">Páginas</label>";
                consulta +=         "</div>";
                consulta +=     "</div>";
                consulta +=     "<div class=\"col\">";
                consulta +=         "<div class=\"md-form\">";
                consulta +=             "<input type=\"number\" id=\"materialRegisterFormLastName\" ";
                consulta +=                    "min=\"0\" max=\"5000\" class=\"form-control\" name=\"precio\" value=\""+precio+"\" required>";
                consulta +=             "<label for=\"materialRegisterFormLastName\">Precio</label>";
                consulta +=         "</div>";
                consulta +=     "</div>";
                consulta += "</div>";
                consulta += "<div class=\"form-row\">";
                consulta +=     "<div class=\"col\">";
                consulta +=         "<div class=\"md-form\">";
                consulta +=             "<input type=\"text\" id=\"materialRegisterFormFirstName\" class=\"form-control\" name=\"entrega\" value=\""+entrega+"\" required>";
                consulta +=             "<label for=\"materialRegisterFormFirstName\">Tiempo Entrega</label>";
                consulta +=         "</div>";
                consulta +=     "</div>";
                consulta +=     "<div class=\"col\">";
                consulta +=         "<div class=\"md-form\">";
                consulta +=             "<select class=\"browser-default custom-select mb-4\" name=\"tipo\" required>";
                consulta +=                 "<option value=\""+tipo+"\" selected>"+tipo+"</option>";
                consulta +=                 "<option value=\"Libro\">Libro</option>";
                consulta +=                 "<option value=\"Periodico\">Periódico</option>";
                consulta +=                 "<option value=\"Revista\">Revista</option>";
                consulta +=             "</select>";
                consulta +=         "</div>";
                consulta +=     "</div>";
                consulta += "</div>";
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
    
    public String ejecutaActualizar(String id,String tit,String aut,String gen,String edi,String pag,String pre,String ent,String tip) {
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
            String query = "UPDATE material SET "
                         + "titulo='"+tit+"', autor='"+aut+"', genero='"+gen+"', editorial='"+edi+"', precio='"+pre+"', tmpentrega='"+ent+"', npag='"+pag+"', tipo='"+tip+"' "
                         + "WHERE idmat="+id+";";
            int val = stat.executeUpdate(query);
            
            if(val==1){
                consulta += "<div class=\"alert alert-success\" id=\"alertOk\"  role=\"alert\">"+
                                "<h4 class=\"alert-heading\">¡Actualización correcta!</h4>"+
                                "<p>Felicidades, has actualizado el elemento seleccionado.</p>"+
                                "<hr>"+
                                "<p class=\"mb-0\">Espere 5 segundos y será redirigido a la página anterior o de "+
                                "<a href=\"actualiza.jsp\" class=\"alert-link\">click aquí</a>.</p>"+
                            "</div>";
            }else{
                consulta += "<div class=\"alert alert-danger\" id=\"alertOk\"  role=\"alert\">"+
                                "<h4 class=\"alert-heading\">¡Error en la actualización!</h4>"+
                                "<p>No se ha podido realizar la actualización.</p>"+
                                "<hr>"+
                                "<p class=\"mb-0\">Espere 5 segundos y será redirigido a la página anterior o de "+
                                "<a href=\"actualiza.jsp\" class=\"alert-link\">click aquí</a>.</p>"+
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