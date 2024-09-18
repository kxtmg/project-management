package com.project.users;

import com.project.db.DatabaseConnection;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Objects;

@WebServlet(name = "RegistrationServlet", value = "/register")
public class RegistrationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    // ######################################################################################################
    // #### Function to read in HTTP POST Request, and parse the body for the user's sign up information ####
    // ########################## JDBC will be used to send data to MySQL database ##########################
    // ######################################################################################################
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn=null;
        RequestDispatcher dispatcher = null;

        try {

        	/*
            Parse the body oSf HTTP POST Request
            String[] params = requestBody.split("&");
            String fname = params[0].split("=")[1];
            String lname = params[1].split("=")[1];
            String uname = params[2].split("=")[1];
            String pwd = params[3].split("=")[1];
            String email = params[4].split("=")[1];
            //String profilePicturePath = params[5].split("=")[1];
             */

            String uname = request.getParameter("name");
            String pwd = request.getParameter("pass");
            String email = request.getParameter("email");
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String pwd2 = request.getParameter("pass2");

            if(!Objects.equals(pwd, pwd2)) {
                dispatcher = request.getRequestDispatcher("/register.html");
                //passwords didn't match
                //TODO: Print an error to user
            }



            conn = DatabaseConnection.initializeDatabase();


            // SQL Statement. Credit to Trevor for writing the MySQL INSERT statement.
            // '?' will be replaced by the actual values parsed from the body.
            String sql = "INSERT INTO Users (fname, lname, Username, Pwd, Email) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, fname);
            statement.setString(2, lname);
            statement.setString(3, uname);
            statement.setString(4, pwd);
            statement.setString(5, email);
            //statement.setString(6, profilePicturePath);

            // Execute MySQL INSERT statement, and then close the connection.
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("MySQL INSERT success. New Account Created.");
                response.sendRedirect("index.jsp");
                //dispatcher = request.getRequestDispatcher("/index.jsp");

            }else {
                System.out.println("registration failed");
            }
            conn.close();

            // ###################################################################################
            // ######################### Exception Handling (Catches) ############################
            // ###################################################################################

            // If body of HTTP POST Request cannot be read.
        } catch (ClassNotFoundException e) {
            System.out.println("Error loading JDBC driver: " + e.getMessage());

            // If MySQL INSERT statement cannot be executed.
        } catch (SQLException e) {
            System.out.println("Error executing SQL statement: " + e.getMessage());
        }

    } // public void handlePostRequest(String requestBody)

} // public Class SignUp
