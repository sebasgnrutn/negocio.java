

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String usuario = "";
HttpSession sesion1 = request.getSession(false);
usuario = (String)sesion1.getAttribute("usuario");



%>
<script src="js/login.js" type="text/javascript"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/logincss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <form action="iniciar2" method="post" id="formindex">
        <div id="div1" style="border-color: black;">
            
            <h2 id="estiloLogin">
                <strong>
                    LOGIN
                </strong>
            </h2>
            <div style="margin-top: 7%; text-align: center;">
                <strong style="font-size: 22px;">Usuario: </strong>
                
            <input type="text" name="txtUsuario" id="txtUsuario" style="margin-left:20px; width:240px;"/></br></br>
                
            <strong style="font-size: 22px; margin-left: -32px; ">Contraseña:  </strong>

            <input type="password" name="txtPassword" id="txtPassword" style="margin-left:20px; width:240px;"/>
            </br>
            <p style="color: red; background-color: black;"><strong><% if(usuario==null){out.println("");}else{out.println(usuario);}%></strong> </p>  <p style="margin-left: 100px;">¿No tiene una cuenta? <a href="registro.jsp"> Cree una </a></p>
            </br>
            
            <input type="button" value="Iniciar Sesión" id="btnAceptar" style="margin-left: 250px; height: 35px; background-color: #269abc; color: white;"/>
            
            </div>
        </div> </form>
      
    </body>
</html>
