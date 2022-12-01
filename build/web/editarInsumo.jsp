<%-- 
    Document   : editarInsumo
    Created on : 24/11/2022, 04:12:14 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <form action="action_page.php"/
          <div class="container">
            <header>
                <meta charset=utf-8">
                <title>Editar Insumos</title>
                <link rel="stylesheet" type="text/css" href="botones.css" />
            </header>

            <h1>Editar Insumo</h1>
            <p>Por favor llena este formato si deseas editar un insumo existente.</p>
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

            <button type="submit" class="editarInsumobtn">Editar Insumo</button>
            <a href="menuprincipal.jsp" class="cancelarbtn">Cancelar</a>
        </div>
    </form> 
</html>
