<?php
require_once 'configDB.php'


$sql="SELECT * FROM books order by title";
$stmt=$db->query($sql);

echo json_encode($stmt->fetchAll());


?>