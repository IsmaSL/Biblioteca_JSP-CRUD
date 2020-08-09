<%-- 
    Document   : consulta
    Created on : 24/03/2020, 09:12:02 PM
    Author     : Isma
--%>
<jsp:include page="Layouts/cabecera.jsp" />
<jsp:include page="Layouts/menu.jsp" />
    <div id="texto1">
        <h2>Lista de elementos</h2>
        <p>En esta tabla se muestran los diferentes materiales con los que cuenta esta biblioteca virtual.</p>
    </div>

    <%
        Model.accessDB  a = new Model.accessDB();
        Model.consultar  c = new Model.consultar();
        if(a.estaControlador()){
    %>  
        
        <div id="tabla">
            <form id="formBusq" class="form-inline" method="POST" action="busqueda.jsp">
                <div class="md-form">
                    <h5 class="mr-sm-4"><b>Búsqueda parametrizada:</b></h5>
                </div>
                <div class="md-form">
                    <input type="text" id="materialRegisterFormFirstName" class="form-control mr-sm-3" name="texto" required>
                    <label for="materialRegisterFormFirstName">Titulo del Material</label>
                </div>
                <div class="md-form">
                    <select class="browser-default custom-select  mr-sm-3" name="filtro" required>
                        <option value="" disabled selected>Buscar en...</option>
                        <option value="1">Libros</option>
                        <option value="2">Periódicos</option>
                        <option value="3">Revistas</option>
                    </select>
                </div>
                <div class="md-form">
                    <button type="submit" class="btn btn-success"><i class="fas fa-search fa-lg"></i> </button>     
                </div>
            </form>
            <table class="table table-striped" id="tbl-cons">
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
                Intente más tarde o de <a href="index.jsp" class="alert-link">click aquí</a> para regresar.
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