<?php
try {include_once('conn.php');
echo $_POST['id'];

$sql='delete  from `joke` where  `id`=:id';
$stmt=$pdo->prepare($sql);
$stmt->bindValue(':id',$_POST['id']);
$stmt->execute();
Header("Location: index.php");
}catch(PDOException $e) {

  echo  'no success!!'.
   $e->getmessage().'in'.
   $e->getfile().':----------------'.$e->getline();
}
?>


