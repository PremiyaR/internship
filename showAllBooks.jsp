<%@ page language="java" import="zuci.lms.model.Library, java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Books</title>
    <style>
        body { text-align: center; }
        #bookList { margin: 20px auto; }
        table { border-collapse: collapse; width: 80%; margin: auto; }
        th, td { border: 1px solid black; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h2>All Books</h2>
    <div id="bookList">
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
    </div>
    <div id="homeButton">
        <a href="index.jsp">Go home</a>
    </div>
</body>
</html>

