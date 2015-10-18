<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=module
[END_COT_EXT]
==================== */

/**
 * Users module main
 *
 * @package Users
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

// Environment
define('COT_USERS', TRUE);
$env['location'] = 'users';

require_once cot_incfile('extrafields');
require_once cot_incfile('uploads');

require_once cot_incfile('users', 'module');

$uri = $_SERVER['REQUEST_URI'];
$tmp = explode('/', $uri);
$group = $tmp[1];

if (!in_array($m, array('details', 'edit', 'passrecover', 'profile', 'register', 'ajax')))
{
    switch($group){
        
        case 'freelancers':
            $m = 'freelancers';
            break;
        default :
            $m = 'main';
    }
}

include cot_incfile('users', 'module', $m);
