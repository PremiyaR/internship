<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('backgroundLibrary.jpg'); 
            background-size: cover;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 100px auto;
            text-align: center;
            color: #fff;
        }
        h1 {
            color: #fff;
        }
        .navigation {
            margin-top: 30px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .navigation a {
            display: block;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 10px 20px;
            margin: 10px 0;
            border-radius: 5px;
            transition: background-color 0.3s;
            width: 200px;
            text-align: center;
        }
        .navigation a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Library Database</h1>
        <div class="navigation">
            <a href="addBook.html">Add new Book</a>
            <a href="deleteResult.html">Delete Book</a>
            <a href="searchBook.html">Search Book by Author</a>
            <a href="updateBook.html">Update Book title by ID</a>
            <a href="ShowBooksServlet">Display the list of available books</a>
        </div>
    </div>
</body>
</html>
