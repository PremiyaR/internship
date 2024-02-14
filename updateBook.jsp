<%@ page import="zuci.lms.model.Library" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Updated Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        .error-message {
            color: red;
            font-weight: bold;
        }
        .center-top {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin-top: 50px; /* Adjust as needed */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row center-top">
            <div class="col">
                <h1>Updated Details</h1>
            </div>
        </div>
        <% Library bookList = (Library)request.getAttribute("book"); %>
        <c:if test="${not empty requestScope.book}">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Title</th>
                        <th scope="col">Author</th>
                        <th scope="col">ISBN</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%=bookList.getBookId() %></td>
                        <td><%=bookList.getBookTitle() %></td>
                        <td><%=bookList.getBookAuthor() %></td>
                        <td><%=bookList.getBookIsbn() %></td>
                    </tr>
                </tbody>
            </table>
        </c:if>
        <c:if test="${empty requestScope.book}">
            <div class="error-message">
                <pre>Something went wrong while trying to update the request.
                Please recheck if the correct input is entered.</pre>
            </div>
        </c:if>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
