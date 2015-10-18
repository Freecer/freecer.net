<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=page.tags
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
	$t_tp->parse("MAIN.MAIN_PAGE");
	$t->assign("TPAGE_TPL_PAGE", $t_tp->text("MAIN.MAIN_PAGE") );
}
?>
