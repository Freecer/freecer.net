<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=markettags.main
 * [END_COT_EXT]
 */

/**
 * Placemarks for market module
 *
 * @version 1.0.1
 * @author  devkont
 * @copyright (c) 2014 CMSWorks Team 2014
 */

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('placemarks', 'plug');

$temp_array['PLACEMARKS'] = cot_placemarks_getmark ('market', $item_data['item_id']);


?>