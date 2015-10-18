<?php
/* ====================
[BEGIN_COT_EXT]
Code=boxes
Hooks=index.tags
Tags=index.tpl:{INDEX_TEXT_BOXES}
Order=10
[END_COT_EXT]
==================== */
/**
 * Boxes plugin
 *
 * @package boxes
 * @version 2.1
 * @author  Roffun
 * @copyright Copyright(c) 2015 Roffun | http://olro.net/blog/blog-internet/boxes-plugin-cotonti
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

$t->assign('INDEX_TEXT_BOXES',$cfg['plugin']['boxes']['indextextboxes']);
