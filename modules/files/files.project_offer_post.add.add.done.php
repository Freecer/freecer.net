<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=projects.offers.addpost.done
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

if (cot_auth('files', 'a', 'W')){

    if($poid) cot_files_linkFiles('project_offer_post', $poid);
}
