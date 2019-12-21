<?php
require_once(__DIR__ . '\autoload.php');

// Configure OAuth2 access token for authorization: oauth2
SquareConnect\Configuration::getDefaultConfiguration()->setAccessToken('EAAAEHSCTkIq6OcNF7DVHmjMgYZ9fb7srm-VmGWBbS7mUXbgH3P1Y4xtH5D-4W8i');
// SquareConnect\Configuration::getDefaultConfiguration()->setAccessToken('EAAAEFzdEilDgtDCURfS5vQ-iuR3VuOSaWKtvH79XaACUe-Gvl55k35DM9R8Tl3n');


//$api_instance = new SquareConnect\Api\OrdersApi();
$api_instance = new SquareConnect\Api\V1ItemsApi();
$location_id = "0PZ0MMCQ5WH1A"; // string | The ID of the business location to associate the order with.

$book = new \SquareConnect\Model\V1Item(); // \SquareConnect\Model\V1Item | An object containing the fields to POST for the request.  See the corresponding object definition for field details.
 $book->setId('1000');
$book->setName('Item-abcd');
 $book->setDescription('abcd');
 $book->setType('abcd');
 $book->setColor('yellow');
 //Put line item in an array called lineItems.
 $var = new \SquareConnect\Model\V1Variation;
 $var->setId('11');
 $var->setName('Variation-1');
 $var->setItemId('1000');
 $var->setOrdinal('11');
 $var->setPricingType('1');
 $var->setSku('110');
 $var->setTrackInventory('1');
 $var->setInventoryAlertType('1');
 $var->setInventoryAlertThreshold('200');
 $var->setUserData('bbbb');
 $var->setV2Id('cccc');

 $var1 = new \SquareConnect\Model\V1Money;
 $var1->setAmount('100');
 $var1->setCurrencyCode('INR');
 
$var->setPriceMoney($var1);
 $lineItems = array();
 array_push($lineItems, $var);
 $book->setVariations($lineItems);


try {
    $result = $api_instance->createItem($location_id, $book);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling V1ItemsApi->createItem: ', $e->getMessage(), PHP_EOL;
}

// $body = new \SquareConnect\Model\CreateOrderRequest(); // \SquareConnect\Model\CreateOrderRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.
// //Create a Money object to represent the price of the line item.
// $price = new \SquareConnect\Model\Money;
// $price->setAmount(100);
// $price->setCurrency('INR');
// //Create the line item and set details
// $book = new \SquareConnect\Model\OrderLineItem;
// $book->setName('Item-3');
// $book->setQuantity('2');
// $book->setBasePriceMoney($price);
// //Put line item in an array called lineItems.
// $lineItems = array();
// array_push($lineItems, $book);
// //Create the Order object and set lineItems.
// $order = new \SquareConnect\Model\Order;

// $order->setLineItems($lineItems);
// $body->setIdempotencyKey(uniqid()); //uniqid() generates a random string.
// $body->setOrder($order);



// try {
//     $result = $api_instance->createOrder($location_id, $body);
//     print_r($result);
// } catch (Exception $e) {
//     echo 'Exception when calling OrdersApi->createOrder: ', $e->getMessage(), PHP_EOL;
// }



//search order

// $body = new \SquareConnect\Model\SearchOrdersRequest(); // \SquareConnect\Model\SearchOrdersRequest | An object containing the fields to POST for the request.  See the corresponding object definition for field details.
// $body->setLocationIds(array($location_id));
// try {
//     $result = $api_instance->searchOrders($body);
//     echo ($result);
   
// } catch (Exception $e) {
//     echo 'Exception when calling OrdersApi->searchOrders: ', $e->getMessage(), PHP_EOL;
// }

?>