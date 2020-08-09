<%-- 
    Document   : end
    Created on : 15/04/2020, 01:45:22 AM
    Author     : Isma
--%>
<jsp:include page="Layouts/cabecera.jsp" />
<jsp:include page="Layouts/menu.jsp" />
<%
    HttpSession sesion = request.getSession();
    sesion.invalidate();
%>
<div class="my-5 py-5">
    <section class="text-center px-md-5 mx-md-5 dark-grey-text">
        <i class="fas fa-grin yellow-text fa-6x"></i>
        <h3 class="font-weight-bold">Gracias por tu visita</h3>
        <p>¡Esperamos que vuelvas pronto!</p>
        <hr style="width: 15%;">
        <spam>En breve serás redirigido.</spam>
    </section>
</div>
<script>
    setTimeout(function(){
        window.location.href = "index.jsp";
    }, 3 * 1000);
    history.forward();
</script>
<jsp:include page="Layouts/pie.jsp" />