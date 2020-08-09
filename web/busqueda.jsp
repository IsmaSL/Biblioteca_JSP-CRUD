<%-- 
    Document   : busqueda
    Created on : 14/04/2020, 01:29:32 AM
    Author     : Isma
--%>
<jsp:include page="Layouts/cabecera.jsp" />
<jsp:include page="Layouts/menu.jsp" />
    <div id="texto1">
        <h1><a href="consulta.jsp" title="Regresar"><i class="fas fa-arrow-circle-left fa-lg cyan-text"></i></a>  Resultados de la búsqueda:</h1>
        <p>Se muestra un resumen de los resultados que coinciden con el criterio de búsqueda; dichos resultados se muestran en orden alfabético. 
            Para obtener más detalles del elementos sólo necesita hacer click en el ícono de la columna <b>+ Info</b></p>
    </div>
    <%
        Model.accessDB  a = new Model.accessDB();
        Model.consultar  c = new Model.consultar();
        if(a.estaControlador()){
            String texto = request.getParameter("texto");
            String filtro = request.getParameter("filtro");
            String cad = c.buscar(texto, filtro);
            if(cad.isEmpty()){
    %>
                <div class="alert alert-danger" id="alertOk"  role="alert">
                    <h4 class="alert-heading">¡Elemento no encontrado!</h4>
                    <p>No ha sido posible encontrar el elemento requerido.</p>
                    <hr>
                    <p class="mb-0">
                        Espere 10 segundos o de <a href="consulta.jsp" class="alert-link">click aquí</a> para regresar.
                    </p>
                </div>
                <script>
                        setTimeout(function(){
                            window.location.href = "consulta.jsp";
                        }, 10 * 1000);
                </script>
    <%
            }else{
    %>
                <table class="table table-striped " id="tbl-res">
                <thead class="elegant-color white-text">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Título</th>
                        <th scope="col">Autor</th>
                        <th scope="col">Género</th>
                        <th scope="col">Precio</th>
                        <th scope="col">+ Info</th>
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
