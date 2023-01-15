<?php  


if (isset($_POST['email'])) {
	include 'db_conn.php';

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$email = validate($_POST['email']);
 
	if (empty($email)) {
		header("Location: index.html");
	}else {

		$sql = "INSERT INTO ehealthsubscribe(email) VALUES('$email')";
		$res = mysqli_query($conn, $sql);

		if ($res) {
			echo "Your message was sent successfully!";
			header("Location: index.html");
		}else {
			echo "Your message could not be sent!";
			header("Location: index.html");
		}
	}

}else {
	header("Location: index.html");
}