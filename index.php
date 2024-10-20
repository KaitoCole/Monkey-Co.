<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
    <label>Search</label>
    <input type="text" name="search">
    <input type="submit" value="Search">
    
</body>
</html>

<?php include 'Units.php'; 
    if (isset($_POST['search'])){
        $str = $_POST['search'];
        $query = ("SELECT * FROM 'search' WHERE 'Units' = '$str'");
        $sth = $conn->query($query);

        if ($result = $sth->fetch(PDO::FETCH_ASSOC)){
            echo "Unit Name: " . $result['unit_name'];
        } else {
            echo "No results found";
        }
    }
    ?>