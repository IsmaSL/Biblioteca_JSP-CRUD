<%-- 
    Document   : ctrlElimina
    Created on : 8/04/2020, 10:00:11 PM
    Author     : Isma
--%>
<jsp:include page="Layouts/cabecera.jsp" />
<jsp:include page="Layouts/menu.jsp" />
<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("s1")==null){
        response.sendRedirect("index.jsp");
    }
%>
    <div id="texto1">
        <h1>Resultado de la insercion</h1>
    </div>
<%
    String id = request.getParameter("id");
    Model.accessDB  a = new Model.accessDB();
    Model.eliminar e = new Model.eliminar();
    if(a.estaControlador()){
        out.println(e.Eliminacion(id));
    }else{
%>
        <div class="alert alert-danger" id="alertOk"  role="alert">
            <h4 class="alert-heading">¡Error al conectar!</h4>
            <p>No ha sido posible conectar con la base de datos.</p>
            <hr>
            <p class="mb-0">
                Espere 5 segundos y será redirigido a la página de inicio o de <a href="welcome.jsp" class="alert-link">click aquí</a>.
            </p>
        </div>
<%
    }           
%>
    <script>
            setTimeout(function(){
                window.location.href = "elimina.jsp";
            }, 6 * 1000);
    </script>
<jsp:include page="Layouts/pie.jsp" />