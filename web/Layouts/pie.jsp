<%-- 
    Document   : pie
    Created on : 24/03/2020, 06:12:31 PM
    Author     : Isma
--%>
<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("s1")!=null){
%>
        <!-- Footer -->
        <footer class="page-footer font-small indigo darken-4 pt-4">
            <!-- Footer Links  -->
            <div class="container-fluid text-center text-md-left">
                <!-- Grid row -->
                <div class="row">
                    <div class="col-md-6 mt-md-0 mt-3">
                        <!-- Content -->
                        <h5 class="text-uppercase">Arquitectura de Software para la Web</h5>
                        <p>Usa estos enlaces para acceder a las diferentes funciones la página.</p>
                    </div>
                    <!-- Grid column -->
                    <hr class="clearfix w-100 d-md-none pb-3">
                    <!-- Grid column -->
                    <div class="col-md-3 mb-md-0 mb-3">
                        <h5 class="text-uppercase">Enlaces</h5>
                        <ul class="list-unstyled">
                            <li>
                                <a href="welcome.jsp">Inicio</a>
                            </li>
                            <li>
                                <a href="consulta.jsp">Consultar</a>
                            </li>
                            <li>
                                <a href="inserta.jsp">Insertar</a>
                            </li>
                            <li>
                                <a href="actualiza.jsp">Actualizar</a>
                            </li>
                            <li>
                                <a href="elimina.jsp">Eliminar</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3 mb-md-0 mb-3">
                        <h5 class="text-uppercase">Enlaces Externos</h5>

                        <ul class="list-unstyled">
                            <li>
                                <a href="#!"><i class="fab fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#!"><i class="fab fa-google-plus-square"></i></a>
                            </li>
                            <li>
                                <a href="#!"><i class="fab fa-twitter-square"></i></a>
                            </li>
                            <li>
                                <a href="#!"><i class="fab fa-github"></i></a>
                            </li>
                            <li>
                                <a href="#!"><i class="far fa-paper-plane"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-copyright text-center py-3">© 2020 Copyright:
                <a href="#"> ISL</a>
            </div>
        </footer>
<%
    }else{
%>
        <footer class="page-footer font-small indigo darken-4 py-4">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 d-flex justify-content-start">
                        <div class="footer-copyright text-center bg-transparent">© 2020 Copyright:
                            <a href="#"> ISL</a>
                        </div>
                    </div>
                    <div class="col-md-6 d-flex justify-content-end">
                        <ul class="list-unstyled d-flex mb-0">
                            <li>
                                <a class="mr-3" role="button"><i class="fab fa-facebook-f"></i></a>
                            </li>
                            <li>
                                <a class="mr-3" role="button"><i class="fab fa-twitter"></i></a>
                            </li>
                            <li>
                                <a class="mr-3" role="button"><i class="fab fa-instagram"></i></a>
                            </li>
                            <li>
                                <a class="" role="button"><i class="fab fa-youtube"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
<%
    }
%>
    </body>
</html>
