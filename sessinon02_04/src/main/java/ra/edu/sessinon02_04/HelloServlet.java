package ra.edu.sessinon02_04;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(urlPatterns = "/enter")
public class HelloServlet extends HttpServlet {
    List<Product> products = new ArrayList<Product>();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product product = new Product();
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        boolean sale = Boolean.parseBoolean(req.getParameter("sale"));
        product.setId(id);
        product.setProductName(name);
        product.setPrice(price);
        product.setDescription(description);
        product.setQuantity(quantity);
        product.setStatus(sale);
        products.add(product);

        req.setAttribute("products", products);
        req.getRequestDispatcher("management.jsp").forward(req, resp);
    }
}