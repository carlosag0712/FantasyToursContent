
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>




<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Editar Paquete</h1>
            <p class="lead">Por favor actualize la informacion de paquete</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product" enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}" />

        <div class="form-group">
            <label for="name">Nombre del Paquete</label>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
        </div>

        <div class="form-group">
            <label for="category">Categoria</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="shopping"/>Shopping - Vestido de Novia</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="LunaMiel"/>Luna de Miel</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="Anniversario"/>Anniversario</label>
        </div>

        <div class="form-group">
            <label for="description">Descripcion</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
        </div>

        <div class="form-group">
            <label for="price">Precio</label>
            <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/>
        </div>


        <div class="form-group">
            <label for="condition">Linea Aerea</label>
            <form:input path="productCondition" id="condition" class="form-Control" />

        </div>


        <%--<div class="form-group">--%>
            <%--<label for="status">Status</label>--%>
            <%--<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"--%>
                                                             <%--value="active"/> Active</label>--%>
            <%--<label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"--%>
                                                             <%--value="inactive"/> Inactive</label>--%>

        <%--</div>--%>

        <%--<div class="form-group">--%>
            <%--<label for="unitInStock">Units In Stock</label>--%>
            <%--<form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>--%>
        <%--</div>--%>


        <%--<div class="form-group">--%>
            <%--<label for="manufacturer">Manufacturer</label>--%>
            <%--<form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>--%>
        <%--</div>--%>

        <div class="form-group">
            <label class for="control-label" for="productImage">Agrege Imagen</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>



        </div>

        <br><br>
        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>


        </form:form>








<%@include file="/WEB-INF/views/template/footer.jsp"%>