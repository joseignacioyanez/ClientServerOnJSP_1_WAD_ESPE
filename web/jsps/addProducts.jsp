<%-- 
    Document   : addProducts
    Created on : 17 nov. 2022, 11:08:48
    Author     : joseignacio
--%>

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
            <h1 class="text-center">Agregar Producto</h1>
            <form action="Controlador">
                <div class="row mt-4">
                    <div class="col">
                        <label>Nombre: </label>
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="col">
                        <label>Precio: </label>
                        <input type="text" name="price" class="form-control">
                    </div>
                    <div class="col">
                        <label>Cantidad: </label>
                        <input type="number" name="quantity" class="form-control">
                    </div>
                </div>
                <div class="row mt-4">
                    <div class="col">
                        <button type="submit" value="Agregar" name="accion"  class="btn btn-success">
                            Agregar
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
