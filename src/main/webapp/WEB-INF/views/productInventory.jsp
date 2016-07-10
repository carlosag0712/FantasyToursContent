<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>




<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Inventario de paquetes</h1>
            <p class="lead">Paquetes disponibles</p>
        </div>

        <table class="table table-stripped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Foto</th>
                <th>Nombre del Paquete</th>
                <th>Tipo de Paquete</th>
                <th>Linea Aerea</th>
                <th>Precio</th>
                <th>Herramientas</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100% "/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value ="/product/viewProduct/${product.productId}"/>" ><span class="glyphicon glyphicon-info-sign"> </span> </a>
                        <a href="<spring:url value ="/admin/product/deleteProduct/${product.productId}"/>" ><span class="glyphicon glyphicon-remove"> </span> </a>
                        <a href="<spring:url value ="/admin/product/editProduct/${product.productId}"/>" ><span class="glyphicon glyphicon-pencil"> </span> </a>

                    </td>


                </tr>
            </c:forEach>


        </table>

        <a href="<spring:url value="/admin/product/addProduct"/>" class="btn btn-primary">Agregar Paquete</a>




<%@include file="/WEB-INF/views/template/footer.jsp"%>