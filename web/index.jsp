<%-- 
    Document   : insertar
    Created on : 6/04/2020, 02:28:28 PM
    Author     : Isma
--%>
<jsp:include page="Layouts/cabecera.jsp" />
<jsp:include page="Layouts/menu.jsp" />
    <form class="text-center border border-light p-5" id="formLogin" action="ctrlLogin" method="POST">
        <p class="h4 mb-4 indigo-text">Iniciar Sesión</p>
        <input type="text" name="usuario" id="defaultLoginFormEmail" class="form-control mb-4" placeholder="Usuario">
        <input type="password" name="contra" id="defaultLoginFormPassword" class="form-control mb-4" placeholder="Contraseña">
        <div class="d-flex justify-content-around">
            <div>
                <div class="custom-control custom-checkbox">
                    <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember">
                    <label class="custom-control-label" for="defaultLoginFormRemember">Recuerdame</label>
                </div>
            </div>
            <div>
                <a href="">Olvidaste la contraseña?</a>
            </div>
        </div>
        <button name="btn" id="botonLogin" class="btn blue-gradient btn-block my-4" type="submit">Entrar <i class="fas fa-arrow-alt-circle-right"></i></button>
        <p>¿Aún no estás Registrado?
            <a href="">¡Hazlo ahora!</a>
        </p>
    </form>
    <%
        Model.accessDB  a = new Model.accessDB();
        if(a.estaControlador()){
            if(request.getAttribute("v")!=null){
                if(request.getAttribute("v")=="1"){   
                    HttpSession sesion = request.getSession();
                    sesion.setAttribute("s1",request.getAttribute("log"));
                    response.sendRedirect("welcome.jsp");
                }else{
    %>
                    <div class="alert alert-danger" id="alert"  role="alert">
                        <h4 class="alert-heading">¡Credenciales incorrectas!</h4>
                        <p>No se pudo encontrar el usuario, vuelva a intentarlo.</p>
                    </div>
    <%
                }
            }
        }else{
    %>
        <div class="alert alert-danger" id="alert" role="alert">
            <h4 class="alert-heading">¡Error al conectar!</h4>
            <p>Por el momento estamos fuera de servicio. Disculpe las molestias.</p>
        </div>
    <%       
        }
    %>
<jsp:include page="Layouts/pie.jsp" />