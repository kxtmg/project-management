package com.project.login;

import com.project.db.DatabaseConnection;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("inside loginservlet post");

        // Retrieve username and password from the login form
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Initialize variables for database connection and result set
        ResultSet rs = null;
        Connection con = null;
        PreparedStatement pst = null;
        RequestDispatcher dispatcher;
        HttpSession session = request.getSession();

        try {
            // Initialize database connection
            con = DatabaseConnection.initializeDatabase();

            // Prepare the SQL statement to check username and password
            pst = con.prepareStatement("SELECT * FROM Users WHERE Username = ? AND PWD = ?;");
            pst.setString(1, username);
            pst.setString(2, password);

            // Execute the query to check username and password
            rs = pst.executeQuery();

            if (rs.next()) {
                // Valid user credentials
                session.setAttribute("username", rs.getString("Username")); // Set the username in the session

                // Forward the request to the homepage or another destination
                dispatcher = getServletContext().getRequestDispatcher("/landingpage.jsp");
            } else {
                // Incorrect credentials - login failed
                // TODO: Display error message
                request.setAttribute("status", "failed");
                dispatcher = request.getRequestDispatcher("login.jsp");

            }
            dispatcher.forward(request, response);

        } catch (ClassNotFoundException | SQLException sqle) {
            System.out.println(sqle.getMessage());
        } finally {
            // Cleanup resources
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException sqle) {
                System.out.println(sqle.getMessage());
            }
        }
    }
}
