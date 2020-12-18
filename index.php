<?php
include_once('conn.php');
try {
	$sql="select `id`,`bt`,`joketext` from `joke` order by `id` desc";
	$result=$pdo->query($sql);
	while($row=$result->fetch()){
	$jokes[]=['id'=>$row['id'],
	'bt'=>$row['bt'],
	'joketext'=>$row['joketext']];
	}
 foreach($jokes as  $joke):
 
 echo '<blockquote>';
 echo  '<hr/>';
 echo '<p>';
 
 echo   '第'.$joke['id'] .':'.'&nbsp'.'标题：'.$joke['bt'].'内容：'.$joke['joketext'];
  ?>
<li>
<a href="add.html" title="add">add</a>
<form action="dele.php" method="post" name="dele">
<input name="id" type="hidden" value="<?=$joke['id'];?>">
<input name="删除" type="submit" value="删除">
</form>


<form action="modify.php" method="post" name="add">

<input name="id" type="hidden" value="<?=$joke['id'];?>">
<input name="修改" type="submit" value="修改" />
</form>
</li>
 <?php echo '<p>'; ?>
 <?php  echo '</blockquote>';?>
  <?php   endforeach; ?>
  <?php 
  }

catch (PDOException $e) {
   echo  'no success!!'.
   $e->getmessage().'in'.
   $e->getfile().';'.$e->getline();
   }
   ?>