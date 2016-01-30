package ru.pashebor;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class AddToTimeCallBackServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String name =  req.getParameter("a_Name");
        String phone = req.getParameter("b_Phone");
        String email = req.getParameter("c_Email");
        String timeToCallback = req.getParameter("d_Best_Contact_Times");
       AddingToDb add = new AddingToDb();
        add.setQueryToCallBack(name, phone, email, timeToCallback);
        PrintWriter out = resp.getWriter();
        out.println("<!DOCTYPE html >\n" +
                "<html>\n" +
                "<head>\n" +
                "  <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\n" +
                "  <link href=\"css/callback.css\" rel=\"stylesheet\" type=\"text/css\">\n" +
                "  <script type=\"text/javascript\" src=\"js/jquery-1.11.3.js\"></script>\n" +
                "  <script src=\"js/site.min.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\n" +
                "\n" +
                "  <script>\n" +
                "    $(function() {\n" +
                "      $('input, textarea').placeholder();\n" +
                "    });\n" +
                "  </script>\n" +
                "\n" +
                "\n" +
                "  <script language=\"JavaScript\" type=\"text/JavaScript\">\n" +
                "    function validate() {\n" +
                "\n" +
                "      var errors = 0;\n" +
                "\n" +
                "      if(document.form4.a_Name.value.length < 1) {alert('Please Enter Your Name');errors++;}\n" +
                "      if(document.form4.b_Phone.value.length < 1) {alert('Please Enter Your Phone Number');errors++;}\n" +
                "      if(document.form4.c_Email.value.length < 1) {alert('Please Enter Your Email Address');errors++;}\n" +
                "\n" +
                "      if(errors == 0)\n" +
                "        return true;\n" +
                "      else return false;\n" +
                "    }\n" +
                "  </script>\n" +
                "\n" +
                "</head>\n" +
                "\n" +
                "<body>\n" +
                "<div id=\"Container\">\n" +
                "  <div id=\"Content\">\n" +
                "\n" +
                "    <div id=\"CallBack\">\n" +
                "      <center><h1>Сообщение</h1></center>\n" +
                "\n" +
                "          <p style=\"font: 13pt Calibri; color: white\">Мы свяжемся с вами в назначенное время</p>\n" +
                "\n" +
                "    </div>\n" +
                "\n" +
                "  </div>\n" +
                "</div>\n" +
                "</body>\n" +
                "</html>");
        out.close();
        /*RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
        dispatcher.forward(req, resp);*/
    }
}
