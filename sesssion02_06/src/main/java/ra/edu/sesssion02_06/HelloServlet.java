package ra.edu.sesssion02_06;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(urlPatterns = "/login")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            String username = req.getParameter("username");
            String password = req.getParameter("password");

            req.setAttribute("username", username);
            req.setAttribute("password", password);
            req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
}