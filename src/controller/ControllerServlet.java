package controller;

import businesslogic.PriceCalculator;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/buy")
public class ControllerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String product1 = request.getParameter("product1");
        String price1 = request.getParameter("price1");

        String product2 = request.getParameter("product2");
        String price2 = request.getParameter("price2");

        String product3 = request.getParameter("product3");
        String price3 = request.getParameter("price3");

        String product4 = request.getParameter("product4");
        String price4 = request.getParameter("price4");

        List<Product> items = new ArrayList<>();
        Product.add(items,product1,price1);
        Product.add(items,product2,price2);
        Product.add(items,product3,price3);
        Product.add(items,product4,price4);

        PriceCalculator cal = new PriceCalculator();

        double sum = cal.sum(items);
        double mean = cal.mean(items);

        if (price1.isEmpty() && price2.isEmpty() && price3.isEmpty() && price4.isEmpty()) {
            request.getRequestDispatcher("/empty.jsp").forward(request,response);
        } else {
            request.setAttribute("prices", Product.bill(items));
            request.setAttribute("boughtItems", Product.list(items));
            request.setAttribute("sum", sum);
            request.setAttribute("mean", mean);
            request.getRequestDispatcher("/buy.jsp").forward(request,response);
        }
    }
}
