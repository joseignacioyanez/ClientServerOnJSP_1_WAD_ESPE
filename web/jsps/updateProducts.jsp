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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" 
      crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
            <%
                ProductDAO productDAO = new ProductDAO();
                int id = Integer.parseInt((String) request.getAttribute("id"));
                Product product = (Product) productDAO.listProduct(id);
            %>
            <h1 class="text-center mt-4">Modificar Producto</h1>
            <form action="Controlador">
                <div>
                    <input type="hidden" name="idProduct" value="<%= product.getId() %>" class="form-control">
                    <input type="hidden" name="profit" value="<%= product.getProfit()%>" class="form-control">
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <label>Nombre: </label>
                        <input type="text" name="name" value="<%= product.getName()%>" class="form-control">
                    </div>
                    <div class="col">
                        <label>Precio: </label>
                        <input type="text" name="price" value="<%= product.getPrice()%>" class="form-control">
                    </div>
                    <div class="col">
                        <label>Cantidad: </label>
                        <input type="number" name="quantity" value="<%= product.getQuantity()%>" class="form-control">
                    </div>
                     <div class="col">
                        <label>Ganancias: </label>
                        <input type="text" name="profit" value="<%= product.getProfit()%>" readonly class="form-control">
                    </div>
                </div>
                <div class="row mt-4">    
                    <div>
                        <button type="submit" value="Actualizar" name="accion" class="btn btn-primary">
                            Confirmar
                        </button>
                    </div>
                </div>
            </form>
        </div>
        
    </body>
</html>
