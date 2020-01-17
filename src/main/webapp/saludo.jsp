<%-- 
    Document   : saludo
    Created on : 17 ene. 2020, 13:51:10
    Author     : andres
--%>

<%-- 
    Esto es un comentario de varias líneas en JSP.  Estos comentarios son ignorados por el servidor. --%>

<!-- Los page import son equivalentes a los import 
     de los archivos *.java -->

<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.Month"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplo de Página JSP</title>
    </head>
    <body>
        <h1>Mi primera Web app con Java</h1>    
        <!-- Un scriptlet en JSP -->
            <%
                LocalDateTime ahora = LocalDateTime.now();
                int dia = ahora.getDayOfMonth();
                DayOfWeek diaSemana = ahora.getDayOfWeek();
                Month mes = ahora.getMonth();
                int año = ahora.getYear();
String mensaje = "Hoy es " + dia + " " + diaSemana + " de " + mes + " del " + año;
            %>
            <!-- Una expresión en JSP -->
            <p><%=mensaje%></p>
            
            <!-- Ejemplo de declaración -->
        <%! int veces = 5;
            String saludo;
        %>
        <!-- Otro scriptlet en JSP -->
        <%

            int horaDelDia = ahora.getHour();

            if (horaDelDia < 12) {
                saludo = "Buenos días";
            } else if (horaDelDia >= 12 && horaDelDia < 21) {
                saludo = "Buenas tardes";
            } else {
                saludo = "Buenas noches";
            }
        %>
        <%  for (int i = 0; i < veces; i++) { %>
                <p><%= saludo%></p>
        <% }%>

    </body>
</html>
