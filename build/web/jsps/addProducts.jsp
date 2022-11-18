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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <<h1>Agregar Producto</h1>
            <form action="Controlador">
                <div>
                    <div>
                        <label>Nombre: </label>
                        <input type="text" name="name">
                    </div>
                    <div>
                        <label>Precio: </label>
                        <input type="text" name="price">
                    </div>
                    <div>
                        <label>Cantidad: </label>
                        <input type="number" name="quantity">
                    </div>
                    <div>
                        <button type="submit" value="Agregar" name="accion">
                            Agregar
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
