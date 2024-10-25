<?php

// PHP Data Objects(PDO) Sample Code:

try {

  $conn = new PDO("sqlsrv:server = tcp:psenatidb.database.windows.net,1433; Database = senati-db", "STD", "senati@2024");

  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}

catch (PDOException $e) {

  print("Error connecting to SQL Server.");

  die(print_r($e));

}



// SQL Server Extension Sample Code:

$connectionInfo = array("UID" => "STD", "pwd" => "senati@2024", "Database" => "senati-db", "LoginTimeout" => 30, "Encrypt" => 1, "TrustServerCertificate" => 0);

$serverName = "tcp:psenatidb.database.windows.net,1433";

$conn = sqlsrv_connect($serverName, $connectionInfo);

?>