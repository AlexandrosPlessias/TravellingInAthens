<?php

session_start();
session_destroy();
$redirectUrl= "index.html";
header("Location: ".$redirectUrl);
?>