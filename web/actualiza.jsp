<%-- 
    Document   : actualizar
    Created on : 6/04/2020, 12:53:26 PM
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
        <h2>Actualización de elementos </h2>
        <p>En esta tabla se muestran los diferentes materiales con los que cuenta esta biblioteca virtual. 
            Para actualizar un elemento hacer <b>click</b> en el <b>icono</b>.</p>
    </div>
    <%
        Model.accessDB  a = new Model.accessDB();
        Model.actualizar  c = new Model.actualizar();
        if(a.estaControlador()){
    %>  
        <div id="tabla">
            <table class="table table-striped" id="tbl-cons">
                <thead class="elegant-color white-text">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Título</th>
                        <th scope="col">Autor</th>
                        <th scope="col">Género</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Editar</th>
                    </tr>
                </thead>
                <tbody>
    <%
                    out.println(c.ejecutaConsulta());
    %>
                </tbody>
            </table>
        </div>
    <%
        }else{
    %>
        <div class="alert alert-danger" id="alertOk"  role="alert">
            <h4 class="alert-heading">¡Error al conectar!</h4>
            <p>No ha sido posible conectar con la base de datos.</p>
            <hr>
            <p class="mb-0">
                Intente más tarde o de <a href="welcome.jsp" class="alert-link">click aquí</a> para regresar.
            </p>
        </div>
        <center>
            <h2>Error en el servidor</h2>
            <i class="far fa-times-circle red-text fa-10x"></i>
        </center>
    <%
        }
    %>
<jsp:include page="Layouts/pie.jsp" />