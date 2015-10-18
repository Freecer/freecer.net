<?php defined('COT_CODE') or die('Wrong URL');
/* ====================
[BEGIN_COT_EXT]
Hooks=ajax
[END_COT_EXT]
==================== */
/**
 * @package favoriteusers
 * @version 1.0.2
 * @author CrazyFreeMan (simple-website.in.ua)
 * @copyright Copyright (c) CrazyFreeMan (simple-website.in.ua)
 * @license BSD
 */
if(COT_AJAX){
	$uid = cot_import('uid', 'G', 'INT');
	$resid = cot_import('resid', 'G', 'ALP');	
	if($a == 'addtofav'){
		cot_favu_add_to_fav((int)$usr['id'],(int)$uid);
		echo cot_favu_getbtn('deletefromfav', $uid, $resid);
	}else if($a == 'deletefromfav'){		
		cot_favu_delete_from_fav((int)$usr['id'],(int)$uid);
		echo cot_favu_getbtn('addtofav', $uid, $resid);
	}
}