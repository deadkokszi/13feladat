<?php
require_once 'db.php';
$sql="SELECT halid,nev FROM faj order by nev";
$stmt=$db->query($sql);
echo json_encode($stmt->fetchAll());

?>