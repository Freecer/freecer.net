<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=payments.billing.register
 * [END_COT_EXT]
 */
/**
 * PayMaster billing Plugin
 *
 * @package paymasterbilling
 * @version 1.0.0
 * @author Yahor Nikitsionak
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('paymasterbilling', 'plug');

$cot_billings['paymaster'] = array(
    'plug' => 'paymasterbilling',
    'title' => 'PayMaster billing system',
    'icon' => $cfg['plugins_dir'] . '/paymasterbilling/images/paymaster.png'
);
