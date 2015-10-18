<?php

/* ====================
[BEGIN_COT_EXT]
Hooks=paymaster.result
[END_COT_EXT]
==================== */


defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('currencyconverter', 'plug');

try{
    
    $conventer = new CurrencyConverter;
    $rate = $conventer->getRate();
    $pinfo['pay_summ'] *= $rate;
    
} catch (Exception $ex) {
    die;
}