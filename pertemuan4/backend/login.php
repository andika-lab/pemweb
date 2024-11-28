<?php

if(isset($_POST['email'])  || isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    if($email == 'andika@admin.com' && $password == '123') {
        header("location: ./../dashboard.php");

    } else {
        echo "email atau password salah";
    }
}

    ?>