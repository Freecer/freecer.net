<?php
/* ====================
[BEGIN_COT_EXT]
Code=myads
Hooks=header.tags,footer.tags
Tags=header.tpl:{HEADER_MYADSCONNECTS};footer.tpl:{FOOTER_MYADSCONNECTS}
Order=10
[END_COT_EXT]
==================== */

/**
 * Myads tags of plugin
 *
 * @package myads
 * @version 2.1
 * @author  Roffun
 * @copyright Copyright(c) 2014 http://olro.net/blog/blog-internet/myads-plugin-cotonti
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');
require_once cot_langfile('myads','plug');

$t->assign('HEADER_MYADSCONNECTS',$cfg['plugin']['myads']['myads_headerlist']);
$t->assign('FOOTER_MYADSCONNECTS',$cfg['plugin']['myads']['myads_footerlist']);
