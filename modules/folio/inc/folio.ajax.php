<?php
defined('COT_CODE') or die('Wrong URL');

require_once cot_langfile('folio', 'module');

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('folio', 'any', 'RWA');
cot_block($usr['auth_read']);

$sort = cot_import('sort', 'G', 'ALP');
$c = cot_import('c', 'G', 'ALP');

$maxrowsperpage = ($cfg['folio']['cat_' . $c]['maxrowsperpage']) ? $cfg['folio']['cat_' . $c]['maxrowsperpage'] : $cfg['folio']['cat___default']['maxrowsperpage'];
list($pn, $d, $d_url) = cot_import_pagenav('d', $maxrowsperpage);

/* === Hook === */
foreach (cot_getextplugins('folio.details.first') as $pl) {
    include $pl;
}
/* ===== */

/*
 * Поиск элеметов
 */
$where = array();
$order = array();

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
foreach (cot_getextplugins('folio.list.query') as $pl)
{
	include $pl;
}
/* ===== */

$where = ($where) ? 'WHERE ' . implode(' AND ', $where) : '';
$order = ($order) ? 'ORDER BY ' . implode(', ', $order) : '';

$totalitems = $db->query("SELECT COUNT(*) FROM $db_folio AS f $join_condition 
	" . $where . "")->fetchColumn();

$sqllist = $db->query("SELECT * FROM $db_folio AS f $join_condition"
	. " LEFT JOIN $db_users AS u ON u.user_id=f.item_userid"
        . " " . $where
        . " " . $order);
// . " LIMIT $d, " . $maxrowsperpage

$folios = $sqllist->fetchAll();


/*
 * Отображение
 */


$localskin = cot_tplfile(array('folio', 'ajax'), 'module');

$xTemplate = new XTemplate($localskin);

if( ! $folios || empty($folios)) {
    $xTemplate->parse('ROW_EMPTY');
    $xTemplate->out('ROW_EMPTY');
    die;
}

/* === Hook === */
$extp = cot_getextplugins('folio.list.loop');
/* ===== */

foreach($folios as $folio){
    $t = &$xTemplate;
    $i++;
    $xTemplate->assign(cot_generate_usertags($folio, 'PRD_ROW_OWNER_'));

    $xTemplate->assign(cot_generate_foliotags($folio, 'PRD_ROW_', $cfg['folio']['shorttextlen'], $usr['isadmin'], $cfg['homebreadcrumb']));
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
foreach (cot_getextplugins('folio.list.tags') as $pl){
    include $pl;
}
/* ===== */

$xTemplate->out('PRD_ROWS');