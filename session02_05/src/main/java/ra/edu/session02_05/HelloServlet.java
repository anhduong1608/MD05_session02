package ra.edu.session02_05;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(urlPatterns = "/input")
public class HelloServlet extends HttpServlet {
    List<Product> products = new ArrayList<>();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String id = req.getParameter("id");
    String name = req.getParameter("product");
    double price = Double.parseDouble(req.getParameter("price"));
    String description = req.getParameter("description");
    Product product = new Product(id, name, price, description);
    products.add(product);
    req.setAttribute("products", products);

    req.getRequestDispatcher("list.jsp").forward(req, resp);

    }
}