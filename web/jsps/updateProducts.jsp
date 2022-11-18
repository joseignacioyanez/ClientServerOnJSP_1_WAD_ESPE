<%-- 
    Document   : updateProducts
    Created on : 17 nov. 2022, 11:09:36
    Author     : joseignacio
--%>

<%@page import="Model.Product"%>
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
            <%
                ProductDAO productDAO = new ProductDAO();
                int id = Integer.parseInt((String) request.getAttribute("id"));
                Product product = (Product) productDAO.listProduct(id);
            %>
            <h1>Modificar Producto</h1>
            <form action="Controlador">
                <div>
                    <input type="hidden" name="idProduct" value="<%= product.getId() %>">
                    <input type="hidden" name="profit" value="<%= product.getProfit()%>">
                </div>
                <div>
                    <div>
                        <label>Nombre: </label>
                        <input type="text" name="name" value="<%= product.getName()%>">
                    </div>
                    <div>
                        <label>Precio: </label>
                        <input type="text" name="price" value="<%= product.getPrice()%>">
                    </div>
                    <div>
                        <label>Cantidad: </label>
                        <input type="number" name="quantity" value="<%= product.getQuantity()%>">
                    </div>
                     <div>
                        <label>Ganancias: </label>
                        <input type="text" name="profit" value="<%= product.getProfit()%>" readonly>
                    </div>
                    <div>
                        <button type="submit" value="Actualizar" name="accion">
                            Confirmar
                        </button>
                    </div>
                </div>
            </form>
        </div>
        
    </body>
</html>
