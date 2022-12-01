<%-- 
    Document   : altaInsumos
    Created on : 24/11/2022, 03:58:21 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <form action="action_page.php">
        <div class="container">

            <header>
                <meta charset=utf-8">
                <title>Dar de alta Insumos</title>
                <link rel="stylesheet" type="text/css" href="botones.css" />
            </header>

            <h1>Dar de Alta Insumos</h1>
            <p>Por favor llena este formato si deseas agregar un nuevo insumo.</p>
            <hr>

            <label for="text"> <b> ID </b></label>
            <input type="text" placeholder="Ingresa el id" name="id" id="id" required>

            <label for="text"> <b>Nombre</b></label>
            <input type="text" placeholder="Ingresa el nombre" name "nombre" id="nombre" required>

                   <label for="text"><b>N&uacute;mero de Insumos</b></label>
            <input type="number" name="insumo" id="insumo" required>

            <label for="text"><b>Categor&iacute;a </b></label>
            <select name="categorias">
                <option value="value1">Bebida</option>
                <option value="value2">Carne</option>
                <option value="value3">Verdura</option>
                <option value="value4">Condimentos</option>
                <option value="value5">Enlatados</option>
                <option value="value6">Tortillas</option>
                <option value="value7">Otros</option>
            </select>
            <hr>

            <button type="submit" class="registroInsumobtn">Registrar Insumo</button>
            <a href="menuprincipal.jsp" class="cancelarbtn">Cancelar</a>
        </div>

    </form>
</html>
