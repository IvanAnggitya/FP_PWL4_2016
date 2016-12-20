<html>
<head><title>View -
GuestBook</title></head>
<body bgcolor="#99CCFF">
 <h3>View GuestBook</h3>
 <hr size=1 width=100%>
 <?php
 require("koneksi.php");
 $link=open_connection();
 $tablename="member";
 $sqlstr="SELECT * FROM
$tablename ORDER BY id DESC";
 $result = mysql_query
($sqlstr) or die ("Invalid
query");
 while ($row =
mysql_fetch_object ($result)){
 $nama=$row->nama;
 $password=$row-
>password;
 $ktp=$row->ktp;
 $umur=$row->umur;
 $telp=$row->telp;

$alamat=stripslashes($row-
>alamat);
 echo("<b>Nama </b>:
$nama<br>");
 echo("<b>Password
</b>: $password<br>");
 echo("<b>No. KTP
:</b> $ktp<br>");
 echo("<b>Umur :</b>
$umur<br>");
 echo("<b>Telepon
:</b>$umur<br>");
 echo("<b>Alamat
:</b>$alamat<br>");
 echo("<hr size=1
width=100%>");
}
mysql_close($link);
?>
 <a href="login.php">Form
- Login</a>
</body>
</html>