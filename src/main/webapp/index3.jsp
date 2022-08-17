<%--
 * @author Prof Matias Garcia.
 * <p> Copyright (C) 2022 para <a href = "https://www.profmatiasgarcia.com.ar/"> www.profmatiasgarcia.com.ar </a>
 * - con licencia GNU GPL3.
 * <p> Este programa es software libre. Puede redistribuirlo y/o modificarlo bajo los términos de la
 * Licencia Pública General de GNU según es publicada por la Free Software Foundation, 
 * bien con la versión 3 de dicha Licencia o bien (según su elección) con cualquier versión posterior. 
 * Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA GARANTÍA, 
 * incluso sin la garantía MERCANTIL implícita o sin garantizar la CONVENIENCIA PARA UN PROPÓSITO
 * PARTICULAR. Véase la Licencia Pública General de GNU para más detalles.
 * Debería haber recibido una copia de la Licencia Pública General junto con este programa. 
 * Si no ha sido así ingrese a <a href = "http://www.gnu.org/licenses/"> GNU org </a>
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="estilo.css" />
    <link rel='icon' href='img/favicon.png' type='image/x-icon'>
    <title>Formulario</title>
</head>
<body>
    <img src="img/banner_hey.png" class="center">
    <form action ="ServletDatos" method="POST">
        <h1 class="center">Información de Usuario</h1><hr>
        Nombre:<input type="text" name ="nombre" size ="20">
        Apellido:<input type="text" name ="apellido" size ="20">
        Correo electrónico: <INPUT TYPE="TEXT" NAME="email"><br><br>
        Clave: <INPUT TYPE="PASSWORD" NAME="clave"><br> <hr>
        Comentario: <TEXTAREA NAME="comenta" ROWS=3 COLS=40> </TEXTAREA><br> <hr>
        Sexo:<br>
        <INPUT TYPE="RADIO" NAME="sexo" VALUE="hombre">Hombre
        <INPUT TYPE="RADIO" NAME="sexo" VALUE="mujer">Mujer<br><hr>
        Color:<br>
        <INPUT TYPE="RADIO" NAME="color" VALUE="amarillo">amarillo
        <INPUT TYPE="RADIO" NAME="color" VALUE="verde">verde<br><hr>
        Areas de interés:<br>
        <SELECT NAME="intereses" MULTIPLE size="4">
            <OPTION>Informatica</OPTION>
            <OPTION>Derecho</OPTION>
            <OPTION>Matematicas</OPTION>
            <OPTION>Fisica</OPTION>
            <OPTION>Musica</OPTION>
        </SELECT><br><br>
        <input type ="submit" value="Enviar datos">
    </form>
</body>
</html>
