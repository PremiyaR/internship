<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book Result</title>
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
    }

    .container {
        max-width: 400px;
        background-color: #fff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h2 {
        color: #333;
        margin-bottom: 20px;
    }

    p {
        margin-bottom: 20px;
    }

    a {
        text-decoration: none;
        color: #4CAF50;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Add Book Result</h2>
        <% boolean status = (boolean) request.getAttribute("status"); %>
        <% if (status) { %>
            <p>Book added successfully!</p>
            <a href="ShowBooksServlet">View all books</a>
        <% } else { %>
            <p>Error occurred while adding the book.ID that you have entered might already exists.
Please recheck the details and add a correct ID.</p>
        <% } %>
        
        <a href="index.jsp">Go home</a>
        
    </div>
</body>
</html>

