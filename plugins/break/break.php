<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=global
[END_COT_EXT]
==================== */

$e = $_SERVER["SCRIPT_NAME"];


if ($cfg["plugin"]["break"]["enabled"] == 1) {

    if($usr["id"] == false && $e != "/login.php") {
        $t = new XTemplate(cot_tplfile('break', 'plug'));

        $t->assign(array (
            'BREAK_TITLE' => $cfg["plugin"]["break"]["title"],
            'BREAK_DATE' => $cfg["plugin"]["break"]["date"],
        ));
        
        $t->parse('MAIN');
        $t->out('MAIN');
        exit;
    }
}
