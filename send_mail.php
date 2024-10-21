<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'PHPMailer-master/src/Exception.php';
require 'PHPMailer-master/src/PHPMailer.php';
require 'PHPMailer-master/src/SMTP.php';

// Check if form is submitted
if (isset($_POST["send"])) {
    // Get form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    // Validate input
    if (!empty($name) && !empty($email) && !empty($message)) {
        // Validate email format
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            echo "<script>alert('Invalid email format.'); window.location.href = 'contact.php';</script>";
            exit();
        }

        // Create a new PHPMailer instance
        $mail = new PHPMailer(true);

        try {
            // Server settings
            $mail->isSMTP();                                      // Send using SMTP
            $mail->Host       = 'smtp.gmail.com';               // Set the SMTP server to send through
            $mail->SMTPAuth   = true;                            // Enable SMTP authentication
            $mail->Username   = 'shantanup234@gmail.com';        // Your Gmail address
            $mail->Password   = 'jdcqoijepvchnsnb';             // Your App Password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;  // Enable TLS encryption
            $mail->Port       = 587;                             // TCP port to connect to

            // Recipients
            $mail->setFrom('shantanup234@gmail.com', 'Website Contact Form');
            $mail->addAddress('shantanup234@gmail.com');  // Your email address to receive the message

            // Content
            $mail->isHTML(true);                                  // Set email format to HTML
            $mail->Subject = 'New Contact Form Submission';
            $mail->Body    = "
                <h2>Contact Form Submission</h2>
                <p><strong>Name:</strong> $name</p>
                <p><strong>Email:</strong> $email</p>
                <p><strong>Message:</strong><br>$message</p>
            ";
            $mail->AltBody = "Name: $name\nEmail: $email\nMessage: $message";

            // Disable SMTP debug output
            $mail->SMTPDebug = 0;

            // Send the email
            $mail->send();
            
            // Success message in JavaScript alert
            echo "<script>alert('Message has been sent successfully!'); window.location.href = 'index.php';</script>";
        } catch (Exception $e) {
            // Error message in JavaScript alert
            echo "<script>alert('Message could not be sent. Mailer Error: {$mail->ErrorInfo}'); window.location.href = 'index.php';</script>";
        }
    } else {
        echo "<script>alert('Please fill in all fields.'); window.location.href = 'index.php';</script>";
    }
} else {
    echo "<script>alert('Invalid request method.'); window.location.href = 'index.php';</script>";
}
?>
