<%-- 
    Document   : formEdit
    Created on : 9/04/2020, 10:09:21 PM
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
    <h2>Actualización material</h2>
    <p>Aquí puedes añadir un nuevo elemento a la biblioteca virtual.</p>
</div>
<!-- Material form register -->
<div class="card" id="insert" >
    <h5 class="card-header warning-color white-text text-center py-4">
        <strong>Registro</strong>
    </h5>
    <!--Card content-->
    <div class="card-body px-lg-5 pt-0" >
        <!-- Form -->
        <%
            String id = request.getParameter("id");
            Model.accessDB  ac = new Model.accessDB();
            Model.actualizar  a = new Model.actualizar();
            if(ac.estaControlador()){
        %>
                <form class="text-center" style="color: #757575;" action="ctrlActualiza.jsp" method="POST">
        <%
                    String res =  a.extraccion(id);
                    out.println(res);
        %>
                    <!-- Boton de registro -->
                    <button class="btn btn-outline-warning btn-rounded btn-block my-4 waves-effect z-depth-0" id="botonRegistro" type="submit">Guardar <i class="fas fa-save fa-lg"></i></button>
                </form>
        <%
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
            <!-- Form -->
    </div>
</div>
<!-- Material form register -->
<jsp:include page="Layouts/pie.jsp" />
