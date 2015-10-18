<?php
/**
 * Русский языковый файл плагина myads
 * 
 * @package myads
 * @version 2.1
 * @author  Roffun
 * @copyright Copyright(c) 2014 http://olro.net/blog/blog-internet/myads-plugin-cotonti
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

$L['Myads'] = 'Myads';

$L['cfg_myads1'] =
	'<h3>Рекламный блок №1</h3>В любом месте шаблона: <input onclick="this.select();" readonly value="{PHP.myads1}"><br />Внутри полной новости: <input onclick="this.select();" readonly value="[SCEBANNER1]"><br /><div' .
	$L['style_my'] . '>' . $L['myads1_my'] . '</div>';
$L['cfg_myads2'] =
	'<h3>Рекламный блок №2</h3>В любом месте шаблона: <input onclick="this.select();" readonly value="{PHP.myads2}"><br />Внутри полной новости: <input onclick="this.select();" readonly value="[SCEBANNER2]"><br /><div' .
	$L['style_my'] . '>' . $L['myads2_my'] . '</div>';
$L['cfg_myads3'] =
	'<h3>Рекламный блок №3</h3>В любом месте шаблона: <input onclick="this.select();" readonly value="{PHP.myads3}"><br />Внутри полной новости: <input onclick="this.select();" readonly value="[SCEBANNER3]"><br /><div' .
	$L['style_my'] . '>' . $L['myads3_my'] . '</div>';
$L['cfg_myads4'] =
	'<h3>Рекламный блок №4</h3>В любом месте шаблона: <input onclick="this.select();" readonly value="{PHP.myads4}"><br />Внутри полной новости: <input onclick="this.select();" readonly value="[SCEBANNER4]"><br /><div' .
	$L['style_my'] . '>' . $L['myads4_my'] . '</div>';
$L['cfg_myads5'] =
	'<h3>Рекламный блок №5</h3>В любом месте шаблона: <input onclick="this.select();" readonly value="{PHP.myads5}"><br />Внутри полной новости: <input onclick="this.select();" readonly value="[SCEBANNER5]"><br /><div' .
	$L['style_my'] . '>' . $L['myads5_my'] . '</div>';

$L['cfg_myads_headerlist'] =
	'<h3>Подключение внешних скриптов</h3>Содержимое выводится в <b>header.tpl</b> тегом<br /><input onclick="this.select();" size="25" readonly value="{HEADER_MYADSCONNECTS}"><br />Вставьте код перед <b>&lt;/head></b>';
$L['cfg_myads_footerlist'] =
	'<h3>Подключение внешних скриптов</h3>Содержимое выводится в <b>footer.tpl</b> тегом<br /><input onclick="this.select();" size="25" readonly value="{FOOTER_MYADSCONNECTS}"><br />Вставьте код перед <b>&lt;/body></b>';

$L['cfg_myads_usersdone'] = 'ID пользователей, через запятую, которым разрешено вставлять рекламные блоки в контент полной новости';

$L['cfg_myads_sep'] = 'КТО МОЖЕТ ВСТАВЛЯТЬ РЕКЛАМНЫЕ БЛОКИ В КОНТЕНТ';
$L['cfg_myads_external_sep'] = 'ПОДКЛЮЧЕНИЕ ВНЕШНИХ ФАЙЛОВ (JS,CSS)';
