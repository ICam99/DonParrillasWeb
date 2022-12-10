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
                <% 
                    HttpSession misession= (HttpSession) request.getSession();
                    
                    if (misession.isNew()) {
                           misession.setAttribute("ajax", false); 
                        }
                        boolean colas=(boolean)misession.getAttribute("ajax");
                        if (!colas) {
                             response.sendRedirect("Ajax.jsp");   
                            }else{
                            
                    }
                    %>
                <div id="fb-root"></div>
                <script async defer crossorigin="anonymous" src="https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v15.0&appId=565369665420359&autoLogAppEvents=1" nonce="mLHtsJDc"></script>

                <h1>¡Bienvenido al sistema de insumos Don Parrillas!</h1>
                <p>¡Inicia sesi&oacute;n por medio de tu cuenta Google!</p>
                <script src="https://accounts.google.com/gsi/client" async defer></script>
                <div id="g_id_onload"
                     data-client_id="1006245501087-5ff4f8i8g7av0l0pq07874ud9di2t6jn.apps.googleusercontent.com"
                     data-callback="onSignInGoogle">
                </div>

                <div class="g_id_signin" data-type="standard"></div>

                <p>O, inicia sesi&oacute;n por medio de tu cuenta Facebook</p>
                <script>

                    function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
                        console.log('statusChangeCallback');
                        console.log(response);                   // The current login status of the person.
                        if (response.status === 'connected') {   // Logged into your webpage and Facebook.
                            testAPI();
                        } else {                                 // Not logged into your webpage or we are unable to tell.
                            document.getElementById('status').innerHTML = 'Please log ' +
                                    'into this webpage.';
                        }
                    }


                    function checkLoginState() {               // Called when a person is finished with the Login Button.
                        FB.getLoginStatus(function (response) {   // See the onlogin handler
                            statusChangeCallback(response);
                        });
                    }


                    window.fbAsyncInit = function () {
                        FB.init({
                            appId: '565369665420359',
                            cookie: true, // Enable cookies to allow the server to access the session.
                            xfbml: true, // Parse social plugins on this webpage.
                            version: 'v15.0'           // Use this Graph API version for this call.
                        });


                        FB.getLoginStatus(function (response) {   // Called after the JS SDK has been initialized.
                            statusChangeCallback(response);        // Returns the login status.
                        });
                    };

                    function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
                        console.log('Welcome!  Fetching your information.... ');
                        FB.api('/me', function (response) {
                            console.log('Successful login for: ' + response.name);
                            document.getElementById('status').innerHTML =
                                    'Thanks for logging in, ' + response.name + '!';
                        });
                    }

                </script>
            <fb:login-button scope="public_profile,email" onlogin="onSignInFB();">
            </fb:login-button>

            <div id="status">
            </div>

            <!-- Load the JS SDK asynchronously -->
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
            <script>
                    function redirect() {
                        location.href = '/DonParrillasWeb/menuprincipal.jsp';
                    }
            </script>

            <script>
                function onSignInGoogle() {
                    //lo que este metodo tiene que hacer

                    //si el usuario inicia sesion correctamente en Google

                    //muestra al usuario saludo con su nombre

                    //revela el contenido

                    location.href = '/DonParrillasWeb/menuprincipal.jsp';
                }
            </script>

            <script>
                function onSignInFB() {
                    //lo que este metodo tiene que hacer

                    //si el usuario inicia sesion correctamente en Facebook


                    //muestra al usuario saludo con su nombre

                    //revela el contenido

                    location.href = '/DonParrillasWeb/newjsp.jsp';
                }
            </script>

            </body>
            </html>
