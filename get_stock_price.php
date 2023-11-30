<?php

if (isset($_GET['stock_name'])) {
    // Fetch real-time stock price using FINNHUB API
    $stockName = urlencode($_GET['stock_name']);
    $apiKey = 'clk20uhr01ql1cbgbhcgclk20uhr01ql1cbgbhd0';
    $apiEndpoint = "https://finnhub.io/api/v1/quote?symbol={$stockName}&token={$apiKey}";

    $apiResponse = file_get_contents($apiEndpoint);

    $data = json_decode($apiResponse, true);

    if (isset($data['c'])) {

        $stockPrice = $data['c'];

        echo $stockPrice;
    } else {
        echo 'Error: Unable to fetch stock price.';
    }
} else {
    echo 'Error: Stock name parameter is not set.';
}
?>
