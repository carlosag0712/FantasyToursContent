
<%@include file="/WEB-INF/views/template/header.jsp"%>




<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administracion de Paquetes</h1>

            <p class="lead">Aqui Administramos nuestros paquetes</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Bienvenido: ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout"/> ">Salir</a>

        </h2>


        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory"/> "> Inventario de Paquetes </a>

        </h3>

        <p> Aqui puedes crear nuevos paquetes para Fantasy tours</p>




<%@include file="/WEB-INF/views/template/footer.jsp"%>