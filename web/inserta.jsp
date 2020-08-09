<%-- 
    Document   : insertar
    Created on : 6/04/2020, 02:28:28 PM
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
    <h2>Agregar un nuevo material</h2>
    <p>Aquí puedes añadir un nuevo elemento a la biblioteca virtual.</p>
</div>
<div class="card" id="insert" >
    <h5 class="card-header success-color white-text text-center py-4">
        <strong>Registro</strong>
    </h5>
    <div class="card-body px-lg-5 pt-0" >
        <form class="text-center" style="color: #757575;" action="ctrlInserta.jsp" method="POST">
            <div class="form-row">
                <div class="col">
                    <div class="md-form">
                        <input type="text" id="materialRegisterFormFirstName" class="form-control" name="titulo" required>
                        <label for="materialRegisterFormFirstName">Título</label>
                    </div>
                </div>
                <div class="col">
                    <div class="md-form">
                        <input type="text" id="materialRegisterFormLastName" class="form-control" name="autor" required>
                        <label for="materialRegisterFormLastName">Autor</label>
                    </div>
                </div>
            </div>
            <div class="md-form mt-0">
                <span>Género</span>
                <select class="browser-default custom-select" name="genero" required>
                    <option value="" disabled selected>Elija un Género...</option>
                    <option value="Aventura">Aventura</option>
                    <option value="Ciencia">Ciencia</option>
                    <option value="Documental">Documental</option>
                    <option value="Fantastico">Fantástico</option>
                    <option value="Farandula">Farandula</option>
                    <option value="Ficcion">Ficción</option>
                    <option value="Informativa">Informativa</option>
                    <option value="Miedo">Miedo</option>
                    <option value="Romance">Romance</option>
                    <option value="Suspenso">Suspenso</option>
                    <option value="Tecnologia">Tecnología</option>
                </select>
            </div>
            <div class="md-form mt-0">
                <input type="text" id="materialRegisterFormEmail" class="form-control" name="editorial" required>
                <label for="materialRegisterFormEmail" >Editorial</label>
            </div>
            <!---->
            <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                        <input type="number" id="materialRegisterFormFirstName" 
                               min="0" max="5000" class="form-control" name="paginas" required>
                        <label for="materialRegisterFormFirstName">Páginas</label>
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                        <input type="number" id="materialRegisterFormLastName" 
                               min="0" max="5000" class="form-control" name="precio" required>
                        <label for="materialRegisterFormLastName">Precio</label>
                    </div>
                </div>
            </div>
            <!---->
            <div class="form-row">
                <div class="col">
                    <!-- First name -->
                    <div class="md-form">
                        <input type="text" id="materialRegisterFormFirstName" class="form-control" name="entrega" required>
                        <label for="materialRegisterFormFirstName">Tiempo Entrega</label>
                    </div>
                </div>
                <div class="col">
                    <!-- Last name -->
                    <div class="md-form">
                        <select class="browser-default custom-select mb-4" name="tipo" required>
                            <option value="" disabled selected>Elija un Tipo...</option>
                            <option value="Libro">Libro</option>
                            <option value="Periodico">Periodico</option>
                            <option value="Revista">Revista</option>
                        </select>
                    </div>
                </div>
            </div>
            <button class="btn btn-outline-success btn-rounded btn-block my-4 waves-effect z-depth-0"
                    id="botonRegistro" type="submit">Guardar <i class="fas fa-save fa-lg"></i></button>
        </form>
    </div>
</div>
<jsp:include page="Layouts/pie.jsp" />