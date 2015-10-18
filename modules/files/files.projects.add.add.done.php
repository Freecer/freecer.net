<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=projects.add.add.done
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

if (cot_auth('files', 'a', 'W')){

    if($id) cot_files_linkFiles('project', $id);
}
