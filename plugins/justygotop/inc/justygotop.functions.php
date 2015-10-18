<?php
/**
 * Justygotop plugin
 *
 * @package justygotop
 * @version 1.2
 * @author  Roffun
 * @copyright (c) http://olro.net/blog/blog-internet/justygotop-plugin-cotonti
 * @license BSD
 */

require_once cot_incfile('justygotop','plug');
require_once cot_langfile('justygotop','plug');

$MiniPut = $cfg['plugin']['justygotop'];

if ($cfg['jquery'])
{
	$justygotop = 'document.writeln(" <div class=\"Go-Up\"></div><div class=\"Go-Down\"></div> ");jQuery().ready(function(){jQuery(".Go-Up");jQuery(window).bind("scroll",function(){if(jQuery(window).scrollTop()>' .
		$MiniPut['jgt_minheight'] . '){jQuery(".Go-Up").fadeIn(' . $MiniPut['jgt_fade'] .
		');}else jQuery(".Go-Up").fadeOut(' . $MiniPut['jgt_fade'] .
		');});jQuery(".Go-Up").click(function(){jQuery("html, body").animate({scrollTop:0},' .
		$MiniPut['jgt_speedtop'] .
		');});});jQuery().ready(function(){jQuery(".Go-Down");jQuery(window).bind("scroll",function(){if(jQuery(window).scrollTop()<=$(document).height()-"999"){jQuery(".Go-Down").fadeIn(' .
		$MiniPut['jgt_fade'] . ');}else jQuery(".Go-Down").fadeOut(' . $MiniPut['jgt_fade'] .
		');});jQuery(".Go-Down").click(function(){jQuery("html, body").animate({scrollTop:$(document).height()},' .
		$MiniPut['jgt_speedtop'] . ');});})';

	cot_rc_embed_footer($justygotop);
}
