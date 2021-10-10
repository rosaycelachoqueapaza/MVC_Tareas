<%@page import="com.emergentes.modelo.Tareas"%>
<%
    Tareas item = (Tareas) request.getAttribute("misTareas");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%= (item.getId() == 0) ? "Nuevo registro" : "Editar registro"%></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId()%>"/>
            <table>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="<%= item.getTarea()%>" /> </td>
                </tr>
                <tr>
                    <td>Prioridad</td>
                    <td>
                        <select class="option" name="prioridad" id="pais">
                            <option value="Alta">Alta</option>
                            <option value="Media">Media</option>
                            <option value="Baja">Baja</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Completado</td>
                    <td>
                        <select class="option" name="completado" id="pais">
                            <option value="Concluido">Concluido</option>
                            <option value="Pendiente">Pendiente</option>
                        </select>
                    </td>
                </tr>


                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
