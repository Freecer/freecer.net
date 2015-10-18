<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=usertags.main
 * [END_COT_EXT]
 */

/**
 * Placemarks for users module
 *
 * @version 1.0.1
 * @author  devkont
 * @copyright (c) 2013 CMSWorks Team 2013
 */

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('placemarks', 'plug');

$temp_array['PLACEMARKS'] = cot_placemarks_getmark ('users', $user_data['user_id']);


?>