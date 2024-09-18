<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testbed for various functions</title>
</head>
<h1>Testbed for various webdev stuff. If users are seeing this trevor forgot to remove the link to it</h1><br>
<body>
    <p>Welcome, <%= request.getAttribute("username") %>!</p><br>
    <p>Welcome, <%= session.getAttribute("username") %>!</p>
    Need to get project info to print basically<br>
    
    <%@ page import="com.project.projects.ViewProjects" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
    <%@ page import="java.lang.Object" %>
    
    <%@ page import="com.project.tasks.ViewTasks" %>
    <%
        // Retrieve the username from the session
        String username = (String) session.getAttribute("username");

        // Create an instance of the ViewProjects
        ViewProjects viewProjects = new ViewProjects();

        // Call the getProjectsForUsers method to retrieve the project data
        List<Object[]> projects = viewProjects.getProjectsForUser(username);
    %>    
    
     <% 
        // Instantiate the ViewTasks class
        ViewTasks viewTasks = new ViewTasks();

        // Retrieve tasks for a specific user
        List<Object[]> tasks = viewTasks.getTasksForUser(username);
    %>
    
    
    <h1>Projects</h1>
    <table>
        <tr>
            <th>Project Name</th>
            <th>Project Status</th>
            <th>Start Budget</th>
            <th>Current Budget</th>
        </tr>
        <% for (Object[] project : projects) { %>
            <tr>
                <td><%= project[0] %></td>
                <td><%= project[1] %></td>
                <td><%= project[2] %></td>
                <td><%= project[3] %></td>
            </tr>
        <% } %>
    </table><br>
    
<!--  Tasks  -->    
<h1>Tasks:</h1>
    
<% if (tasks.isEmpty()) { %>
    <p>No tasks found.</p>
<% } else { %>
    <table>
        <tr>
            <th>Task ID</th>
            <th>Project ID</th>
            <th>Task Start Date</th>
            <th>Deadline</th>
            <th>Task End Date</th>
            <th>Task Status</th>
            <th>Task Blurb</th>
            <th>Task Difficulty</th>
        </tr>
        <% for (Object[] task : tasks) { %>
            <tr>
                <td><%= task[0] %></td> <!-- Task ID -->
                <td><%= task[1] %></td> <!-- Project ID -->
                <td><%= task[2] %></td> <!-- Task Start Date -->
                <td><%= task[3] %></td> <!-- Deadline -->
                <td><%= task[4] %></td> <!-- Task End Date -->
                <td><%= task[5] %></td> <!-- Task Status -->
                <td><%= task[6] %></td> <!-- Task Blurb -->
                <td><%= task[7] %></td> <!-- Task Difficulty -->
            </tr>
        <% } %>
    </table>
<% } %>

    
    <a href=homepage.jsp>homepage</a>|<a href=landingpage.jsp>landingpage</a>

</body>
</html>
