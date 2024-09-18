package com.project.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//this is used to initialize the database connection, and return Connection object
//Should probably feed the username password from elsewhere, but until that is done
//change them to suit your usecase, unless I build a MySQL db generation script..
public class DatabaseConnection {
    public static Connection initializeDatabase()
            throws SQLException, ClassNotFoundException
    {

        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/";
        String dbName = "swedb";
        String dbUsername = "javauser";
        String dbPassword = "cornbeef";

        Class.forName(dbDriver);
        Connection con = DriverManager.getConnection(dbURL + dbName , dbUsername, dbPassword);

        return con;
    }
}