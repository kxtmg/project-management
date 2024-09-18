package com.project.tasks;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.db.DatabaseConnection;

public class ViewTasks {
    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    /**
     * Retrieves the tasks ResultSet for a given user.
     *
     * @param username the username of the user
     * @return the ResultSet containing the tasks
     */
    private ResultSet retrieveTasksResultSet(String username) {
        try {
            String sql = "SELECT t.TaskID, t.ProjectID, TaskStartDate, Deadline, TaskEndDate, TaskStatus, TaskBlurb, TaskDifficulty " +
                    "FROM tasks t " +
                    "JOIN assignedto a ON t.TaskID=a.TaskID " +
                    "JOIN users u ON u.UserID=a.UserID " +
                    "WHERE NOT TaskStatus='Completed' " +
                    "AND u.Username=? " +
                    "ORDER BY Deadline ASC";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);

            resultSet = preparedStatement.executeQuery();

            return resultSet;
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }
        return resultSet;
    }

    /**
     * Retrieves the tasks for a given user.
     *
     * @param username the username of the user
     * @return a list of tasks as Object arrays
     */
    public List<Object[]> getTasksForUser(String username) {
        List<Object[]> tasks = new ArrayList<>();
        System.out.println("getTasksForUser has been invoked with username: " + username);

        try {
            connection = DatabaseConnection.initializeDatabase();

            resultSet = retrieveTasksResultSet(username);

            while (resultSet.next()) {
                Object[] task = new Object[8];
                task[0] = resultSet.getInt("TaskID");
                task[1] = resultSet.getInt("ProjectID");
                task[2] = resultSet.getDate("TaskStartDate");
                task[3] = resultSet.getDate("Deadline");
                task[4] = resultSet.getDate("TaskEndDate");
                task[5] = resultSet.getString("TaskStatus");
                task[6] = resultSet.getString("TaskBlurb");
                task[7] = resultSet.getInt("TaskDifficulty");
                tasks.add(task);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle any exceptions appropriately
        } finally {
            // Close the ResultSet, PreparedStatement, and Connection
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        if (tasks.isEmpty()) {
            System.out.println("No tasks found.");
        } else {
            for (Object[] task : tasks) {
                System.out.println("Task ID: " + task[0]);
                System.out.println("Project ID: " + task[1]);
                System.out.println("Task Start Date: " + task[2]);
                System.out.println("Deadline: " + task[3]);
                System.out.println("Task End Date: " + task[4]);
                System.out.println("Task Status: " + task[5]);
                System.out.println("Task Blurb: " + task[6]);
                System.out.println("Task Difficulty: " + task[7]);
                System.out.println("--------------------");
            }
        }

        return tasks;
    }
    /**
     * Retrieves the tasks for a given project.
     *
     * @param projectID the ID of the project
     * @return a list of tasks as Object arrays
     */
    public List<Object[]> getTasksForProject(int projectID) {
        List<Object[]> tasks = new ArrayList<>();

        try {
            connection = DatabaseConnection.initializeDatabase();

            // Prepare the SQL query to select tasks for the given projectID
            String sql = "SELECT TaskID, TaskName, TaskStartDate, TaskEndDate, Deadline, TaskStatus, TaskBlurb, TaskDifficulty " +
                    "FROM tasks WHERE ProjectID = ?";
            preparedStatement = connection.prepareStatement(sql);

            // Set the projectID as a parameter in the prepared statement
            preparedStatement.setInt(1, projectID);

            // Execute the query and obtain the ResultSet
            resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Object[] task = new Object[8];
                task[0] = resultSet.getInt("TaskID");
                task[1] = resultSet.getString("TaskName");
                task[2] = resultSet.getDate("TaskStartDate");
                task[3] = resultSet.getDate("TaskEndDate");
                task[4] = resultSet.getDate("Deadline");
                task[5] = resultSet.getString("TaskStatus");
                task[6] = resultSet.getString("TaskBlurb");
                task[7] = resultSet.getInt("TaskDifficulty");
                tasks.add(task);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle any exceptions appropriately
        } finally {
            // Close the ResultSet, PreparedStatement, and Connection
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (preparedStatement != null) {
                try {
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        if (tasks.isEmpty()) {
            System.out.println("No tasks found for the project with ID: " + projectID);
        } else {
            for (Object[] task : tasks) {
                System.out.println("Task ID: " + task[0]);
                System.out.println("Task Name: " + task[1]);
                System.out.println("Task Start Date: " + task[2]);
                System.out.println("Task End Date: " + task[3]);
                System.out.println("Deadline: " + task[4]);
                System.out.println("Task Status: " + task[5]);
                System.out.println("Task Blurb: " + task[6]);
                System.out.println("Task Difficulty: " + task[7]);
                System.out.println("--------------------");
            }
        }

        return tasks;
    }

}
