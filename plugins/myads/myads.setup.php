<?php
/* ====================
[BEGIN_COT_EXT]
Code=myads 
Name=Myads
Category=administration-management
Description=Вывод рекламных блоков в контенте или произвольном месте на сайте
Version=2.1
Date=29.05.2014 <sub>( обновлено 2015-06-26 )</sub>
Author=Roffun
Copyright=Copyright © 2014 http://olro.net/blog/blog-internet/myads-plugin-cotonti
Notes=BSD License
English | Русский
SQL=
Auth_guests=R
Lock_guests=W12345A
Auth_members=R
Lock_members=W12345A
Requires_modules=
Requires_plugins=
Recommends_modules=page
Recommends_plugins=boxes
[END_COT_EXT]

[BEGIN_COT_EXT_CONFIG] 
myads1=01:textarea:::
myads2=02:textarea:::
myads3=03:textarea:::
myads4=04:textarea:::
myads5=05:textarea:::
myads_external_sep=18:separator:::
myads_headerlist=19:textarea:::
myads_footerlist=20:textarea:::
myads_sep=30:separator:::
myads_usersdone=31:string::1:
[END_COT_EXT_CONFIG]
==================== */

/**
 * Myads setup plugin
 *
 * @package myads
 * @version 2.1
 * @author  Roffun
 * @copyright Copyright(c) 2014 http://olro.net/blog/blog-internet/myads-plugin-cotonti
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');
