<%-- 
    Document   : FormVehiculo
    Created on : 19 sept 2024, 11:06:36 a.m.
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehiculo</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
        <header>    
            <div class="menu">
                <div class="imagen">
                    <img src="ruta-del-logo.png" alt="Logo">
                </div>
                <div class="itemmenu">
                    <a href="Inicio.jsp">Inicio</a>
                    <a href="#">Sobre nosotros</a>
                    <a href="FormPrestador.jsp">Agregar Prestador</a>
                    <a href="FormVehiculo.jsp">Agregar Vehiculo</a>
                    <a href="FormServicio.jsp">Agregar Servicio</a>
                </div>
            </div>
        </header>
        <main>
            <div class="container">
                <section class="formcliente">
                    <div>
                        <form action="Demo" method="POST">
                            <input type="hidden" name="formulario" value="vehiculo">
                            <h2>Ingresar Vehiculo</h2>
                            <p> Llenar formulario</p>
                            <label>Matricula:</label>
                            <input type="text" name="matricula" placeholder="Ingrese matricula" required> <br>
                            <label>Marca: </label>
                            <input type="text" name="marca" placeholder="Ingrese marca" required> <br>
                            <label>Color: </label>
                            <input type="text" name="color" placeholder="Ingrese color" required> <br>
                            <label>Modelo: </label>
                            <input type="text" name="modelo" placeholder="Ingrese modelo" required> <br>
                            <label>Codigo Prestador</label>
                            <input type="number" name="codigoprestador" placeholder="Ingrese codigo prestador" required> <br>
                            <label>Capacidad</label>
                            <input type="number" name="capacidad" placeholder="Ingrese capacidad" required> <br>
                            <label>Condicion: </label>
                            <input type="text" name="condicion" placeholder="Ingrese condicion" required> <br>
                            <input type="submit" value="Guardar"> 
                        </form>
                    </div>
                </section>
            </div>
        </main>
    </body>
</html>
