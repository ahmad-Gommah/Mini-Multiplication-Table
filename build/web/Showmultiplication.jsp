<%-- 
    Document   : Showmultiplication
    Created on : Nov 9, 2020, 9:16:22 PM
    Name     : Ahmad Gomma Farouk Mahmoud
    Id       : 20170014
    Group    : iT - IS -G1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Multiplication</title>
    </head>
    <style>
        table
        {
            width: 25px;
        }
        h1
        {
            text-align: center;

        }

    </style>
    <body style="text-align:center;">
        <%
            int counter = Integer.parseInt(request.getParameter("counter"));
            int x;
            int y;
            int i;
            int j;

        %>
        <h1>Thanks For Using Mini-Multiplication Table</h1>
        <table border="1" align="center" > 
            <%for (x = 0; x <= counter; x++) {
            %>
            <tr>
                <% for (y = 0; y <= counter; y++) {%>
                <%if (x == 0 && y == 0) {%>
                <td bgcolor="red">
                    <%= "Multiply"%>
                </td>
                <% } %> 
                <%if (x == 0 && y > 0) {%>
                <td bgcolor="blue">
                    <%= y%>
                </td>
                <% } %>  
                <%if (y == 0 && x > 0) {%>
                <td bgcolor="blue">
                    <%= x%>
                </td>
                <% } %> 
                <%if (x >= 1 && y >= 1) {%>
                <%if (y == x) {%>
                <td bgcolor="red">
                    <%= x * y%>
                </td>
                <% } %> 
                <%if (y != x) {%>
                <td>
                    <%= x * y%>
                </td>
                <% } %> 
                <% } %> 

                <% } %>
            </tr>
            <% }%>
        </table>
        <form action="index.html">
            <button type="return" vlaue="submit" style="width: 100px; padding: 5px; margin-top: 10px;">back</button>
        </form>
    </body>
</html>