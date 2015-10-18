<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=users.profile.tags,users.edit.tags,users.register.tags
 * Tags=
 * [END_COT_EXT]
 */

/**
 * Placemarks for users module
 *
 * @version 1.0.1
 * @author  devkont
 * @copyright (c) 2014 CMSWorks Team 2014
 */

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('placemarks', 'plug');

if ($m == 'profile')
{
	$code = $usr['id'];
	$plmpr = 'PROFILE';
}
elseif($m == 'edit')
{
	$code = $id;
	$plmpr = 'EDIT';
}
elseif($m == 'register')
{
	$code = $usr['id'];
	$plmpr = 'REGISTER';
}

$t->assign('USERS_'.$plmpr.'_PLACEMARKS', cot_placemarks_getmark('users', $code, 'edit'));

?>