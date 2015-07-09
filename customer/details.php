<?php
// Source code example for Web Database Applications with PHP and MySQL, 2nd Edition
// Author: Hugh E. Williams, 2001-3
// 
// Unless otherwise stated, the source code distributed with this book can be
// redistributed in source or binary form so long as an acknowledgment appears
// in derived source files.
// The citation should list that the code comes from Hugh E. Williams and David 
// Lane, "Web Database Application with PHP and MySQL" published by O'Reilly & 
// Associates.
//
// This code is under copyright and cannot be included in any other book,
// publication, or educational product without permission from O'Reilly &
// Associates. No warranty is attached; we cannot take responsibility for errors 
// or fitness for use.

// This script shows the user a customer <form>.
// It can be used both for INSERTing a new customer and
// for UPDATE-ing an existing customer. If the customer 
// is logged in, then it is an UPDATE; otherwise, an INSERT.
// The script also shows error messages above widgets 
// that contain erroneous data: errors are generated 
// by validate.php

require_once "DB.php";
require_once "../includes/winestore.inc";
require_once "../includes/authenticate.inc";
require_once "../includes/template.inc";

set_error_handler("customHandler");

// Show meaningful instructions for UPDATE or INSERT
if (isset($_SESSION["loginUsername"]))
   $instructions = "请按要求修改信息";
else
   $instructions = "请填写下列信息";

// Takes <form> heading, instructions, action, formVars name, and formErrors
// name as parameters
$template = new winestoreFormTemplate("用户信息", 
                $instructions, S_VALIDATE, "custFormVars", "custErrors");

session_start();

$connection = DB::connect($dsn, true);
if (DB::isError($connection))
  trigger_error($connection->getMessage(), E_USER_ERROR); 

// Is the user logged in and are there no errors from previous
// validation?  If so, look up the customer for editing
if (isset($_SESSION["loginUsername"]) && 
    !isset($_SESSION["custErrors"]))
{
   // Check the user is properly logged in
   sessionAuthenticate(S_MAIN);

   $query = "SELECT nickname, address, city, state, zipcode, country_id, phone
             FROM users, customer 
             WHERE users.cust_id = customer.cust_id 
             AND user_name = '{$_SESSION["loginUsername"]}'";

   $result = $connection->query($query);
   if (DB::isError($result))
      trigger_error($result->getMessage(), E_USER_ERROR); 

   $row = $result->fetchRow(DB_FETCHMODE_ASSOC);

   // Reset $_SESSION["custFormVars"], since we're loading 
   // from the customer table
   $_SESSION["custFormVars"] = array();

   // Load all the <form> widgets with customer data
   foreach($row as $variable => $value)
      $_SESSION["custFormVars"]["{$variable}"] = $value;
}

// Load the countries from the country table
$countryResult = $connection->query("SELECT * FROM countries");
if (DB::isError($countryResult))
   trigger_error($countryResult->getMessage(), E_USER_ERROR); 

// Create widgets for each of the customer fields
$template->mandatoryWidget("nickname", "昵称:", 50);
$template->mandatoryWidget("address", "地址:", 50);
$template->mandatoryWidget("city", "市/县/州:", 50);
$template->optionalWidget("state", "省/区/市:", 20);
$template->mandatoryWidget("zipcode", "邮编:", 20);
$template->selectWidget("country_id", "国家:",
                        "country", $countryResult);
$template->optionalWidget("phone", "电话:", 20);

// Only show the username/email and password widgets to new users
if (!isset($_SESSION["loginUsername"]))
{
   $template->mandatoryWidget("loginUsername", "邮箱:", 50);
   $template->passwordWidget("loginPassword", "密码:", 20);
   $template->passwordWidget("loginPassword", "确认密码:", 20);
}

// Add buttons and messages, and show the page
$template->showWinestore(NO_CART, B_ALL & ~B_EMPTY_CART & ~B_UPDATE_CART & 
                ~B_PURCHASE & ~B_DETAILS & ~B_LOGINLOGOUT)
?>
