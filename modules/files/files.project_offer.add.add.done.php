<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=projects.offers.add.done
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

if (cot_auth('files', 'a', 'W')){

    if($offerid) cot_files_linkFiles('project_offer', $offerid);
}
