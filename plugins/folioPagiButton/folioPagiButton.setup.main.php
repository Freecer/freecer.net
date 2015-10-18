<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=folio.main
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL');

function getPreviousFolio($id, $key = ''){
    $folio = getFolioForButton($id, 0);
    return empty($key) ? $folio : $folio[$key];
}

function getNextFolio($id, $key = ''){
    $folio = getFolioForButton($id, 1);
    return empty($key) ? $folio : $folio[$key];
}

/**
 * @param int $id as item_id
 * @param int $type 1:0 (1 - next, 0 - prev)
 * @return array $folio
 */
function getFolioForButton($id, $type = 0){
    global $db, $usr, $cfg, $db_folio;
    
    $query = "SELECT * FROM $db_folio WHERE item_id = $id LIMIT 1";
    $current = $db->query($query)->fetch();
    
    if( $type == 0 ){
        $type = '<';
        $order = ' ORDER BY item_id DESC';
    }else{
        $type = '>';
        $order = ' ORDER BY item_id ASC';
    }
    
    $where = array();
    $where[] = "item_id $type " . $current['item_id'];
    $where[] = "item_userid = " . $current['item_userid'];
    
    $where = !empty($where) ? ' WHERE ' . implode(' AND ', $where) : '';
    
    $query = "SELECT * FROM $db_folio$where$order LIMIT 1";
    $folio = $db->query($query)->fetch();
    
    $folio = cot_generate_foliotags($folio, 'PRD_', $cfg['folio']['shorttextlen']
            , $usr['isadmin'], $cfg['homebreadcrumb']);
    
    return $folio;
}