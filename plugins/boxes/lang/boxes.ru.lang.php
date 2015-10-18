<?php
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

$L['Boxes'] = 'Boxes';

//Текст на главной странице
$L['cfg_indextextboxes'] = 'Текст для главной ( <em>index.tpl</em> )';

//ТЕГИ ВЫВОДЯЩИЕ СОДЕРЖИМОЕ В ВЕРХНЕЙ ЧАСТИ САЙТА
$L['cfg_boxsep_headline'] = '<br><div>ВЫВОД СОДЕРЖИМОГО В ВЕРХНЕЙ ЧАСТИ САЙТА ( <em>header.tpl</em> )</div>';
$L['cfg_box_headmeta'] = 'ПОДТВЕРЖДЕНИЕ С ПОМОЩЬЮ МЕТАТЕГОВ';
$L['cfg_box_speedup'] = 'ПОДКЛЮЧЕНИЕ CSS ФАЙЛОВ<br>укажите названия файлов и их расширение из папки css, расположенной <b>' . $cfg['mainurl'] . '/' . $cfg['themes_dir'] . '/' . $theme .
	'/css/' . '</b><br>каждый с новой строки';
$L['cfg_box_headcss'] = 'ДОПОЛНИТЕЛЬНЫЕ CSS СТИЛИ САЙТА<br>в это поле можно вставлять обычный css код';
$L['cfg_box_head_externaljscss'] = ' CSS, JS<br>в это поле можно подключить css или js файлы, в том числе внешние';

//ПОДКЛЮЧЕНИЕ ВНЕШНИХ СКРИПТОВ В НИЖНЮЮ ЧАСТЬ САЙТА
$L['cfg_boxsep_footerline'] = '<br><div>ВЫВОД СОДЕРЖИМОГО В НИЖНЕЙ ЧАСТИ САЙТА ( <em>footer.tpl</em> )</div>';
$L['cfg_box_footerjs'] = 'ПОЛЕ ДЛЯ ВСТАВКИ ПРОИЗВОЛЬНОГО JS КОДА<br>без открывающего и закрывающего &lt;script&gt';
$L['cfg_box_speedupjs'] = 'ПОЛЕ ДЛЯ ВСТАВКИ СОДЕРЖИМОГО JS ФАЙЛОВ<br>Укажите названия файлов и их расширение из папки js, расположенной <b>' . $cfg['mainurl'] . '/' . $cfg['themes_dir'] .
	'/' . $theme . '/js/' . '</b><br>каждый с новой строки';
$L['cfg_box_footerstat'] = 'ПОДКЛЮЧЕНИЕ СЧЕТЧИКОВ ПОСЕЩЕНИЙ<br>например метрика, liveinternet и тд<br>' . $cfg['plugin']['boxes']['box_footerstat'];
$L['cfg_box_footer_externaljs'] = 'ПОДКЛЮЧЕНИЕ JS ФАЙЛОВ<br>в это поле можно подключить js файлы, в том числе внешние<br>&lt;script src="адрес файла"&gt;&lt;/script&gt;';

//Дополнительные блоки
$L['cfg_boxsep_else'] = '<br><div>ДОПОЛНИТЕЛЬНЫЕ БЛОКИ МОЖНО ИСПОЛЬЗОВАТЬ ГЛОБАЛЬНО</div>';
$L['cfg_box1'] = '<h3>Дополнительный блок №1</h3><div' . $L['style_my'] . '>' . $L['box1_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box1}">';
$L['cfg_box2'] = '<h3>Дополнительный блок №2</h3><div' . $L['style_my'] . '>' . $L['box2_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box2}">';
$L['cfg_box3'] = '<h3>Дополнительный блок №3</h3><div' . $L['style_my'] . '>' . $L['box3_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box3}">';
$L['cfg_box4'] = '<h3>Дополнительный блок №4</h3><div' . $L['style_my'] . '>' . $L['box4_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box4}">';
$L['cfg_box5'] = '<h3>Дополнительный блок №5</h3><div' . $L['style_my'] . '>' . $L['box5_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box5}">';
$L['cfg_box6'] = '<h3>Дополнительный блок №6</h3><div' . $L['style_my'] . '>' . $L['box6_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box6}">';
$L['cfg_box7'] = '<h3>Дополнительный блок №7</h3><div' . $L['style_my'] . '>' . $L['box7_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box7}">';
$L['cfg_box8'] = '<h3>Дополнительный блок №8</h3><div' . $L['style_my'] . '>' . $L['box8_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box8}">';
