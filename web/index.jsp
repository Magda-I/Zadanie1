<%--
  Created by IntelliJ IDEA.
  User: Magdalena
  Date: 2018-06-08
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>Sklep internetowy</title>
  </head>
  <body bgcolor="#fffbd8" >

  <div style="text-align: center; font-family: Verdana">

      <br>
      <h1>Sklep ze wszystkim</h1>
      <h2>Wpisz nazwy i ceny produktów, które chcesz kupić:</h2>


  <form method="post" action="buy">

      <div class="form-group">
          <%--<input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="">--%>
          <input type="text" class="form-control" name="product1" placeholder="Produkt 1">
          <input type="number" class="form-control" name="price1" placeholder="cena"><br>
          <input type="text" class="form-control" name="product2" placeholder="Produkt 2">
          <input type="number" class="form-control" name="price2" placeholder="cena"><br>
          <input type="text" class="form-control" name="product3" placeholder="Produkt 3">
          <input type="number" class="form-control" name="price3" placeholder="cena"><br>
          <input type="text" class="form-control" name="product4" placeholder="Produkt 4">
          <input type="number" class="form-control" name="price4" placeholder="cena"><br>
      </div>
      <br>
      <button type="submit" class="btn btn-primary">Kup teraz</button>


      <%--<input type="submit" value="Kup Teraz">--%>

  </form>
  </div>
  </body>
</html>
