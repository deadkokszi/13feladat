<?php
require_once 'db.php';
$sql="SELECT count(*) nr,gyakorisag from faj where vedett=0 group by gyakorisag";
$stmt=$db->query($sql);
echo json_encode($stmt->fetchAll());

?>