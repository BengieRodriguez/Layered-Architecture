<%-- 
    Document   : FormServicio
    Created on : 19 sept 2024, 11:17:32 a.m.
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servicio</title>
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
                            <input type="hidden" name="formulario" value="servicio">
                            <h2>Ingresar servicio</h2>
                            <p> Llenar formulario</p>
                            <label>Precio:</label>
                            <input type="number" name="precio" placeholder="Ingrese valor" required> <br>
                            <label>Origen: </label>
                            <input type="text" name="origen" placeholder="Ingrese origen" required> <br>
                            <label>Destino: </label>
                            <input type="text" name="destino" placeholder="Ingrese destino" required> <br>
                            <label>Fecha: </label>
                            <input type="date" name="fecha" placeholder="Ingrese fecha" required> <br>
                            <label>Hora:</label>
                            <input type="time" name="hora" placeholder="Ingrese hora" required> <br>
                            <label>Codigo Vehiculo</label>
                            <input type="number" name="codigovehiculo" placeholder="Ingrese codigo vehiculo" required> <br>
                            <label>Tipo </label>
                            <select name="tipo">
                                <option value="ciudad">Ciudad</option>
                                <option value="ciudad a ciudad">Ciudad a ciudad</option>
                            </select>
                            <label>Codigo Prestador </label>
                            <input type="number" name="codigoprestador" placeholder="Ingrese codigo prestador" required> <br>
                            <input type="submit" value="Guardar"> 
                        </form>
                    </div>
                </section>
            </div>
        </main>
    </body>
</html>
