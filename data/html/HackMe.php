<?php

	
function containsStr($str, $substr) {
    return strpos($str, $substr) !== false;
}

/*phpinfo();*/



$ext = isset($_GET["ext"]) ? $_GET["ext"] : '.php';


if(strpos($_GET['submit'], '../../../') == true){
	echo "<h1> Play Another one </h1>";
}


/*preg_replace() exploit */



$_GET['submit'] = str_replace('../', '', $_GET['submit']);

if(isset($_GET['submit'])) {
    if(containsStr($_GET['submit'], 'dog') || containsStr($_GET['submit'], 'cat')) {
        echo 'Here you go!';
        include $_GET['submit'] . $ext;
    } else {
        echo 'Sorry, only dogs or cats are allowed.';
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="submitport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>
<body>
	<form action="./HackMe.php" method="GET">
		<input type="submit" name="submit" value="dog">
	</form>
</body>
</html>







