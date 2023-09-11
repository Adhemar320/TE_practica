<%@page import="com.emergentes.controlador.Tarea"%>
<%@page import="java.util.ArrayList"%>
<%
    if (session.getAttribute("listatar") == null){
        ArrayList<Tarea> lisaux = new ArrayList<Tarea>();
        session.setAttribute("listatar", lisaux);
    
    }
   ArrayList<Tarea> lista =(ArrayList<Tarea>) session.getAttribute("listatar"); 
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gestor de Tareas</h1>
        <h4>Nombre: Adhemar Luis Yapu Nina</h4>
        <a href="MainServlet?op=nuevo">Nuevo</a>
        <br>
        <br>
            <table cellspacing="0" border="1">
                <tr>
                    <th>ID</th>
                                      
                    <th>Tarea</th>
                    
                    <th>Completado</th>
                    
                    <th></th>
                  
                </tr>
                <%
                   if (lista != null){
                       for(Tarea item : lista){
                       
                       
                %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getTarea() %></td>
                    <td><input type="checkbox" name="Completado" value=""></td>
                    <td>
                        <a href="MainServlet?op=modificar&id=<%= item.getId() %>">Editar</a>
                        <a href="MainServlet?op=eliminar&id=<%= item.getId() %>"
                           onclick="return(confirm('¿Está seguro de Eliminar?'))"
                             >Eliminar</a>
                    </td>  
                </tr>
                <%
                        } 
                    } 
                %>
            </table>
        
            
        
    </body>
</html>
