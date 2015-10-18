<?php defined('COT_CODE') or die('Wrong URL');
/* ====================
[BEGIN_COT_EXT]
Hooks=users.details.tags
Tags=users.details.tpl:{USERS_DETAILS_FAVORITE}
[END_COT_EXT]
==================== */
/**
 * @package favoriteusers
 * @version 1.0.2
 * @author CrazyFreeMan (simple-website.in.ua)
 * @copyright Copyright (c) CrazyFreeMan (simple-website.in.ua)
 * @license BSD
 */
require_once cot_incfile('favoriteusers', 'plug');

if($usr['id'] != $id && $usr['id'] > 0){
	if(cot_favu_infavorite((int)$usr['id'],(int)$id)){
		$rcbtn = cot_favu_getbtn('deletefromfav',(int)$id);
	}else{
		$rcbtn = cot_favu_getbtn('addtofav',(int)$id);
	}
	$t->assign(array(
		'USERS_DETAILS_FAVORITE' => "<span id='favu_id'>".$rcbtn."</span>"
	));
}