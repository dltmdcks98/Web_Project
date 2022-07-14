package com.example.demo;

import java.io.*;
import java.net.URLDecoder;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() throws ServletException {
            message = "Hello World!";
            System.out.println("init 작동됨");

        }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");
        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
        System.out.println("doGet 작동");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setContentType("text/html");
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");

        String id = request.getParameter("Sign_name");
        System.out.println(id);
    }

    public void destroy() {
    }
}