<?php

defined('COT_CODE') or die('Wrong URL');

require_once cot_langfile('users', 'module');

/* === Hook === */
foreach (cot_getextplugins('users.details.first') as $pl) {
    include $pl;
}
/* ===== */

$cat = cot_import('c', 'P', 'TXT');

$end_fis = explode(',', $cat);

$cati = array();
if (count($end_fis) > 1) {

    foreach ($end_fis as $num) {

        $users = $db->query("SELECT structure_code FROM structure WHERE structure_id = " . (int) $num . ' AND structure_area = "usercategories"')->fetchAll();

        if (is_array($users)) {
            foreach ($users as $user) {
                $cati[] = $user;
            }
        }
    }
} else {
    $users = $db->query("SELECT structure_code FROM structure WHERE structure_id = " . (int) $cat . ' AND structure_area = "usercategories"')->fetchAll();

    if (is_array($users)) {
        foreach ($users as $user) {
            $cati[] = $user;
        }
    }
}

$ins = '';
$nim = 0;
foreach ($cati as $ca) {
    if ($nim++ == 0) {
        $ins .= " AND user_cats LIKE '%" . $db->prep($ca['structure_code']) . "%' ";
    } else {
        $ins .= " OR user_cats LIKE '%" . $db->prep($ca['structure_code']) . "%' ";
    }
}


if ($ins) {
    $users = $db->query("SELECT * FROM users WHERE user_id=user_id " . $ins)->fetchAll();
}

require_once $_SERVER['DOCUMENT_ROOT'] . '/lang/ru/countries.ru.lang.php';

if (!$cati) {
    $group_us = $db->query("SELECT gru_userid FROM groups_users WHERE gru_groupid=4 AND gru_userid != 1 AND gru_userid != 12")->fetchAll();

    foreach ($group_us as $group) {
        $usi = $db->query("SELECT * FROM users WHERE user_id=" . $group['gru_userid'])->fetch();
        $users[] = $usi;
    }
}

$localskin = cot_tplfile(array('users', 'ajax'), 'module');

$xTemplate = new XTemplate($localskin);

if( ! $users || empty($users)) {
    $xTemplate->parse('USERS_ROW_EMPTY');
    $xTemplate->out('USERS_ROW_EMPTY');
    die;
}

foreach ($users as $user) {
    
    $city = $db->query("SELECT * FROM ls_cities WHERE city_id=" . $user['user_city'])->fetchAll();
    $region = $db->query("SELECT * FROM ls_regions WHERE region_id=" . $user['user_region'])->fetchAll();
    $reviewsPos = $db->query("SELECT * FROM reviews WHERE item_touserid="
            . $user['user_id'] . " AND item_score = '1'")->fetchAll();
    $reviewsNeg = $db->query("SELECT * FROM reviews WHERE item_touserid="
            . $user['user_id'] . " AND item_score = '-1'")->fetchAll();
    $online = $db->query("SELECT online_id FROM online WHERE online_userid="
            . $user['user_id'] . " LIMIT 1")->fetch();
    
    $online = + is_array($online);
    $user_row_avatar = !empty($user['user_avatar']) && (int)$user['user_avatar'] > 0 ? 
            cot_files_user_avatar_url($user['user_avatar']) : "/datas/defaultav/blank.png";
    $flag = $user['user_country'];
    $country = $cot_countries[$flag];
    $positive = count($reviewsPos);
    $negative = count($reviewsNeg);
    
    $xTemplate->assign(array(
        'USERS_ROW_AVATAR' => $user_row_avatar,
        'USERS_ROW_USERPOINTS' => $user['user_userpoints'],
        'USERS_ROW_COUNTRY' => $country,
        'USERS_ROW_NAME' => $user['user_name'],
        'USERS_ROW_ID' => $user['user_id'],
        'USERS_ROW_COUNTRYFLAG' => $flag,
        'USERS_ROW_REVIEWS_POZITIVE_SUMM' => $positive,
        'USERS_ROW_REVIEWS_NEGATIVE_SUMM' => $negative,
        'USERS_ROW_ONLINE' => $online,
    ));

    $xTemplate->parse('USERS_ROW');
    $xTemplate->out('USERS_ROW');
    
}