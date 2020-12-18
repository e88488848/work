<?php
include_once('conn.php');
echo '<br>';
echo $_POST['id'];
echo '<br>';
echo $_POST['bt'];
echo '<br>';
echo $_POST['joketext'];
echo '<br>';
try {
$sql="update `joke` set `bt`=:bt,`joketext`=:joketext where `id`=:id";
$stmt=$pdo->prepare($sql);
$stmt->bindParam(':id',$_POST['id'],PDO::PARAM_STR);
$stmt->bindParam(':joketext',$_POST['joketext'],PDO::PARAM_STR);
$stmt->bindParam(':bt',$_POST['bt'],PDO::PARAM_STR);
$stmt->execute();
//Header("Location:index.php");
}

catch (PDOException $e) {
   echo  'no success!!'.
   $e->getmessage().'in'.
   $e->getfile().';'.$e->getline();
   }
   ?>