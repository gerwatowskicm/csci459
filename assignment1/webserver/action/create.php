<?php

require_once 'db_connect.php';

if($_POST) {
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];

    $sql = "INSERT INTO testtable (fname, lname) VALUES ('$fname', '$lname')";
    if($connect->query($sql) === TRUE) {
        echo "<p>New Record Successfully Created</p>";
        echo "<a href='../create.php'><button type='button'>Back</button></a>";
        echo "<a href='../index.php'><button type='button'>Home</button></a>";
    } else {
        echo "Error " . $sql . ' ' . $connect->connect_error;
    }

    $connect->close();
}

?>
