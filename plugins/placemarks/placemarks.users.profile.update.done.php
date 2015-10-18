<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=users.profile.update.done,users.edit.update.done
 * [END_COT_EXT]
 */

/**
 * Placemarks for users module
 *
 * @version 1.0.1
 * @author  devkont
 * @copyright (c) 2014 CMSWorks Team 2014
 */

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('placemarks', 'plug');

$rcoord = cot_import('rcoord', 'P', 'TXT');
$rzoom = cot_import('rzoom', 'P', 'INT');

if (!cot_error_found())
{
	cot_placemarks_savemark ('users', $urr['user_id'], $rcoord, $rzoom);	
}

?>