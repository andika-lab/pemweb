<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>halaman login</title>
</head>
<body>
    <form action="./backend/login.php" method="POST">
    <h1>welcome to halaman login</h1>
        <input type="email" name="email" id="email" placeholder="email">
        <input type="password" name="password" id="password" placeholder="password">
        <button type="submit">login</button>
    </form>
</body>
</html>
<style>

body {
    font-family: Arial, sans-serif;
    background-image: url(img/1.jpg);
    background-position: center;
    background-size: cover;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}


form {
    background-color: rgba(0, 0, 0, 0.5);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 300px;
    display: flex;
    flex-direction: column;
}

form h1 {
    color: white;
    margin-bottom: 20px;
    text-align: center;
}

input[type="email"],
input[type="password"] {
    border: 1px solid #ddd;
    border-radius: 20px;
    border-color: purple;
    padding: 10px;
    margin-bottom: 15px;
    font-size: 14px;
    width: 100%;
    box-sizing: border-box;
}

input[type="email"]:focus,
input[type="password"]:focus {
    border-color: plum;
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
}

button[type="submit"] {
    background-color: purple;
    color: #fff;
    border: none;
    border-radius: 20px;
    padding: 10px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
    background-color: plum;
}

@media (max-width: 600px) {
    form {
        width: 90%;
    }
}

</style>