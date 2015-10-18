<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=standalone
[END_COT_EXT]
==================== */

/**
 * плагин Easytemplater
 * 
 * @package easytemplater
 * @version 1.1
 * @author  Roffun
 * @copyright Copyright (c) 2015 http://olro.net/blog/blog-internet/easytemplater-plugin-cotonti
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL');

$t = new XTemplate(cot_tplfile('easytemplater','plug'));

$t->text('MAIN');
