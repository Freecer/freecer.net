<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=page.add.tags
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

$search_cat = false;
$elems = explode(',', $cfg['plugin']['tpage']['tpcat']);
foreach($elems as $elem){
		if((int) in_array($elem,explode('.', $cot_cat[$c]['path']))){
		$search_cat = true;
		$tplelem = $elem;
		}
	}

if($search_cat){
    $t_tp = new XTemplate(cot_tplfile(array('tpage',$tplelem), true));
    $t_tp->parse("MAIN.PAGEADD_INFO");
	$t->assign("PAGEADD_TPAGE_INFO", $t_tp->text("MAIN.PAGEADD_INFO"));

	 };


?>
