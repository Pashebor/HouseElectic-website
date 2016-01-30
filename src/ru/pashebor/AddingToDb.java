package ru.pashebor;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Calendar;


public class AddingToDb {
    private static final String URL = "jdbc:mysql://localhost:3306/house_electric";
    private static final String USER = "root";
    private static final String PASSWORD = "ltvmzyjd";

    protected void setQueryToCallBack(String a_Name, String b_Phone, String c_Email, String d_Best_Contact_Times){
          String name = a_Name;
          String phone = b_Phone;
          String email = c_Email;
          String timeToCallback = d_Best_Contact_Times;
        try
        {
            // create a mysql database connection
            String myDriver = "com.mysql.jdbc.Driver";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);

            // create a sql date object so we can use it in our INSERT statement
            /*Calendar calendar = Calendar.getInstance();
            java.sql.Date startDate = new java.sql.Date(calendar.getTime().getTime());
*/
            // the mysql insert statement
            String query = " insert into clients_callback (name, phone, email, time_to_callback)"
                    + " values (?, ?, ?, ?)";

            // create the mysql insert preparedstatement
            PreparedStatement preparedStmt = conn.prepareStatement(query);
            preparedStmt.setString (1, name);
            preparedStmt.setString(2, phone);
            preparedStmt.setString(3, email);
            preparedStmt.setString(4, timeToCallback);

            // execute the preparedstatement
            preparedStmt.execute();

            conn.close();
        }
        catch (Exception e)
        {
            System.err.println("Ошибка !!!");
            System.err.println(e.getMessage());
        }
    }
    protected void setQueryToClientsQuestion(String name, String phone, String email, String question){
        String aName = name;
        String bPhone = phone;
        String cEmail = email;
        String dQuest = question;


        try {
            String myDriver = "com.mysql.jdbc.Driver";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);

            String queryToQuest = " insert into client_question (name, phone, email, question)"
                    + " values (?, ?, ?, ?)";

            PreparedStatement preparedStmt = conn.prepareStatement(queryToQuest);
            preparedStmt.setString(1, aName);
            preparedStmt.setString(2, bPhone);
            preparedStmt.setString(3, cEmail);
            preparedStmt.setString(4, dQuest);

            preparedStmt.execute();

            conn.close();


        }catch (Exception ex){
            System.err.println("Ошибка !!!");
            System.err.println(ex.getMessage());
        }

    }
}
