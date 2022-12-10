<%-- 
    Document   : menuprincipal
    Created on : 29/11/2022, 09:55:21 PM
    Author     : hp
--%>
<%@page import="crud.CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Men&uacute; Principal</title>
        <style type="text/css">

            * {
                margin:0px;
                padding:0px;
            }

            #header {
                margin:auto;
                width:500px;
                font-family:Arial, Helvetica, sans-serif;
            }

            ul, ol {
                list-style:none;
            }

            .nav > li {
                float:left;
            }

            .nav li a {
                background-color:#04AA6D;
                color:#000;
                text-decoration:none;

                padding:10px 12px;
                display:block;
            }

            .nav li a:hover {
                background-color:#434343;
            }

            .nav li ul {
                display:none;
                position:absolute;
                min-width:140px;
            }

            .nav li:hover > ul {
                display:block;
            }

            .nav li ul li {
                position:relative;
            }

            .nav li ul li ul {
                right:-140px;
                top:0px;
            }

        </style>
    </head>
    <body>        

        <div id="header">
            <ul class="nav">
                <li><a href="menuprincipal.jsp">Inicio</a></li>
                <li><a href="">Dar de alta</a>
                    <ul>
                        <li><a href="altaInsumos.jsp">Insumos</a></li>
                    </ul>
                </li>
                <li><a href="">Editar</a>
                    <ul>
                        <li><a href="editarInsumo.jsp">Insumos</a></li>
                    </ul>
                </li>
                <li><a href="">Eliminar</a>
                    <ul>
                        <li><a href="eliminarInsumo.jsp">Insumos</a></li>
                    </ul>
                </li>
                <li><a href="">Consultar</a>
                    <ul>
                        <li><a href="consultarInsumos.jsp">Insumos</a></li>
                    </ul>
                </li>
            </ul>
        </div>


    </body>
</html>