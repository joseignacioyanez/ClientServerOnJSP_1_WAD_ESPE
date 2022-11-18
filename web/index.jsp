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
        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" 
      crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
            <h1 class="text-center mt-4">Lista de Productos</h1>
            <table class="table table-dark mt-4">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Precio</th>
                        <th class="text-center">Cantidad</th>
                        <th class="text-center">Ganancias</th>
                        <th class="text-center">Editar</th>
                        <th class="text-center">Eliminar</th>
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
                        <td class="text-center"><%= product.getId() %></td>
                        <td class="text-center"><%= product.getName() %></td>
                        <td class="text-center"<%= product.getPrice()%></td>
                        <td class="text-center"><%= product.getQuantity()%></td>
                        <td class="text-center"><%= product.getProfit() %></td>
                        <td class="text-center">
                            <a href="Controlador?accion=updateProduct&id=<%= product.getId() %>">
                                <button class="btn btn-primary">
                                    Editar
                                </button>
                            </a>
                        </td>
                        <td class="text-center">
                            <a href="Controlador?accion=deleteProduct&id=<%= product.getId() %>">
                                <button class="btn btn-danger">
                                    Eliminar
                                </button>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            
                    <a href="Controlador?accion=addProducts">
                        <button class="btn btn-success">
                            Agregar
                        </button>
                    </a>
        </div>
    </body>
</html>
