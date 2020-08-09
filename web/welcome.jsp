<%-- 
    Document   : welcome
    Created on : 11/04/2020, 07:21:59 PM
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
<div class="py-2">
    <section>
        <div class="card-body mb-4">
            <div class="row">
                <div class="col-md-6">
                    <img src="https://mdbootstrap.com/img/Photos/Others/project4.jpg" class="img-fluid" alt="Sample project image">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
                <div class="col-md-6 align-self-center">
                    <h5 class="font-weight-normal mb-3">Detalles del Proyecto</h5>
                    <p class="text-muted">
                        Este es el proyecto de <b>Evaluación de la Unidad 2</b> realizado por estudiantes del <b>Instituto Tecnológico de Orizaba</b>, 
                        donde se aplican los conocimientos necesarios para hacer uso del patrón Modelo, Vista, Controlador (MVC) y aplicarlo a una
                        aplicación web (basada en java) con las <b>funciones de un CRUD</b> para la administración de una <b>Biblioteca Digital</b>.
                    </p>
                    <ul class="list-unstyled font-small mt-5 mb-0">
                        <li>
                            <p class="text-uppercase mb-2"><strong>Materia</strong></p>
                            <p class="text-muted mb-4">Ingeniería de Software para la Web</p>
                        </li>
                        <li>
                            <p class="text-uppercase mb-2"><strong>Fecha</strong></p>
                            <p class="text-muted mb-4">Abril 20, 2020</p> 
                        </li>
                        <li>
                            <p class="text-uppercase mb-2"><strong>Herramientas</strong></p>
                            <p class="text-muted mb-4">MVC, HTML, CSS, Java, Javascript</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</div>
<!---->
<div class="container my-3 py-3">
    <section class=" dark-grey-text text-center">
      <div class="row d-flex justify-content-center">
        <div class="col-lg-8">
          <div class="row">
            <div class="col-md-3 col-6 mb-4">
                <i class="fas fa-laptop fa-3x blue-text"></i>
            </div>
            <div class="col-md-3 col-6 mb-4">
                <i class="fas fa-code fa-3x teal-text"></i>
            </div>
            <div class="col-md-3 col-6 mb-4">
                <i class="fas fa-code-branch fa-3x indigo-text"></i>
            </div>
            <div class="col-md-3 col-6 mb-4">
                <i class="fas fa-cloud-upload-alt fa-3x cyan-text"></i>
            </div>
          </div>
          <p>
              JSP es un acrónimo de Java Server Pages, en español, Páginas de Servidor Java. Es una tecnología orientada a crear páginas web 
              con programación en Java. Con JSP podemos crear aplicaciones web que se ejecuten en variados servidores web, de múltiples plataformas, 
              ya que Java es en esencia un lenguaje multiplataforma. Las páginas JSP están compuestas de código HTML/XML mezclado con etiquetas 
              especiales para programar scripts de servidor en sintaxis Java.
          </p>
        </div>
      </div>
    </section>
</div>

<div class="container my-5">
    <section class="team-section text-center dark-grey-text">
        <h3 class="font-weight-bold pb-2 mb-4">Nuestro asombroso equipo</h3>
        <p class="text-muted w-responsive mx-auto mb-5">
            Este proyecto fue desarrollado por un estudiante de la carrera <b>Ing. Sistemas Computacionales</b>, cursando el octavo semestre de la misma.
        </p>
        <div class="row text-center text-md-left">
            <div class="col-lg-3"></div>
            <div class="col-lg-6 mb-5 d-md-flex justify-content-between">
                <div class="avatar mb-md-0 mb-4 mx-4">
                    <span class="card-img-100 d-inline-flex justify-content-center align-items-center rounded-circle grey lighten-3 mr-4">
                        <i class="far fa-user fa-2x blue-text"></i>
                    </span>
                </div>
                <div class="mx-4">
                    <h4 class="font-weight-bold mb-3">Ismael Santarrosa</h4>
                    <h6 class="font-weight-bold grey-text mb-3">Web Developer</h6>
                    <p class="grey-text">Estudiante de la Ing, Sistemas Computacionales del Instituto Tecnológico de Orizaba.</p>
                    <a class="p-2 fa-lg fb-ic" href="https://www.facebook.com/IsmaSL7w7" target="_blanck">
                        <i class="fab fa-facebook-f"> </i>
                    </a>
                    <a class="p-2 fa-lg gplus-ic">
                        <i class="fab fa-google-plus-g"> </i>
                    </a>
                    <a class="p-2 fa-lg email-ic">
                        <i class="fas fa-envelope"> </i>
                    </a>
                </div>
            </div>
            <div class="col-lg-3"></div>
        </div>
    </section>
</div>
<!---->
<div>
    <section class="p-5  text-center" 
      style="background-image: url(https://mdbootstrap.com/img/Photos/Others/background2.jpg); background-size: cover; background-position: center center;">
      <h3 class="text-center font-weight-bold text-white mt-5 mb-3">Envíe sus comentarios</h3>
      <h4 class="text-center font-weight-normal text-white mx-auto mb-4 pb-2">¡Nos encantará escucharlo!</h4>
        <form class="mb-5 mx-md-5" action="">
            <div class="row">
                <div class="col-md-4 mb-4">
                    <input type="text" id="name" class="form-control" placeholder="Nombre">
                </div>
                <div class="col-md-4 mb-4">
                    <input type="email" id="email" class="form-control" placeholder="Email">
                </div>
                <div class="col-md-4 mb-4">
                    <input type="text" id="subject" class="form-control" placeholder="Tema">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group mb-4">
                        <textarea class="form-control rounded" id="message" rows="3" placeholder="¿Cómo podemos ayudarlo? Escriba aquí sus comentarios..."></textarea>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-elegant">Enviar</button>
                    </div>
                </div>
            </div>
        </form>
    </section>
</div>
<jsp:include page="Layouts/pie.jsp" />
