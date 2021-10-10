<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tareas"%>
<%
    ArrayList<Tareas> lista = (ArrayList<Tareas>) session.getAttribute("listaTareas");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="color:red" align = "center" >Tareas</h1>
            <h2><a href="MainController?op=nuevo">Nuevo</a></h2>

            <table align = "center" border="1">
                <thead style="color:violet">
                    <tr>
                        <th>Id</th>
                        <th>Tarea</th>
                        <th>Prioridad</th>
                        <th>Completado</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <%
                    if (lista != null) {
                        for (Tareas item : lista) {
                %>
                <tr>
                    <td><%= item.getId()%></td>
                    <td><%= item.getTarea()%> </td>
                    <td><%= item.getPrioridad()%></td>
                    
                    <% if( item.getCompletado().equals("Concluido") ){ %>
                    
                    <td><input checked="checked" type="checkbox" name="acepto"></td>
                    <%}else{%>
                    <td><input type="checkbox" name="acepto"></td>
                    <%}%>
                    <td><a href="MainController?op=editar&id=<%= item.getId() %>">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=<%= item.getId()%>"
                           onclick="return confirm('Está seguro de eliminar el registro ?');">Elimnar</a></td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
    </body>
</html>
