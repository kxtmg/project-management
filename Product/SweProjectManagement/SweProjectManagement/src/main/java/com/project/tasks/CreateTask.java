package com.project.tasks;
import java.sql.*;
import java.util.Date;
import com.project.db.DatabaseConnection;

public class CreateTask {


    public static void main(String[] args) {
        Connection connection = null;
        Statement statement = null;
        PreparedStatement prepared = null;
        ResultSet result = null;

        try {

            System.out.println("Connecting to database...");
            connection = DatabaseConnection.initializeDatabase();


            // Create a new task for a project
            String taskName = "Task";
            Date taskStartDate = new Date();
            Date taskDeadline = new Date();
            int projectId = 1;
            String taskStatus = "Not_Started";
            String TaskBlurb = "Task description";
            int taskDifficulty = 5;

            String insertTaskQuery = "INSERT INTO Tasks (ProjectID, TaskStartDate, Deadline, TaskStatus, TaskBlurb, TaskDifficulty) VALUES (?, ?, ?, ?, ?, ?)";
            prepared = connection.prepareStatement(insertTaskQuery, Statement.RETURN_GENERATED_KEYS);
            prepared.setInt(1, projectId);
            prepared.setDate(2, new java.sql.Date(taskStartDate.getTime()));
            prepared.setDate(3, new java.sql.Date(taskDeadline.getTime()));
            prepared.setString(4, taskStatus);
            prepared.setString(5, TaskBlurb);
            prepared.setInt(6, taskDifficulty);

            int affectedRows = prepared.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Creating task failed, no rows affected.");
            }

            try (ResultSet generatedKeys = prepared.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    int taskId = generatedKeys.getInt(1);
                    System.out.println("New task created with ID: " + taskId);
                } else {
                    throw new SQLException("Creating task failed, no ID obtained.");
                }
            }

            prepared.close();
            connection.close();
        } catch (SQLException se) {
            // Handle errors for JDBC
            se.printStackTrace();
        } catch (Exception e) {
            // Handle errors for Class.forName
            e.printStackTrace();
        } finally {
            // finally block used to close resources
            try {
                if (statement!= null) {
                    statement.close();
                }
            } catch (SQLException se2) {
            } // nothing we can do
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
