
<?php
try { 
    $conn = new PDO ('mysql:host=127.0.0.1;dbname=monkeyapi','root','');
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * from units";
    $result = $conn->query($sql);

    if ($result){
        header("Content-Type: JSON");
        $i = 0;
        while($row = $result->fetch(PDO::FETCH_ASSOC)) {
            $monkey[$i]['unit_id'] = $row['unit_id'];
            $monkey[$i]['unit_name'] = $row['unit_name'];
            $monkey[$i]['unit_passive'] = $row['unit_passive'];
            $monkey[$i]['unit_rarity'] = $row['unit_rarity'];
            $monkey[$i]['unit_evolution'] = $row['unit_evolution'];
            $monkey[$i]['unit_cost'] = $row['unit_cost'];
            $monkey[$i]['unit_placement'] = $row['unit_placement'];
            $monkey[$i]['unit_type'] = $row['unit_type'];
            $i++;
        }
        echo json_encode($monkey,JSON_PRETTY_PRINT);
    } else {
        echo "Monkey no connect";
    }
} catch(PDOException $e) {
    echo "Error: ". $e->getMessage();
}
?>


