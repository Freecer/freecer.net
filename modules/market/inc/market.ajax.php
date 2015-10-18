<?php
defined('COT_CODE') or die('Wrong URL');

require_once cot_langfile('market', 'module');

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('market', 'any', 'RWA');
cot_block($usr['auth_read']);

$sort = cot_import('sort', 'G', 'ALP');
$c = cot_import('c', 'G', 'ALP');
$sq = cot_import('sq', 'G', 'TXT');
$sq = $db->prep($sq);

$maxrowsperpage = ($cfg['market']['cat_' . $c]['maxrowsperpage']) ? $cfg['market']['cat_' . $c]['maxrowsperpage'] : $cfg['market']['cat___default']['maxrowsperpage'];
list($pn, $d, $d_url) = cot_import_pagenav('d', $maxrowsperpage);


/*
 * Поиск элеметов
 */
$where = array();
$order = array();

$where['state'] = "item_state=0";

if ( !empty($_POST['cat']) ) {
    $cats = array();

    foreach($_POST['cat'] as $cat){
        $cats[] = $cat;
    }

    $where['cat'] = "item_cat IN ('" . implode("','", $cats) . "')";
}

switch($sort){
    case 'costasc':
        $order['cost'] = 'item_cost ASC';
        break;

    case 'costdesc':
        $order['cost'] = 'item_cost DESC';
        break;

    default:
        $order['date'] = 'item_date DESC';
        break;
}

/* === Hook === */
foreach (cot_getextplugins('market.list.query') as $pl)
{
	include $pl;
}
/* ===== */

$where = ($where) ? 'WHERE ' . implode(' AND ', $where) : '';
$order = ($order) ? 'ORDER BY ' . implode(', ', $order) : '';

$totalitems = $db->query("SELECT COUNT(*) FROM $db_market AS f $join_condition 
	" . $where . "")->fetchColumn();

$sqllist = $db->query("SELECT * FROM $db_market AS f $join_condition"
	. " LEFT JOIN $db_users AS u ON u.user_id=f.item_userid"
        . " " . $where
        . " " . $order);
// . " LIMIT $d, " . $maxrowsperpage

$orders = $sqllist->fetchAll();


/*
 * Отображение
 */

/* === Hook === */
foreach (cot_getextplugins('market.details.first') as $pl) {
    include $pl;
}
/* ===== */

$localskin = cot_tplfile(array('market', 'ajax'), 'module');

$xTemplate = new XTemplate($localskin);

if( ! $orders || empty($orders)) {
    $xTemplate->parse('ROW_EMPTY');
    $xTemplate->out('ROW_EMPTY');
    die;
}

/* === Hook === */
$extp = cot_getextplugins('market.list.loop');
/* ===== */

foreach($orders as $order){
    $t = &$xTemplate;
    $i++;
    $xTemplate->assign(cot_generate_usertags($order, 'PRD_ROW_OWNER_'));

    $xTemplate->assign(cot_generate_markettags($order, 'PRD_ROW_', $cfg['market']['shorttextlen'], $usr['isadmin'], $cfg['homebreadcrumb']));
    $xTemplate->assign(array(
            "PRD_ROW_ODDEVEN" => cot_build_oddeven($i),
    ));

    /* === Hook - Part2 : Include === */
    foreach ($extp as $pl)
    {
        include $pl;
    }
    /* ===== */

    $xTemplate->parse("PRD_ROWS");
}


/* === Hook === */
foreach (cot_getextplugins('market.list.tags') as $pl){
    include $pl;
}
/* ===== */

$xTemplate->out('PRD_ROWS');