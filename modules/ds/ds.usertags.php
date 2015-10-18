<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=usertags.main
[END_COT_EXT]
==================== */

/**
 * DS header notices
 * @version 2.0
 * @package DS
 * @copyright (c) Alexeev Vlad (http://cmsworks.ru/users/alexvlad)
 */

defined('COT_CODE') or die('Wrong URL.');

$temp_array['PM'] = cot_rc_link(cot_url('ds', 'm=send&to='.$temp_array['ID']), $L['ds_profilepm']);