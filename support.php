<?php
session_start();

if (!isset($_SESSION['first_name'])) {
    header("Location: signin.php");
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="support.css">
    <title>Support</title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="home.html">Rescue<b> Meals</b></a>
        </div>
        <nav class="nav-bar">
            <ul>
                <li><a href="home.html">Home</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="profile.php">Profile</a></li>
                <li><a href="support.php" class="active">Support</a></li>
            </ul>
        </nav>
    </header>

    <div class="content">
        <h1>Support Us</h1>
        <p>Thank you for considering supporting our cause. Your contributions help us rescue and distribute meals to those in need.</p>
        <a href="monetarydonate.php" class="donate-button">Donate Now</a>
    </div>
</body>
</html>
