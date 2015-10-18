<?php defined('COT_CODE') or die('Wrong URL');
/* ====================
[BEGIN_COT_EXT]
Hooks=standalone
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
require_once cot_incfile('usercategories', 'plug');

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('plug', 'favoriteusers','RWA');
cot_block($usr['auth_write']);

$favu_sq = cot_import('favu_sq', 'G', 'TXT');
$favu_cat = cot_import('favu_cat', 'G', 'TXT');
list($pn, $d, $d_url) = cot_import_pagenav('d', $cfg['plugin']['favoriteusers']['favu_maxperpage']);

//сео
$out['subtitle'] = $L['favu_title'];
$out['desc'] = $L['favu_desc'];

/* === Hook === */
foreach (cot_getextplugins('favu.list.import') as $pl)
{
	include $pl;
}
/* ===== */

$searchstring = '';
if(!empty($favu_sq)){
	$searchstring .= " AND u.user_name LIKE '%".$db->prep($favu_sq)."%'";
}
if(!empty($favu_cat)){
	$searchstring .= " AND u.user_cats LIKE '%".$db->prep($favu_cat)."%' ";
}

/* === Hook === */
foreach (cot_getextplugins('favu.list.query') as $pl)
{
	include $pl;
}
/* ===== */

$totalitems = $db->query("SELECT COUNT(*) FROM $db_favorite_users AS f LEFT JOIN $db_users AS u ON f.favu_added_user_id = u.user_id WHERE f.favu_user_id=".$usr['id']." {$searchstring}")->fetchColumn();
$listsql = $db->query("SELECT f.favu_added_user_id, u.* FROM $db_favorite_users  AS f LEFT JOIN $db_users AS u ON f.favu_added_user_id = u.user_id WHERE f.favu_user_id=".$usr['id']." {$searchstring} LIMIT {$d}, " . $cfg['plugin']['favoriteusers']['favu_maxperpage'])->fetchAll();

$t = new XTemplate(cot_tplfile('favoriteusers', 'plug'));

cot_display_messages($t);

/* === Hook: Part 1 === */
$extp = cot_getextplugins('favu.list.loop');
/* ===== */

// Display the main page
$jj = 0;
foreach ($listsql as $user) {
	$jj++;
	$t->assign(cot_generate_usertags($user, 'USER_LIST_ROW_'));
	$t->assign(array(
		"USER_LIST_ROW_ODDEVEN" => cot_build_oddeven($jj),
		"USER_LIST_ROW_DELETE_URL" => cot_favu_getbtn('deletefromfav',(int)$user['user_id'],'uid'.$user['user_id']) //cot_url('index', array('r' =>'favoriteusers', 'uid'=>$user['user_id'],'a'=>'deletefromlist'))
	));

	/* === Hook: Part 2 === */
	foreach ($extp as $pl)
	{
		include $pl;
	}
	/* ===== */

	$t->parse('MAIN.USER_LIST_ROW');
}

$list_url_path = array('favu_sq' => $favu_sq,'favu_cat' => $favu_cat);
$pagenav = cot_pagenav('favoriteusers', $list_url_path, $d, $totalitems, $cfg['plugin']['favoriteusers']['favu_maxperpage']);

$t->assign(array(
	"PAGENAV_PAGES" => $pagenav['main'],
	"PAGENAV_PREV" 	=> $pagenav['prev'],
	"PAGENAV_NEXT"	=> $pagenav['next'],
	"PAGENAV_COUNT" => $totalitems,
	"FAVU_SQ"		=> cot_inputbox('text', 'favu_sq', $favu_sq, array('size' => 23, 'maxlength' => 255)),
	"FAVU_CAT"		=> cot_usercategories_selectcat($favu_cat, 'favu_cat') 
));

/* === Hook === */
foreach (cot_getextplugins('favu.list.tags') as $pl)
{
	include $pl;
}
/* ===== */