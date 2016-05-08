<?php

define("_SERVER", "localhost");
define("_db_Username", "root");
define("_db_PASS", "");
define("_db_name", "webt");

// Create connection
function connect_db() {
$conn = new mysqli(_SERVER, _db_Username, _db_PASS, _db_name);
$res = array("'con" => $conn, "isConnected" => false);
// Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);       
    } else {
        $res["isConnected"]= "true";
        $res["con"] = $conn;
        return $res;
    }
}

