<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Book Deletion Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
            text-align: center; /* Align the text to the center */
        }

        p {
            margin-bottom: 20px;
            font-size: 18px;
        }

        pre {
            font-size: 16px;
        }

        ol {
            margin-left: 20px;
        }
    </style>
</head>
<body>
    <h1>Book Deletion Status</h1>
    <% 
    // Retrieve the status from the request attribute
    Boolean status = (Boolean) request.getAttribute("status");
    if (status != null && status) {
    %>
        <p>Book deleted successfully!</p>
        <a href="index.jsp">Go home</a>
    <% } else { %>
        <p>Failed to delete the book.
        There might be a few reasons why this could have happened.
        </p>
        <ol>
            <li>Check the spelling of the book entered.</li>
            <li>Make sure the book already exists.</li>
            <li>Check for special characters such as ":" if it exists in the title.</li>
            <a href="deleteResult.html">Go back</a>
        </ol>
    <% } %>
</body>
</html>
