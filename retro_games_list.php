<!DOCTYPE HTML>
<html>
<head>
<title>Retro Games List</title>
<metacharset ='utf-8'>
<style>

/*The font pacifico calls the Google API*/
@import url('https://fonts.googleapis.com/css?family=Pacifico');

body {background: url(Chrono_bg.png);}

h1{color:#DAA520;font-size:60px; font-family:'Pacifico', cursive; text-align: center;}
div.form
{
    display: block;
    text-align: center;
}
form
{
    display: inline-block;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
    margin-top: 5%;
    width: 200px;
    height: 50px;
    border-radius: 20px;
    /*The line above gives us rounded corners*/
}

</style>
</head>
<body>

  <div class="title">
  <h1>Retro Games List</h1>
  </div>
<div class="form">
<!-- I choose the method post for security reasons -->
<form name="form_update" method="post" action="retro_games.php" text-align="center">

<?php
$servername = "localhost";
$user = "root";
$password = "";
$database = "Japanese games galore";

$connect = mysqli_connect($servername,$user,$password);
$db_found = mysqli_select_db($connect,$database);
// I included the db_found var because adding the database var was causing problems

if(mysqli_errno($connect))
{
    echo "Can't Connect to mySQL:".mysqli_connect_error();
}

//=============================
echo "<select name= 'Game_Name'>";
echo "<option value=''>".'--- Please Select a Game ---'."</option>";
//This 'Please select a Game' option ties in with the javascript <script> below, its why you specify the [0] element in the list-array

$query = "SELECT Game_Name FROM games WHERE Game_ID < 11 OR Console_Name = 'PlayStation' OR Game_ID > 28";
$result = mysqli_query($connect, $query);

while($record=mysqli_fetch_array($result))
{
    echo "<option value='". $record['Game_Name']."'>".$record['Game_Name']
 .'</option>';
} //This populates the rest of the list from the video games database

echo "</select>";
echo "<br />";
?>
<br /><input type="submit" name="submit" value="Submit"/>
</form>
</div>

<br/><br/>

<a href="http://localhost/Website_proj/Buttons_bg/Video_games.html" style="float:left;"> Go back to home page </a>

<script>
    document.getElementsByTagName("select")[0].setAttribute("style", "width: 200px; height: 50px; border-radius: 20px;");
    document.getElementsByTagName("input")[0].setAttribute("style", "width: 100px; height: 25px; border-radius: 20px; margin-left: 50px;");
</script>

</body>
</html>
