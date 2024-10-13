/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package sv;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Date;

import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author user
 */
public class Demo extends HttpServlet {

    private static final String URL = "jdbc:postgresql://localhost:5432/sitravi";
    private static final String USER = "postgres";
    private static final String PASSWORD = "1193585023Bn*";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Demo</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Demo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String formulario = request.getParameter("formulario");
        try {
            Class.forName("org.postgresql.Driver");
            String sql = "";
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
            if ("cliente".equals(formulario)) {
                String nombre = request.getParameter("nombre").toLowerCase();
                String correo = request.getParameter("correo").toLowerCase();
                String telefono = request.getParameter("telefono");
                sql = "INSERT INTO cliente (nombre, correo, telefono) VALUES (?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, nombre);
                stmt.setString(2, correo);
                stmt.setString(3, telefono);
                int rowsAffected = stmt.executeUpdate();
                if (rowsAffected > 0) {
                    response.getWriter().print("Cliente guardado exitosamente");
                }
                stmt.close();
                conn.close();
            } else if ("prestador".equals(formulario)) {
                String nombre = request.getParameter("nombre").toLowerCase();
                String correo = request.getParameter("correo").toLowerCase();
                String telefono = request.getParameter("telefono");
                String tipo = request.getParameter("tipo");
                Float saldo = Float.parseFloat(request.getParameter("saldo"));
                sql = "INSERT INTO prestador (nombre, correo, telefono,saldo, tipo) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, nombre);
                stmt.setString(2, correo);
                stmt.setString(3, telefono);
                stmt.setFloat(4, saldo);
                stmt.setString(5, tipo);
                stmt.executeUpdate();
                response.getWriter().print("Prestador guardado exitosamente");
                //stmt.close();
            } else if ("reseña".equals(formulario)) {
                int codigocliente = Integer.parseInt(request.getParameter("codigocliente"));
                String descripcion = request.getParameter("descripcion").toLowerCase();
                int codigoservicio = Integer.parseInt(request.getParameter("codigoservicio"));
                sql = "INSERT INTO reseña (descripcion, codigo_cliente, codigo_servicio) VALUES (?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, descripcion);
                stmt.setInt(2, codigocliente);
                stmt.setInt(3, codigoservicio);
                stmt.executeUpdate();
                response.getWriter().print("Reseña guardada exitosamente");
            } else if ("vehiculo".equals(formulario)) {
                String maticula = request.getParameter("matricula").toLowerCase();
                String marca = request.getParameter("marca").toLowerCase();
                String color = request.getParameter("color").toLowerCase();
                String modelo = request.getParameter("modelo").toLowerCase();
                int codigoprestador = Integer.parseInt(request.getParameter("codigoprestador"));
                int capacidad = Integer.parseInt(request.getParameter("capacidad"));
                String condicion = request.getParameter("condicion").toLowerCase();
                sql = "INSERT INTO vehiculo (matricula, marca, color, modelo, codigo_prestador, capacidad, condicion) VALUES (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, maticula);
                stmt.setString(2, marca);
                stmt.setString(3, color);
                stmt.setString(4, modelo);
                stmt.setInt(5, codigoprestador);
                stmt.setInt(6, capacidad);
                stmt.setString(7, condicion);
                stmt.executeUpdate();
                response.getWriter().print("vehiculo guardada exitosamente");
            } else if ("servicio".equals(formulario)) {
                Float precio = Float.parseFloat(request.getParameter("precio"));
                String origen = request.getParameter("origen").toLowerCase();
                String destino = request.getParameter("destino").toLowerCase();
                String fechaStr = request.getParameter("fecha");
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                LocalDate localDate = LocalDate.parse(fechaStr, formatter);
                java.sql.Date fecha = java.sql.Date.valueOf(localDate);
                String horaStr = request.getParameter("hora");
                LocalTime localTime = LocalTime.parse(horaStr);
                Time hora = Time.valueOf(localTime);
                int codigoVehiculo = Integer.parseInt(request.getParameter("codigovehiculo"));
                String tipo = request.getParameter("tipo");
                int codigoPrestador = Integer.parseInt(request.getParameter("codigoprestador"));

                sql = "INSERT INTO servicio_transporte (precio, origen, destino, fecha, hora, codigo_vehiculo, tipo, codigo_prestador) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setFloat(1, precio);
                stmt.setString(2, origen);
                stmt.setString(3, destino);
                stmt.setDate(4, fecha);
                stmt.setTime(5, hora);
                stmt.setInt(6, codigoVehiculo);
                stmt.setString(7, tipo);
                stmt.setInt(8, codigoPrestador);
                stmt.executeUpdate();
                response.getWriter().print("servicio guardada exitosamente");
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().print("Error al guardar un " + formulario);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
