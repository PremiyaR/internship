<%@ page language="java" import="zuci.lms.model.Library,java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
    <style>
        body { text-align: center; }
        table {
            border-collapse: collapse;
            width: 50%;
            margin: auto;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Search Results</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>ISBN</th>
        </tr>
        <% List<Library> bookList = (List<Library>) request.getAttribute("rest");
           for (Library book : bookList) { %>
            <tr>
                <td><%= book.getBookId() %></td>
                <td><%= book.getBookTitle() %></td>
                <td><%= book.getBookAuthor() %></td>
                <td><%= book.getBookIsbn() %></td>
            </tr>
        <% } %>
    </table>
    <br><br>
    <a href="index.jsp">Go home</a>
</body>
</html>
