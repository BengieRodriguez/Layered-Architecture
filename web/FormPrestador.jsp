<%-- 
    Document   : FormPrestador
    Created on : 18 sept 2024, 3:57:49 p.m.
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario Prestador</title>
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
                            <input type="hidden" name="formulario" value="prestador">
                            <h2>Ingresar Prestador</h2>
                            <p> Llenar formulario</p>
                            <label>Nombre:</label>
                            <input type="text" name="nombre" placeholder="Ingrese su nombre completo " required> <br>
                            <label>Correo Electronico: </label>
                            <input type="email" name="correo" placeholder="Ingrese correo electronico" required> <br>
                            <label>Telefono</label>
                            <input type="text" name="telefono" placeholder="Ingrese telefono" required> <br>
                            <label>Tipo</label>
                            <select name="tipo">
                                <option value="persona">Persona</option>
                                <option value="empresa">Empresa</option>
                            </select>
                            <label>Saldo</label>
                            <input type="number" name="saldo" placeholder="Ingresar saldo inicial" required> <br>
                            <input type="submit" value="Guardar"> 
                        </form>
                    </div>
                </section>
            </div>
        </main>
    </body>
</html>
