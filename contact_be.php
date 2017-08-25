<?php
// check if fields passed are empty

if(empty($_POST['name'])  		||
   empty($_POST['phone']) 		||
   empty($_POST['email']) 		||
         empty($_POST['subject']) 		||
   empty($_POST['message'])	||
   !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
   {
	echo "Incorrect Details given!";
	return false;
   }
// define variables and set to empty values
 $name = $email = $phone = $message = $sub= "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = test_input($_POST["name"]);
  $email = test_input($_POST["email"]);
  $phone = test_input($_POST["phone"]);
   $sub = test_input($_POST["subject"]);
  $message = test_input($_POST["message"]);
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

$to = "info@planofaction.in";  

$message = "
<html>
<head>
<title>HTML email</title>
</head>
<body>
<table>
<tr>
<th>Name</th>
<td>$name</td>
</tr>
<tr>
<th>Contact No</th>
<td>$phone</td>
</tr>
<tr>
<th>Email</th>
<td>$email</td>
</tr>
<tr>
<th>Subject</th>
<td>$sub</td>
</tr>
<tr>
<th>Query</th>
<td>$message</td>
</tr>
</table>
</body>
</html>
";

// Always set content-type when sending HTML email
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

// More headers
//$headers .= 'From:'.'query@pranayogpeeth.com'."\r\n";
$headers .= 'From:'.$email."\r\n";
$headers .= "Reply-To:".$email."\r\n";
//$headers .= 'Cc: abhiiverma@gmail.com' . "\r\n";  //need to change the Cc before the website goes live
//$headers .= 'BCc: abhiiverma@gmail.com' . "\r\n";  //need to change the BCc before the website goes live
$subject = "Query".$sub."\r\n";           
//echo $message;
if(mail($to,$subject,$message,$headers))
return true;
else
return false;
?>