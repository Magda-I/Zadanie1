<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Magdalena
  Date: 2018-06-08
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Podsumowanie Twoich zakupów:</title>
</head>
<body bgcolor="#fffbd8" >
<div style="text-align: center; font-family: Verdana">
    <br>
    <h1>Zakupione produkty: </h1>


    <table class="table table-dark" align="center">
        <thead>
        <tr>
            <th>#</th>
            <th>Produkt</th>
            <th>Cena</th>
        </tr>
        </thead>

        <tbody>

        <%
            List<String> boughtItems = (List<String>) request.getAttribute("boughtItems");

            List<Double> prices = (List<Double>) request.getAttribute("prices");

            for (String boughtItem : boughtItems) {
                int i = boughtItems.indexOf(boughtItem);
                out.print("<tr>" +
                        "<td scope=\"row\">"+  ++i + "</td>" +
                        "<td>" + boughtItem + "</td>" +
                        "<td>" + prices.get(--i) + "</td>" +
                        "</tr>"
                );
            }
        %>


        </tbody>
    </table>



    <%
        Object sum = request.getAttribute("sum");
        Object mean = request.getAttribute("mean");
    %>

<h2>Suma: <%=sum%> zł</h2>
<h2>Średnia cena produktu: <%=mean%> zł</h2>

<a href="index.jsp">Powrót do strony głównej sklepu</a>
</div>
</body>
</html>
