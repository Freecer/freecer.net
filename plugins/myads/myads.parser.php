<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=parser.last
[END_COT_EXT]
==================== */
/**
 * Myads parser
 *
 * @package myads
 * @version 2.1
 * @author  Roffun
 * @copyright Copyright(c) 2014 http://olro.net/blog/blog-internet/myads-plugin-cotonti
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('myads','plug');
require_once cot_langfile('myads','plug');

global $cfg,$env,$pag,$sys;
if (!empty($cfg['plugin']['myads']['myads_usersdone']) && $env['ext'] ==
	"page" && $env['location'] == "pages")
{
	global $cfg,$env,$pag,$sys,$myadsur;
	$myads_usersdone = array();
	foreach (preg_split('/[\s,]+/',$cfg['plugin']['myads']['myads_usersdone']) as
		$myadsu)
	{
		$myads_usersdone = array_merge($myads_usersdone,explode("\n",$myadsu));
	}

	if ($myads_usersdone)
	{
		for ($count = count($myads_usersdone),$i = 0; $i < $count; $i++)
		{
			if ($myads_usersdone[$i] == $pag['page_ownerid']) $myadsur =
					"myadsuserdone";

		}

	}

	if ($myadsur == "myadsuserdone")
	{
		for ($scb = 1; $scb <= 5; $scb++) $text = preg_replace('#\[SCEBANNER' .
				$scb . '\]#si',$cfg['plugin']['myads']['myads' . $scb],$text);
	}
	else
	{
		for ($scb = 1; $scb <= 5; $scb++) $text = preg_replace('#\[SCEBANNER' .
				$scb . '\]#si',"",$text);
	}

}
else
{
	$myads_usersdone = false;
}
