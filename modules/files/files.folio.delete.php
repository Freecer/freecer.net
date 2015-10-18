<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=folio.edit.delete.done
[END_COT_EXT]
==================== */

defined('COT_CODE') or die('Wrong URL');

if (cot_auth('files', 'a', 'W')){

    require_once cot_incfile('files', 'module');

    $filesCond = array(
        array('file_source', 'folio'),
        array('file_item', $id),
    );
    $files = files_model_File::find($filesCond);
    if($files){
        foreach($files as $fileRow) $fileRow->delete();
    }
}
