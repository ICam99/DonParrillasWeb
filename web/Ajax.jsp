

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ajax</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <body>
        <%
                    HttpSession misession= (HttpSession) request.getSession();
                    
                           misession.setAttribute("ajax", true); 
                       
                    
            %>
        <button id="boton" > Cargar sitio</button>
            
        <div id="response">
            
        </div>
        <script>
            
            function ajax(){
                const http = new XMLHttpRequest();
                const url = 'http://localhost:8080/index.jsp';
                
                http.onreadystatechange = function(){
                    if(this.readyState == 4 && this.status == 200){
                        console.log(this.responseText);
                        document.getElementById("response").innerHTML = this.responseText;
                    }
                }
                
                http.open("GET", url);
                http.send();
                location.href = 'index.jsp';
            }
            document.getElementById("boton").addEventListener("click", function(){
                ajax();
            });
            </script>
    </body>
</html>