<?php

/**
 * Сurrency Сonverter
 *
 * @package currencyconverter
 * @version 1.0.0
 * @author Yahor Nikitsionak
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL');

// Requirements
require_once cot_langfile('paymasterbilling', 'plug');

class CurrencyConverter{
    
    public function getRate(){
        
        $auto = (bool)(int)cot::$cfg['plugin']['currencyconverter']['auto'];
        
        if( !$auto ){
            $rate = cot::$cfg['plugin']['currencyconverter']['rate'];
            return $rate;
        }
        
        $date = date('omd');
        
        $rates = $this->getRates();
        
        if( !isset($rates[$date]) ){
            $rate = $this->parseRate();
            
            $rates[$date] = $rate;
            
            $this->saveRate($date, $rate);
        }
        
        $rate = $rates[$date];
        
        return $rate;
        
    }
    
    public function parseRate($buy = 'UAH', $sell = 'USD'){
        $url = $this->getUrl($buy, $sell);
        
        $file = file_get_contents($url);
        
        if( !$file ){
            throw new Exception('Ошибка при парсинге страницы');
        }
        
        $json = json_decode($file, true);
        
        if( !$json ){
            throw new Exception('Полученные данные не являются json строкой');
        }
        
        if( !isset($json['query']['results']['rate']['Rate']) ){
            throw new Exception('Отсутствуют искомые данные в json строке');
        }
        
        $rate = $json['query']['results']['rate']['Rate'];

        return $rate;
    }
    
    protected $_rates = null;


    protected function getRates(){
        
        if( $this->_rates === null){
            $filePath = $this->getRateBaseDir();

            $file = file_get_contents($filePath);

            if( !$file ){
                throw new Exception('Ошибка при открытии файла курсов');
            }

            $rates = json_decode($file, true);

            if( !$rates ){
                $rates = array();
            }

            $this->_rates = $rates;
        }
        
        return $this->_rates;
    }
    
    protected function saveRate($date, $rate){
        
        $filePath = $this->getRateBaseDir();
        
        $rates = $this->getRates();
        
        $rates[$date] = $rate;
            
        $json = json_encode($rates);

        file_put_contents($filePath, $json);
    }
    
    protected function getUrl($buy, $sell){
        $currencyPair = $sell . $buy;
        $url = 'https://query.yahooapis.com/v1/public/yql';
        $selector = "?q=select+*+from+yahoo.finance.xchange+where+pair+=+'$currencyPair'"
                . "&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=";
        return $url . $selector;
    }
    
    protected function getRateBaseDir(){
        return __DIR__ . '/../base.json';
    }
    
}