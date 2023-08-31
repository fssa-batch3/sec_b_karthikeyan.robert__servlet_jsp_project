
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        
        h1 {
            text-align: center;
            padding: 20px;
            color: #333;
        }
        
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 60px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="tel"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        
        
        button {
            background-color: #333;
            color: #fff;
            padding: 10px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        
        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

<h1>Create User</h1>

<form action="createUser" method="post">
    <label for="name">Name:</label>
    <input type="text" name="name" required>
    <br>
    
    <label for="email">Email:</label>
    <input type="email" name="email" required>
    <br>
    
    <label for="phoneNumber">Phone Number:</label>
    <input type="tel" name="phoneNumber" required>
    <br>
    
    <label for="password">Password:</label>
    <input type="password" name="password" required>
    <br>
    
    <button type="submit">Create User</button>
</form>

</body>
</html>

