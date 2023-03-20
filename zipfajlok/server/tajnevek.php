<?php
require_once 'db.php';
extract($_GET);
$sql="SELECT tajnev FROM nev WHERE halid={$id}";
$stmt=$db->query($sql);
echo json_encode($stmt->fetchAll());

?>