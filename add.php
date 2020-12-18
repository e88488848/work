<?php
include_once('conn.php');
try {
$sql="insert into  `joke` SET `joketext`=:joketext, `bt`=:bt, `jokedate`=now(), `authorid`=1";
$stmt=$pdo->prepare($sql);


$stmt->execute([
    ':joketext'=>$_POST['joketext'],
   ':bt'=>$_POST['bt']

	]);
$lastid= $pdo->lastInsertId();
echo  $lastid;

Header("Location: index.php");
}catch(PDOException $e) {

  echo  'no success!!'.
   $e->getmessage().'in'.
   $e->getfile().':----------------'.$e->getline();
}
?>


