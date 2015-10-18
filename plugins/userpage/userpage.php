<?php defined('COT_CODE') or die('Wrong URL');
/* ====================
[BEGIN_COT_EXT]
Hooks=users.details.tags
Tags=users.details.tpl:{USERPAGE},{USERS_DETAILS_PAGE_URL},{USERS_DETAILS_PAGE_COUNT}
[END_COT_EXT]
==================== */

require_once cot_incfile('userpage', 'plug');
require_once cot_incfile('page', 'module');

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('userpage', 'any', 'RWA');
list($pg, $d, $durl) = cot_import_pagenav('duserpage', $cfg['plugin']['userpage']['up_maxrowsperpage']);
$tab = cot_import('tab', 'G', 'ALP');
$category = ($tab=='userpage') ? cot_import('cat', 'G', 'TXT') : '' ;

//userpage вкладка
$t1 = new XTemplate(cot_tplfile(array('userpage','details',$urr['user_maingrp']), 'plug'));

$where = array();
$order = array();

$where['ownerid'] = "page_ownerid=" . $urr['user_id'];
$where['system'] = "page_cat !='system'";
$order['date'] = "page_date DESC";

//якщо інформацію переглядає не власник чи адмін то показуємо тільки опубліковані сторінки
if($usr['id'] == 0 || $usr['id'] != $urr['user_id'] && !$usr['isadmin'])
{
	$where['state'] = 'page_state = 0'; 
}

// встановлюємо категорію якщо є
if ($category)
{
	$where['cat'] = 'page_cat=' . $db->quote($category);
}

$wherecount = $where;
if($wherecount['cat'])
	unset($wherecount['cat']);

$where = ($where) ? 'WHERE ' . implode(' AND ', $where) : ''; // вибірка для фільтру з врахування категорії
$wherecount = ($wherecount) ? 'WHERE ' . implode(' AND ', $wherecount) : ''; // вибірка без врахування категорії 
$order = ($order) ? 'ORDER BY ' . implode(', ', $order) : '';

$userpage_count = $db->query("SELECT page_cat, COUNT(page_cat) as cat_count FROM $db_pages " . $wherecount . " GROUP BY page_cat")->fetchAll();
// формуємо список категорій і кількість сторінок в них
foreach ($userpage_count as $value) {
	$userpage_count_all+=$value['cat_count'];
	$page_nav[$value['page_cat']] = $value['cat_count'];
	$t1->assign(array(
		"PAGE_ROW_CAT_TITLE" => &$structure['page'][$value['page_cat']]['title'],
		"PAGE_ROW_CAT_ICON" => &$structure['page'][$value['page_cat']]['icon'],
		"PAGE_ROW_CAT_URL" => cot_url('users', 'm=details&id=' . $urr['user_id'] . '&u=' . $urr['user_name'] . '&tab=userpage&cat='.$value['page_cat']),
		"PAGE_ROW_CAT_COUNT_PAGE" => $value['cat_count'], 
		"PAGE_ROW_CAT_SELECT" => ($category && $category == $value['page_cat']) ? 1 : '' 
		));
	$t1->parse("MAIN.CATEGORY_ROWS");
}
/* Вибірка списку у відповідності  до категорії */
$sqllist_rowset = $db->query("SELECT * FROM $db_pages " . $where . " " . $order ." LIMIT $d, ".$cfg['plugin']['userpage']['up_maxrowsperpage'])->fetchAll();

$cfg['page']['truncatetext'] = (!$category) ?
	$cfg['page']['cat___default']['truncatetext'] :
	$cfg['page']['cat_' . $category]['truncatetext'];
foreach ($sqllist_rowset as $item)
{
	$t1->assign(cot_generate_pagetags($item,'PAGE_ROW_', $cfg['page']['truncatetext'], $usr['isadmin']));
	$t1->parse("MAIN.PAGE_ROWS");
}
// прорахувати для пагинації
$opt_array = array(
					'm' => 'details',
				  	'id'=> $urr['user_id'],
				  	'u'=> $urr['user_name'],
				    'tab' => 'userpage'
				    );
$dcount = $userpage_count_all;
if($category){	
	$dcount = $page_nav[$category];
	$opt_array['cat'] = $category;
}
$pagenav = cot_pagenav('users', $opt_array, $d, $dcount, $cfg['plugin']['userpage']['up_maxrowsperpage'], 'duserpage');

$t1->assign(array(
	"PAGENAV_PAGES" => $pagenav['main'],
	"PAGENAV_PREV" => $pagenav['prev'],
	"PAGENAV_NEXT" => $pagenav['next'],
	"PAGENAV_COUNT" => $dcount
));
$t1->parse("MAIN");
$t->assign(array(
	"USERS_DETAILS_PAGE_COUNT" => $userpage_count_all,
	"USERS_DETAILS_PAGE_URL" => cot_url('users', 'm=details&id=' . $urr['user_id'] . '&u=' . $urr['user_name'] . '&tab=userpage'),
));
$t->assign('USERPAGE', $t1->text("MAIN"));