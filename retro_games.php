<!DOCTYPE>
<html>
<head>

<title>Display Data</title>

</head>
<body>
<?php
// This section connects to the database or throws the relevant errors
$servername = "localhost";
$user = "root";
$password = "";
$database = "Japanese games galore";

$connect = mysqli_connect($servername,$user,$password);
$db_found = mysqli_select_db($connect,$database) or mysqli_connect_error("Database not found");

if(mysqli_errno($connect))
{
    echo "Can't Connect to mySQL:".mysqli_connect_error();
} //End of connection section

if (isset($_POST['Game_Name'])) {

    $game = mysqli_real_escape_string($connect,$_POST['Game_Name']);

$fetch = "SELECT Game_Name, Console_Name, Primary_Genre, Secondary_Genre, ESRB_Rating, Developer_Name, Release_Date FROM games
WHERE Game_Name = '".$game."'" or trigger_error("Query Failed! SQL: $fetch - Error: ".mysqli_error($connect), E_USER_ERROR);
$result = mysqli_query($connect,$fetch) or trigger_error("Fetch Failed! SQL: $fetch - Error: ".mysqli_error($connect), E_USER_ERROR);
// I choose trigger error and worded it in such a way as to give me more informative errors. It's superior to 'die'

if(empty($game)){
  echo '<div style="margin-left: 30%;">
  <img src = "talkingdragon.png" />
  </div>';
}
if(!$result)
{
echo "Error:".(mysqli_error($connect));
}
if(!empty($game))
{
  echo "<div style='text-align:center;'>
  <h1>Game Selection Results</h1>
  </div>
  <br />";
  echo "<table border=1>
  <tr>

  <th>Game Name</th>
  <th>Console Name</th>
  <th>Primary Genre</th>
  <th>Secondary Genre</th>
  <th>ESRB Rating</th>
  <th>Developer Name</th>
  <th>Release Date</th>

  </tr>";
}  // This fetches the records from the database

while ($record = mysqli_fetch_row($result)) {
echo "<tr>";
  echo "<td>".$record['0']."</td>";
  echo "<td>".$record['1']."</td>";
  echo "<td>".$record['2']."</td>";
  echo "<td>".$record['3']."</td>";
  echo "<td>".$record['4']."</td>";
  echo "<td>".$record['5']."</td>";
  echo "<td>".$record['6']."</td>";

  echo "</tr>";
}

echo "</table>";

}

mysqli_close($connect);

?>
<br />

<a href="retro_games_list.php"> Return to Retro List </a>
</body>
</html>
