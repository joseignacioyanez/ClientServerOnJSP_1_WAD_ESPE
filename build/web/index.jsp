<%-- 
    Document   : index
    Created on : 17 nov. 2022, 11:09:50
    Author     : joseignacio
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Model.Product"%>
<%@page import="java.util.List"%>
<%@page import="ModelDAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Lista de Productos</h1>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                        <th>Ganancias</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                
                <tbody>
                <%
                    ProductDAO productDAO = new ProductDAO();
                    List<Product> list = productDAO.listProducts();
                    Iterator<Product> iter = list.iterator();
                    Product product = null;
                    while(iter.hasNext()){
                        product = iter.next();
                    
                %>
                
                    <tr>
                        <td><%= product.getId() %></td>
                        <td><%= product.getName() %></td>
                        <td><%= product.getPrice()%></td>
                        <td><%= product.getQuantity()%></td>
                        <td><%= product.getProfit() %></td>
                        <td>
                            <a href="Controlador?accion=updateProduct&id=<%= product.getId() %>">
                                <button>
                                    Editar
                                </button>
                            </a>
                        </td>
                        <td>
                            <a href="Controlador?accion=deleteProduct&id=<%= product.getId() %>">
                                <button>
                                    Eliminar
                                </button>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            
                    <a href="Controlador?accion=addProducts">
                        <button>
                            Agregar
                        </button>
                    </a>
        </div>
    </body>
</html>
