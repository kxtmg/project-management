package com.project.projects;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.project.db.DatabaseConnection;

public class ViewProjects {
    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;

    /**
     * Retrieves the projects ResultSet for a given user.
     *
     * @param username the username of the user
     * @return the ResultSet containing the projects
     */
    private ResultSet retrieveProjectsResultSet(String username) {
        try {
            String sql = "SELECT ProjectName, ProjectStatus, StartBudget, CurrentBudget, p.ProjectID FROM Projects p " +
                    "JOIN ismember i ON p.ProjectID=i.ProjectID " +
                    "JOIN users u ON u.UserID=i.UserID " +
                    "WHERE u.Username=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);

            resultSet = preparedStatement.executeQuery();

            return resultSet;
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions appropriately
        }
        return null;
    }

    /**
     * Retrieves the projects for a given user.
     *
     * @param username the username of the user
     * @return a list of projects as Object arrays
     */
    public List<Object[]> getProjectsForUser(String username) {
        List<Object[]> projects = new ArrayList<>();
        System.out.println("getProjectsForUser has been invoked with username: " + username);

        try {
            connection = DatabaseConnection.initializeDatabase();

            resultSet = retrieveProjectsResultSet(username);

            while (resultSet.next()) {
                Object[] project = new Object[5];
                project[0] = resultSet.getString("ProjectName");
                project[1] = resultSet.getString("ProjectStatus");
                project[2] = resultSet.getDouble("StartBudget");
                project[3] = resultSet.getDouble("CurrentBudget");
                project[4] = resultSet.getInt("ProjectID");
                projects.add(project);
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

        if (projects.isEmpty()) {
            System.out.println("No projects found.");
        } else {
            for (Object[] project : projects) {
                System.out.println("Project Name: " + project[0]);
                System.out.println("Project Status: " + project[1]);
                System.out.println("Start Budget: " + project[2]);
                System.out.println("Current Budget: " + project[3]);
                System.out.println("ProjectID: " + project[4]);
                System.out.println("--------------------");
            }
        }

        return projects;
    }

    public Object[] getProjectInfo(int projectID) {
        Object[] projectInfo = null;

        try {
            connection = DatabaseConnection.initializeDatabase();

            // Prepare the SQL query to select project data for the given projectID
            String sql = "SELECT ProjectName, ProjectStatus, StartBudget, CurrentBudget FROM Projects WHERE ProjectID = ?";
            preparedStatement = connection.prepareStatement(sql);

            // Set the projectID as a parameter in the prepared statement
            preparedStatement.setInt(1, projectID);

            // Execute the query and obtain the ResultSet
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Retrieve project information from the ResultSet
                String projectName = resultSet.getString("ProjectName");
                String projectStatus = resultSet.getString("ProjectStatus");
                double startBudget = resultSet.getDouble("StartBudget");
                double currentBudget = resultSet.getDouble("CurrentBudget");

                // Store the project information in the projectInfo array
                projectInfo = new Object[]{projectName, projectStatus, startBudget, currentBudget};
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

        // Return the projectInfo array
        return projectInfo;
    }

}
