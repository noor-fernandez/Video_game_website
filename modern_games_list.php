<!DOCTYPE>
<html>
<head>
<title>Drop down list for modern games</title>
<style>
@import url(//db.onlinewebfonts.com/c/36296f8c96973a486831dd2d07f546af?family=Last+Ninja);

@font-face {
   font-family: LastNinja;
   src: url("//db.onlinewebfonts.com/t/36296f8c96973a486831dd2d07f546af.ttf") format("truetype");
   src: url("//db.onlinewebfonts.com/t/36296f8c96973a486831dd2d07f546af.woff2") format("woff2");
   src: url("//db.onlinewebfonts.com/t/36296f8c96973a486831dd2d07f546af.woff") format("woff");
} /*These three formats provide adequate (but not extensive) font coverage for different types of browsers. It is designed to display in modern browsers.*/

body {
    height: auto;
    background: #3B3738; /* For browsers that do not support gradients */
    background: -webkit-linear-gradient(silver, #3B3738); /* For Safari 5.1 to 6.0 */
    background: -o-linear-gradient(silver, #3B3738); /* For Opera 11.1 to 12.0 */
    background: -moz-linear-gradient(silver, #3B3738); /* For Firefox 3.6 to 15 */
    background: linear-gradient(silver, #3B3738); /* Standard syntax (must be last) */
}
div.title{margin-left:35%;}
div.titania {
      width: 700px; height: 1000px;
      float: right ;margin-right:180px; margin-top:-60px; margin-bottom: 20%;
}
h1{color:#008080;font-size:30px; font-family:Last Ninja, sans-serif;}
div.form
{
    display: block;
    text-align: right;
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

@media screen and (min-width:1201px){.titania{float:right;  margin-right:-2%; margin-top:-30px; margin-bottom:20%;} .XSMtitania, .SMtitania{display:none;}}
 @media screen and (min-width: 965px) and (max-width:1200px)  {.XSMtitania, .SMtitania{display:none;} .titania{float:right;  margin-right:-10%; margin-top:-30px; margin-bottom:20%; }}
 @media screen and (min-width:762px) and (max-width:964px) {.SMtitania{float:right; margin-right:-48px;}.XSMtitania, .titania{display:none;}}
  @media screen and (min-width: 501px) and (max-width:761px){.XSMtitania{float:right; margin-right:8%;}.titania, .SMtitania{display:none;}}
@media screen and (max-width: 500px){.XSMtitania{float:right; margin-right:2%;} .SMtitania, .titania{display:none;}}
/*These media queries are here so images can appropriately scale to different sized images.*/

</style>
</head>
<body>
  <div class="title">
  <h1>Modern Games List</h1>
  </div>
  <div class="titania" >
 <img src= "Ferd-titania.png" width="800" height="1200"/>
     </div>
      <div class="SMtitania" >
 <img src= "Ferd-titania.png" width="250" height="400"/>
     </div>
     <div class="XSMtitania" >
 <img src= "Ferd-titania.png" width="150" height="300"/>
     </div>

     <div class="form">

<form name="form_update" method="post" action="modern_games.php">
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

echo "<select name= 'Game_Name'>";
echo '<option value="">'.'--- Please Select a Game ---'.'</option>';
//This 'Please select a Game' option ties in with the javascript <script> below, its why you specify the [0] element in the list-array

$query = "SELECT Game_Name FROM games WHERE Game_ID BETWEEN 11 AND 19 OR Game_ID BETWEEN 23 AND 28";
$result = mysqli_query($connect, $query);

while($record=mysqli_fetch_array($result))
{
    echo "<option value='". $record['Game_Name']."'>".$record['Game_Name']
 .'</option>';
} //This populates the rest of the list from the video games database

echo '</select>';
echo "<br />";
?> <br /><input type="submit" id="submit_btn" name="submit" value="Submit"/>
</form>
</div>

<br/><br/>
<a href="http://localhost/Website_proj/Buttons_bg/Video_games.html" style="float: left;"> Go back to Home Page </a>

<script>
    document.getElementsByTagName("select")[0].setAttribute("style", "width: 200px; height: 50px; border-radius: 20px;");
    document.getElementsByTagName("input")[0].setAttribute("style", "width: 100px; height: 25px; border-radius: 20px; margin-left: 50px;");
</script>

</body>
</html>
