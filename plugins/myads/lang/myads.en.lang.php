<?php
/**
 * English Language File for myads Plugin
 * 
 * @package myads
 * @version 2.1
 * @author  Roffun
 * @copyright Copyright(c) 2014 http://olro.net/blog/blog-internet/myads-plugin-cotonti
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

$L['Myads'] = 'Myads';

$L['Myads'] = 'Myads';

$L['cfg_myads1'] =
	'<h3>Block №1</h3>Anywhere template: <input onclick="this.select();" readonly value="{PHP.myads1}"><br />Inside full news: <input onclick="this.select();" readonly value="[SCEBANNER1]"><br /><div' .
	$L['style_my'] . '>' . $L['myads1_my'] . '</div>';
$L['cfg_myads2'] =
	'<h3>Block №2</h3>Anywhere template: <input onclick="this.select();" readonly value="{PHP.myads2}"><br />Inside full news: <input onclick="this.select();" readonly value="[SCEBANNER2]"><br /><div' .
	$L['style_my'] . '>' . $L['myads2_my'] . '</div>';
$L['cfg_myads3'] =
	'<h3>Block №3</h3>Anywhere template: <input onclick="this.select();" readonly value="{PHP.myads3}"><br />Inside full news: <input onclick="this.select();" readonly value="[SCEBANNER3]"><br /><div' .
	$L['style_my'] . '>' . $L['myads3_my'] . '</div>';
$L['cfg_myads4'] =
	'<h3>Block №4</h3>Anywhere template: <input onclick="this.select();" readonly value="{PHP.myads4}"><br />Inside full news: <input onclick="this.select();" readonly value="[SCEBANNER4]"><br /><div' .
	$L['style_my'] . '>' . $L['myads4_my'] . '</div>';
$L['cfg_myads5'] =
	'<h3>Block №5</h3>Anywhere template: <input onclick="this.select();" readonly value="{PHP.myads5}"><br />Inside full news: <input onclick="this.select();" readonly value="[SCEBANNER5]"><br /><div' .
	$L['style_my'] . '>' . $L['myads5_my'] . '</div>';

$L['cfg_myads_headerlist'] =
	'<h3>Enable output to external scripts</h3>Content is displayed in <b>header.tpl</b><br /><input onclick="this.select();" size="25" readonly value="{HEADER_MYADSCONNECTS}"><br />Paste the code before <b>&lt;/head></b>';
$L['cfg_myads_footerlist'] =
	'<h3>Enable output to external scripts</h3>Content is displayed in <b>footer.tpl</b><br /><input onclick="this.select();" size="25" readonly value="{FOOTER_MYADSCONNECTS}"><br />Paste the code before <b>&lt;/body></b>';

$L['cfg_myads_usersdone'] = 'ID users, separated by commas, are allowed to embed ads in content through the full news';

$L['cfg_myads_sep'] = 'Who can insert advertising blocks in CONTENT';
$L['cfg_myads_external_sep'] = 'CONNECTING external files (JS, CSS)';
