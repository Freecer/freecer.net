<?php
/**
 * Файл функций плагина Easytemplater
 * 
 * @package easytemplater
 * @version 1.1
 * @author  Roffun
 * @copyright Copyright (c) 2015 http://olro.net/blog/blog-internet/easytemplater-plugin-cotonti
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL');

require_once cot_langfile('easytemplater','plug');
require_once cot_incfile('easytemplater','plug');

$eapath = $cfg['plugin']['easytemplater'];

$out['subtitle'] = $eapath['et_metatitle'];
if ($eapath['et_metatitle'] == '')
{
	$out['subtitle'] = $L['et_metatitle'];
}
$cfg['subtitle'] = $eapath['et_metadesc'];
if ($eapath['et_metadesc'] == '')
{
	$cfg['subtitle'] = $L['et_metadesc'];
}

$cfg['metakeywords'] = $eapath['et_metakeywords'];
if ($eapath['et_metakeywords'] == '')
{
	$cfg['metakeywords'] = $L['et_metakeywords'];
}

$et_h1 = $eapath['et_h1'];
if ($eapath['et_h1'] == '')
{
	$et_h1 = $L['et_h1'];
}

$et_h2 = $eapath['et_h2'];
if ($eapath['et_h2'] == '')
{
	$et_h2 = $L['et_h2'];
}

if (!empty($eapath['et_custom']))
{
	$et_custom = array();
	foreach (preg_split('/[\s\r\n]+/',$eapath['et_custom']) as $ett)
	{
		$et_custom = array_merge($et_custom,explode("\n",$ett));
	}
}
else
{
	$et_custom = false;
}

if ($eapath['et_jsoriframe'] == 1)
{
	$easytemplater = '<iframe src="http://services-web.ru/templateronsite&colfon=' . $et_custom[0] . '&colorinpch=' . $et_custom[1] . '&bgfon=' . $et_custom[2] . '&bgtbox=' . $et_custom[3] .
		'&bginpch=' . $et_custom[4] . '" style="width: 100%;height: 800px;border:0;"></iframe>';
}
else
{
	$easytemplater = "<script>document.write('<iframe src=\"http://services-web.ru/templateronsite&colfon=" . $et_custom[0] . "&colorinpch=" . $et_custom[1] . "&bgfon=" . $et_custom[2] .
		"&bgtbox=" . $et_custom[3] . "&bginpch=" . $et_custom[4] . "\" style=\"width: 100%;height: 800px;border:0;\"></iframe>');</script>";

}
