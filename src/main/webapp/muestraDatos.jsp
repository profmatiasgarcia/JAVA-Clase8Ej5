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
    <title>JSP Page</title>
</head>
<body>
    <%@ page import="negocios.Alumno" %>
    <%
        Alumno alumno = (Alumno) request.getAttribute("atribAlumn");
    %>
    <h1> MuestraDatos.jsp</h1>
    <h2> Aqui se despliegan los datos que envió el servlet</h2>
    <p> Tus datos son los siguientes: </p>
    <table cellspacing="3" cellpadding="3" border="1" >
        <tr>
            <td align="right"> Te llamas: </td>
            <td> <%= alumno.getNombre() %> </td>
        </tr>
        <tr>
            <td align="right"> Tus apellidos: </td>
            <td> <%= alumno.getApellidos() %> </td>
        </tr>
        <tr>
            <td align="right"> Y tu promedio es: </td>
            <td> <%= alumno.getPromedio() %> </td>
        </tr>
    </table>
    <form action="index.jsp" method="post">
        <input type="submit" value="Regresar">
    </form>
</body>
</html>
