<?php
/**
 * JavaScript and CSS loader for bootlance theme
 *
 * @package Cotonti
 * @version 0.9.0
 * @author CMSWorks Team
 * @copyright Copyright (c) CMSWorks.ru, littledev.ru
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');


cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/bootstrap/css/bootstrap.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/bootstrap/css/bootstrap-responsive.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/font-awesome.min.css');

cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/modalbox.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/style.css');

cot_rc_add_file($cfg['plugins_dir'].'/ckeditor/lib/plugins/spoiler/js/spoiler.js');
cot_rc_add_file($cfg['plugins_dir'].'/ckeditor/lib/plugins/spoiler/js/spoiler.css');

cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/prettyphoto/jquery.prettyPhoto.js');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/prettyphoto/css/prettyPhoto.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/js.js');
if(empty($_GET['e'])) // для того чтобы скрипты подключались только для главной страницы.
{
    cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/jquery.jcarousel.min.js');
    cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/jcarousel.responsive.js');
    cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/jcarousel.responsive.css');
}
require_once cot_rc($cfg['themes_dir'].'/'.$usr['theme'].'/'.$usr['theme'].'.resources.php');

?>