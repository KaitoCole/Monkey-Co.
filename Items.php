<?php 

try { 
    $conn = new PDO ('mysql:host=127.0.0.1;dbname=monkeyapi','root',''); /* try niya mag connect sa database */
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = "SELECT * from items";
    $result = $conn->query($sql);

    if ($result){
        header("Content-Type: JSON"); /* reason bakti gumagana yung pampaganda ng print */
        $i = 0;
        while($row = $result->fetch(PDO::FETCH_ASSOC)) { /* taga kuha ng data sa database*/
            $monkey[$i]['item_id'] = $row['item_id'];
            $monkey[$i]['item_name'] = $row['item_name'];
            $monkey[$i]['item_type'] = $row['item_type'];
            $monkey[$i]['item_description'] = $row['item_description'];
            $monkey[$i]['item_requirement'] = $row['item_requirement'];
            $i++;
        }
        echo json_encode($monkey,JSON_PRETTY_PRINT);/* pam paganda lang ng print niya */
        
    } else {
        echo "Monkey no connect";
    }
} catch(PDOException $e) { /* pag hindi siya nakakunit itoh lalabas kasama kung bakit hindi siya nag connect */
    echo "Monkey Error: ". $e->getMessage();
}

?>