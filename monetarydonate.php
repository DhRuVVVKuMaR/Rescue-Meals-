<?php
session_start();

if (!isset($_SESSION['first_name'])) {
    header("Location: signin.php");
    exit();
}

// Database connection
$connection = mysqli_connect("localhost", "root", "", "dswproject");

if (!$connection) {
    die("Connection failed: " . mysqli_connect_error());
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $amount = $_POST['amount'];
    $payment_method = $_POST['payment_method'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password']; // Password entered by user
    $phone = $_POST['phone'];
    $address = $_POST['address'];

    // Check if the user exists and verify password
    $query = "SELECT password FROM users WHERE email = '$email'";
    $result = mysqli_query($connection, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);

        if (password_verify($password, $row['password'])) {
            // Insert donation details into the database
            $donation_query = "INSERT INTO donations (amount, payment_method, name, email, phone, address) 
                               VALUES ('$amount', '$payment_method', '$name', '$email', '$phone', '$address')";

            if (mysqli_query($connection, $donation_query)) {
                $success_message = "Thank you for your donation!";
            } else {
                $error_message = "Error: " . mysqli_error($connection);
            }
        } else {
            $error_message = "Invalid email or password.";
        }
    } else {
        header("Location: signup.php");
        exit();
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="monetarydonate.css">
    <title>Monetary Donation</title>
</head>
<body>
    <h1>Monetary Donation</h1>

    <?php
    // Display success or error messages
    if (isset($success_message)) {
        echo "<p style='color: green; text-align: center;'>$success_message</p>";
    }

    if (isset($error_message)) {
        echo "<p style='color: red; text-align: center;'>$error_message</p>";
    }
    ?>

    <form action="monetarydonate.php" method="POST">
        <label for="amount">Donation Amount (INR):</label>
        <input type="number" id="amount" name="amount" placeholder="Enter amount" required>

        <label for="payment_method">Payment Method:</label>
        <select id="payment_method" name="payment_method" required>
            <option value="Credit Card">Credit Card</option>
            <option value="PayPal">PayPal</option>
            <option value="UPI">UPI</option>
            <option value="Bank Transfer">Bank Transfer</option>
        </select>

        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>

        <label for="phone">Phone No:</label>
        <input type="tel" id="phone" name="phone" placeholder="Enter your phone number" required>

        <label for="address">Address:</label>
        <textarea id="address" name="address" placeholder="Enter your address" rows="4" required></textarea>

        <button type="submit">Donate</button>
    </form>

    <a href="welcome.php">Back to Dashboard</a>
</body>
</html>
