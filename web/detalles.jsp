<%-- 
    Document   : detalles
    Created on : 13/04/2020, 06:44:27 PM
    Author     : Isma
--%>
<jsp:include page="Layouts/cabecera.jsp" />
<jsp:include page="Layouts/menu.jsp" />
    <div id="texto1">
        <h1><a href="consulta.jsp" title="Regresar"><i class="fas fa-arrow-circle-left fa-lg cyan-text"></i></a> Detalles del material</h1>
    </div>
    <%
        String id = request.getParameter("id");
        Model.accessDB  a = new Model.accessDB();
        Model.consultar  c = new Model.consultar();
        if(a.estaControlador()){
            String cad = c.detalles(id);
            if(cad.isEmpty()){
    %>
                <div class="alert alert-danger" id="alertOk"  role="alert">
                    <h4 class="alert-heading">¡Elemento no encontrado!</h4>
                    <p>No ha sido posible encontrar el elemento requerido.</p>
                    <hr>
                    <p class="mb-0">
                        Espere 5 segundos o de <a href="consulta.jsp" class="alert-link">click aquí</a> para regresar.
                    </p>
                </div>
                <script>
                        setTimeout(function(){
                            window.location.href = "consulta.jsp";
                        }, 6 * 1000);
                </script>
    <%
            }else{
    %>
                <table class="table table-striped " id="tbl-detail">
                <thead class="elegant-color white-text">
                    <tr>
                        <th scope="col">Campo</th>
                        <th scope="col">Descripción</th>
                    </tr>
                </thead>
                <tbody>
    <%
                        out.println(cad);
    %>
                </tbody>
            </table>
    <%
            }
        }else{
    %>
            <div class="alert alert-danger" id="alertOk"  role="alert">"+
                <h4 class="alert-heading">¡Error al conectar!</h4>"+
                <p>No ha sido posible conectar con la base de datos.</p>"+
                <hr>
                <p class="mb-0">
                    Para regresar a la página anterior de <a href="index.jsp" class="alert-link">click aquí</a>.
                    O espere 5 segundos.
                </p>
            </div>
            <script>
                    setTimeout(function(){
                        window.location.href = "elimina.jsp";
                    }, 6 * 1000);
            </script>
    <%
        }           
    %>
<jsp:include page="Layouts/pie.jsp" />