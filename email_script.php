<?php


$filename = "1.txt";


// ----------------------------------------------------------- //
$sender = "ddatta_dac@VT";
$body = "";
$header = "";
$content = " Zilch! ";


$separator = md5(time());
$eol = "\r\n";

$headers  = "From: " .$sender.  $eol;
$headers .= "Reply-To: debanjan.907@gmail.com" . $eol;
$headers .= "MIME-Version: 1.0" . $eol;
$headers .= 'X-Mailer: PHP/' . phpversion().$eol;
$headers .= "Content-Type: multipart/mixed; boundary=\"" . $separator . "\"" . $eol;
$headers .= "Content-Transfer-Encoding: 7bit" . $eol;
$headers .= "This is a MIME encoded message." . $eol;

$body .= "--" . $separator . $eol;
$body .= "Content-Type: application/octet-stream; name=\"" . $filename . "\"" . $eol;
$body .= "Content-Transfer-Encoding: base64" . $eol;
$body .= "Content-Disposition: attachment" . $eol;
$body .= $content . $eol;
$body .= "--" . $separator . "--";

$to      = 'debanjan.907@gmail.com';
$subject = 'Data attachment';
$message = 'Please find the attachment';

//$headers = 'From: ddatta_dac@VT' . "\r\n" .
//    'Reply-To: debanjan.907@gmail.com' . "\r\n" .
//    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $body, $headers);

?>
