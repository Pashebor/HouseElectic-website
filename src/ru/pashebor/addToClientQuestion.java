package ru.pashebor;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class addToClientQuestion extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String name = req.getParameter("a_Name");
        String phone = req.getParameter("b_Phone");
        String email = req.getParameter("c_Email");
        String comment = req.getParameter("ZZ_Comments");

        AddingToDb add = new AddingToDb();
        add.setQueryToClientsQuestion(name, phone, email, comment);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/thank_you.html");
        dispatcher.forward(req, resp);
    }
}
