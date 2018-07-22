<?php

if (($_POST['selected_country'])) {
  exit();
}else {
  include 'connection.php';
  include 'country_codes.php';
  $country=$_POST['selected_country'];
 // $country="Kenya";

if (strpos($country, '(') !== false) {
    $variable = trim(substr($country, 0, strpos($country, "(")));
}else{
  
  $variable=trim($country);

}
$code = strtolower(array_search($variable, $countrycodes)); 

//geting the tpe of currency and symbol used by the country
$sel=mysqli_query($db, "SELECT * FROM `helper_country` WHERE `code`='$code'");
$fetch=mysqli_fetch_assoc($sel);
$currency= $fetch['currency_code'];
$symbol=$fetch['currency_symbol'];

// The default prices
$monthly_base_price = 15; // Your price in EUR
$three_months_base_price = 37; // Your price in EUR
$six_months_base_price = 60; // Your price in EUR

//no need for conversion if its already in euro
if ($currency=="EUR") {
    $price['monthly'] = "$symbol $monthly_base_price";
    $price['three_months'] = "$three_months_base_price";
    $price['six_months'] = "$symbol $six_months_base_price";
} else {
    //converting the currency

// Setting vars
$code = 'EUR'; // Your base currency, 3 Letter Currency Code
$key  = '9993c236bcd28cd33acbc9c6'; // Your API key
// Fetching JSON
$req_url = "https://v3.exchangerate-api.com/bulk/$key/$code";
$response_json = file_get_contents($req_url);

// Continuing if we got a result
if(false !== $response_json) {

    // Try/catch for json_decode operation
    try {

        // Decoding
        $response_object = json_decode($response_json);

        // Checking for errors
        if('success' === $response_object->result) {            

            $mothly_price = round(($monthly_base_price * $response_object->rates->$currency), 2);
            $three_months_price  = round(($three_months_base_price * $response_object->rates->$currency), 2);
            $six_months_base_price = round(($six_months_base_price * $response_object->rates->$currency), 2);

            //put the prices to array
            $price['monthly'] = "$symbol $mothly_price";
            $price['three_months'] = "$symbol $three_months_price";
            $price['six_months'] = "$symbol $six_months_base_price";

                        

        } else {
            

            // Handling different error conditions
            switch($response_object->error) {
                case 'unknown-code':
                    // Handle error...
                    break;
                case 'invalid-key':
                    // Handle error...
                    break;
                case 'malformed-request':
                    // Handle error...
                    break;
                case 'quota-reached':
                    // Handle error...
                    break;
            }

        }

    }
    catch(Exception $e) {
        // Handle JSON parse error...
    }

  }
}

  header('Content-Type:Application/json');
  echo json_encode($price);
}
?>