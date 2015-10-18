<?php

/* ====================
[BEGIN_COT_EXT]
Hooks=paymaster.add
[END_COT_EXT]
==================== */


defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('currencyconverter', 'plug');

try{
    
    $conventer = new CurrencyConverter;
    $rate = $conventer->getRate();
    $amount *= $rate;
    
} catch (Exception $ex) {
    die;
}