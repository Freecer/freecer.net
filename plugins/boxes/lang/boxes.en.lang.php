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

//The text on the home page
$L['cfg_indextextboxes'] = 'TEXT FOR MAIN PAGE ( <em>index.tpl</em> )';

//TAGS outputting content in a top of the site
$L['cfg_boxsep_headline'] = '<br><div>TAGS outputting content in a top of the site ( <em>header.tpl</em> )</div>';
$L['cfg_box_headmeta'] = 'Evidenced by meta tags';
$L['cfg_box_speedup'] = 'CONNECTING CSS FILES<br>specify the file name and extension in the folder css, situated <b>' . $cfg['mainurl'] . '/' . $cfg['themes_dir'] . '/' . $theme .
	'/css/' . '</b><br>each on a new line';
$L['cfg_box_headcss'] = 'CSS additional styles of site<br>in this field you can insert the usual css code';
$L['cfg_box_head_externaljscss'] = 'CSS, JS<br>in this field you can connect css or js files, including external';

//CONNECTING scripts in the bottom of the site
$L['cfg_boxsep_footerline'] = '<br><div>TAGS outputting content in a bottom of the site ( <em>footer.tpl</em> )</div>';
$L['cfg_box_footerjs'] = 'AREA add various JS CODE<br>without opening and closing &lt;script&gt';
$L['cfg_box_speedupjs'] = 'AREA paste content JS FILE<br>specify the file name and extension in the folder js, situated <b>' . $cfg['mainurl'] . '/' . $cfg['themes_dir'] . '/' . $theme .
	'/js/' . '</b><br>each on a new line';
$L['cfg_box_footerstat'] =
	'CONNECTING visitor counter<br><input onclick="this.select();" size="22" readonly value="{FOOTER_BOXES_STAT}"><br>insert the footer.tpl code, for example metric, liveinternet etc.';
$L['cfg_box_footer_externaljs'] =
	'CONNECTING THE JS FILE<br>in this field can be connected js files including external<br>&lt;script src="file address"&gt;&lt;/script&gt;';

//ADDITIONAL UNITS CAN BE USED GLOBALLY
$L['cfg_boxsep_else'] = '<br><div>ADDITIONAL UNITS CAN BE USED GLOBALLY</div>';
$L['cfg_box1'] = '<h3>The additional block №1</h3><div' . $L['style_my'] . '>' . $L['box1_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box1}">';
$L['cfg_box2'] = '<h3>The additional block №2</h3><div' . $L['style_my'] . '>' . $L['box2_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box2}">';
$L['cfg_box3'] = '<h3>The additional block №3</h3><div' . $L['style_my'] . '>' . $L['box3_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box3}">';
$L['cfg_box4'] = '<h3>The additional block №4</h3><div' . $L['style_my'] . '>' . $L['box4_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box4}">';
$L['cfg_box5'] = '<h3>The additional block №5</h3><div' . $L['style_my'] . '>' . $L['box5_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box5}">';
$L['cfg_box6'] = '<h3>The additional block №6</h3><div' . $L['style_my'] . '>' . $L['box6_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box6}">';
$L['cfg_box7'] = '<h3>The additional block №7</h3><div' . $L['style_my'] . '>' . $L['box7_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box7}">';
$L['cfg_box8'] = '<h3>The additional block №8</h3><div' . $L['style_my'] . '>' . $L['box8_my'] . '</div><input onclick="this.select();" readonly value="{PHP.box8}">';
