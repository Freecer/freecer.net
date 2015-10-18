<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=rc
[END_COT_EXT]
==================== */

/**
 * Justygotop plugin
 *
 * @package justygotop
 * @version 1.2
 * @author  Roffun
 * @copyright (c) http://olro.net/blog/blog-internet/justygotop-plugin-cotonti
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');
if ($cfg['plugin']['justygotop']['css'] == 1)
{
	cot_rc_add_file($cfg['plugins_dir'] . '/justygotop/css/justygotop.css');
}
