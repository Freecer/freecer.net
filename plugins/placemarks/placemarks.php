<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=standalone
 * [END_COT_EXT]
 */

defined('COT_CODE') && defined('COT_PLUG') or die('Wrong URL');

require_once cot_incfile('placemarks', 'plug');

$area = cot_import('area', 'G', 'ALP');

$t = new XTemplate(cot_tplfile(array('placemarks', $area), 'plug'));

$sql = $db->query("SELECT * FROM $db_placemarks
	WHERE mark_area='".$db->prep($area)."'");
while($placemark = $sql->fetch())
{
	$t->assign(cot_generate_placemarktags($placemark, 'MARK_ROW_'));
	$t->parse('MAIN.MARK_ROW');
}

$t->parse('MAIN');
return $t->text('MAIN');