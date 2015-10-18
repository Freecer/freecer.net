<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=rc
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');

cot_rc_link_file($cfg['modules_dir'] . '/ds/tpl/ds.css');
cot_rc_link_file($cfg['modules_dir'] . '/ds/js/ds.js');

if ($cfg['ds']['turnajax']) {
cot_rc_link_file($cfg['modules_dir'] . '/ds/js/ds.ajax.js');
}
