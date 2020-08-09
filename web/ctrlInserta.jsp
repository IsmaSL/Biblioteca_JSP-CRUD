<%-- 
    Document   : ctrlInserta
    Created on : 6/04/2020, 06:48:06 PM
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
    String tit= request.getParameter("titulo");
    String aut= request.getParameter("autor");
    String gen= request.getParameter("genero");    
    String edi= request.getParameter("editorial");
    String pag= request.getParameter("paginas"); 
    String pre= request.getParameter("precio");
    String ent= request.getParameter("entrega");
    String tip= request.getParameter("tipo");

    Model.accessDB  a = new Model.accessDB();
    Model.insertar i= new Model.insertar();

    if(tit == "" || tit == null || aut == "" || aut == null || gen == "" || gen == null || edi == "" || edi == null ||
       pag == "" || pag == null || pre == "" || pre == null || ent == "" || ent == null || tip == "" || tip == null){
%>
        <div class="alert alert-danger" id="alertError" role="alert">
            Algunos campos estan vancios, comprueba la informacion. Espere 5 segundos y será redirigido al formulario o de 
            <a href="inserta.jsp" class="alert-link">click aquí</a>.
        </div>
<%
    }else{
        if(a.estaControlador()){
            String res =  i.ejecutaInsertar(tit, aut, gen, edi, pag, pre, ent, tip);
            out.println(res);
        }else{
%>
        <div class="alert alert-danger" id="alertOk"  role="alert">
            <h4 class="alert-heading">¡Error al conectar!</h4>
            <p>No ha sido posible conectar con la base de datos.</p>
            <hr>
            <p class="mb-0">Espere 5 segundos y será redirigido a la página de inicio o de 
            <a href="welcome.jsp" class="alert-link">click aquí</a>.</p>
        </div>
<%
        }
    }
%>
<script>
    setTimeout(function(){
        window.location.href = "inserta.jsp";
    }, 6 * 1000);
</script>
<jsp:include page="Layouts/pie.jsp" />