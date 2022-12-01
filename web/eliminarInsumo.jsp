<%-- 
    Document   : eliminarInsumo
    Created on : 24/11/2022, 04:12:54 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <form action="action_page.php">
        <div class="container">

            <header>
                <meta charset=utf-8">
                <title>Eliminar Insumos</title>
                <link rel="stylesheet" type="text/css" href="botones.css" />
            </header>

            <h1>Eliminar Insumos</h1>
            <p>Por favor seleccione el insumo que desee eliminar de la lista</p>
            <hr>

            <label for="text"> <b>Insumo a eliminar:</b></label>
            <br>
            <select name="insumosEliminar">
                <option value="value1"></option>
                <option value="value2"></option>
                <option value="value3"></option>
                <option value="value4"></option>
                <option value="value5"></option>
                <option value="value6"></option>
                <option value="value7"></option>
            </select>

            <hr>

            <button type="submit" class="eliminarInsumobtn">Eliminar Insumo</button>
            <a href="menuprincipal.jsp" class="cancelarbtn">Cancelar</a>
        </div>

    </form>
</html>
