<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=market.add.tags,market.edit.tags
 * Tags=
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

if ((int) $id > 0)
{
	$code = $id;
	$plmpr = 'EDIT';
}
else
{
	$code = '';
	$plmpr = 'ADD';
}

$t->assign('PRD'.$plmpr.'_FORM_PLACEMARKS', cot_placemarks_getmark('market', $code, 'edit'));

?>