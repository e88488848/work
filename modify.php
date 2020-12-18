<?php include_once('conn.php');
try{
$sql="select `bt`,`joketext` from `joke` where `id`=:id";
$stmt=$pdo->prepare($sql);
$stmt->bindValue(':id',$_POST['id']);
$stmt->execute();
foreach($stmt as $row) {
    $joke[] = ['bt' => $row[`bt`], `joketext` => $row[`joketext`]];
}
?>
<!DOCTYPE>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<title>无标题文档</title>
<script>
 function(){
var bt=document.getElementById("bt");
var bt2=document.getElementById("bt2");
bt.value=bt2.value;
console.log('bt');
};
</script>
</head>
<body >
<form id="form1" name="form1" method="post" action="modifResult.php">
<p><label>标题</label></p>
<input type="text" name="bt2" id="bt2" value="<?=$row['bt']?>"/>
<input name="bt" id="bt" type="hidden" value="<?=$row['bt']?>" >
<p><label>内容</label></p>
  <textarea name="joketext2" id="joketext2"  cols="100" rows="5"><?=$row['joketext']?></textarea>
  <input name="joketext" id="joketext" type="hidden" value="大悲咒" >
  <input name="id" type="hidden" value="<?=$_POST['id']?>">
   <input type="submit" id="Submit" name="Submit" onClick="function()" value="go" />
</form>
    <?php
 }
   catch (PDOException $e) {
  echo  'no success!!'.
   $e->getmessage().'in'.
   $e->getfile().':----------------'.$e->getline();
}
?>





</body>
</html>
