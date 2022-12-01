<%-- 
    Document   : login
    Created on : 1/12/2022, 12:42:15 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <form action="action_page.php">
        <div class="container">
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Don Parrillas</title>
            </head>
            <header>
                <link rel="stylesheet" type="text/css" href="login.css" />
            </header>
            <body>
                <h1>¡Bienvenido al sistema de insumos Don Parrillas!</h1>
                <p>¡Inicia sesi&oacute;n por medio de tu cuenta Google!</p>
                <script src="https://accounts.google.com/gsi/client" async defer></script>
                <div id="g_id_onload"
                     data-client_id="1006245501087-5ff4f8i8g7av0l0pq07874ud9di2t6jn.apps.googleusercontent.com"
                     data-callback="redirect">
                </div>

                <div class="g_id_signin" data-type="standard"></div>

                <script>
                    function redirect() {
                        location.href = '/DonParrillasWeb/menuprincipal.jsp';
                    }
                </script>

            </body>
            </html>
