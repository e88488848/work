<?php
try {
	$pdo = new PDO('mysql:host=localhost;dbname=ijdb;charset=utf8', 'root', '751207');
	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	 $pdo->query('SET NAMES utf8;');
	//echo "it work";
}
catch (PDOException $e) {
   echo  'no success!!'.
   $e->getmessage().'in'.
   $e->getfile().';'.$e->getline();
//  list($strcode,$strcode2,$strinfo)=$PDO->errorinfo();
//  print "pdo code is $strcode ,<br/>drive code is $strcode2,<br/>,
//  info strinf is $strinfo";
 }
   ?>
 