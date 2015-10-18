<!-- BEGIN: HEADER -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head>
<title>{HEADER_TITLE}</title> 
<!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}" /><!-- ENDIF -->
<!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}" /><!-- ENDIF -->
<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
<meta name="generator" content="www.freecer.net">
<link rel="canonical" href="{HEADER_CANONICAL_URL}" />
{HEADER_BASEHREF}
{HEADER_HEAD}
<link rel="shortcut icon" href="ip/favicon.ico" />
<link rel="apple-touch-icon" href="apple-touch-icon.png" />
</head>
<body>

	   <!-- IF {PHP.usr.id} == 0 -->
	    <div id="AuthModal" class="modal hide fade">
	    <div class="modal-header"><h5 id="myModalLabel">{PHP.L.Login}<i class="fa fa-sign-out pull-right" data-dismiss="modal" aria-hidden="true" title="Закрыть"></i></h5></div>
	    <div class="modal-body">
	    <form class="form-horizontal" action="{HEADER_GUEST_SEND}" method="post">
        <table width="100%" cellpadding="5" cellspacing="0">
        <tr>
        <td><p for="inputEmail">{PHP.L.users_nameormail}</p><input type="text" name="rusername" id="inputEmail" /></td>
        <td><p for="inputPassword">{PHP.L.Password}</p><input type="password" name="rpassword" id="inputPassword" /></td>
        </tr>
        <tr>
        <td><p class="small">{HEADER_GUEST_COOKIETTL} {PHP.L.users_rememberme}<p/></td>
        <td>
        <p class="small"><a rel="nofollow" class="link date" href="{PHP|cot_url('users','m=passrecover')}">{PHP.L.users_lostpass}</a></p></td>       
        </tr>
        </table>	
	    </div>
	    <div class="modal-footer"><center><button type="submit" class="btn btn-success width60">{PHP.L.Login}</button></div></center>
        </form>
        </div>	
	    <!-- ENDIF -->

<div id="regerModal" class="modal hide fade">
	    <div class="modal-header"><h5 id="regerModallLabel">Регистрация<i class="fa fa-sign-out pull-right" data-dismiss="modal" aria-hidden="true" title="Закрыть"></i></h5></div>
	    <div class="modal-body">

	    <form class="form-horizontal" action="{HEADER_GUEST_SEND}" method="post">

        <table width="100%">

<tr><td colspan="2" class="sweywer"><p class="small">Вариант 1</p><p><b>Заполнить простую форму регистрации</b></p></td></tr>
<tr class="hh5"><td colspan="2" class="sweywer hh5"><a href="{PHP|cot_url('users','m=register')}" ><i class="fa fa-4x fa-pencil-square-o"></i><p>Зарегистрироваться</a></p></td></tr>
<tr>
<td colspan="2" class="sweywer"><br>
<p class="small">Вариант 2</p><p><b>Авторизация через другие системы</b></p>
    <span>
        <i class="fa fa-2x  fa-facebook-square"></i>
        <i class="fa fa-2x  fa-linkedin-square"></i>
        <i class="fa fa-2x  fa-twitter-square"></i>
        <i class="fa fa-2x fa-google-plus-square"></i><p>И другие...</p>
    </span>
    </td>
    </tr>
    <tr>
    <td class="sweywer"><p>{LZ_FORM_4}</p></td>
    <td class="sweywer"><p>{LZ_FORM_7}</p></td>
    </tr>
        </table>
        	
	    </div>
	    <div class="modal-footer"></div>
        </form>
        </div>	

	<div id="wrapper" class="container">
    <div class="navbar navbar-inverse navbar-fixed-top">
	<div class="navbar-inner">

<div class="container">

<ul class="nav small">
<li><a href="{PHP|cot_url('index')}" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}"><img src="themes/{PHP.theme}/img/logo.png"/></a></li>
<li<!-- IF {PHP.env.ext} == 'projects' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('projects')}">{PHP.L.projects_projects}</a></li>
<li<!-- IF {PHP.env.ext} == 'users' AND ({PHP.group} == {PHP.cot_groups.4.alias} AND {PHP.m} == 'main' --> class="active"<!-- ENDIF -->>
<a href="{PHP.cot_groups.4.alias|cot_url('users', 'group='$this)}">{PHP.cot_groups.4.name}</a></li>
<li<!-- IF {PHP.env.ext} == 'market' AND !{PHP.type} --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('market')}">{PHP.L.market}</a></li>
<li<!-- IF {PHP.env.ext} == 'forums' AND !{PHP.type} --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('forums','e=forums&m=topics&s=communication')}">{PHP.L.Forums}</a></li>
</ul>


<ul class="nav small pull-right">
<!-- BEGIN: GUEST -->
<li><a href="{PHP|cot_url('login')}" data-toggle="modal" onClick="$('#AuthModal').modal(); return false;">{PHP.L.Login}</a></li>
<li><a class="" data-toggle="modal" data-target="#regerModal" href="#">Регистрация</a></li>
<!-- END: GUEST -->


<!-- BEGIN: USER -->
<!-- IF {PHP.cfg.payments.balance_enabled} -->
<li><a href="{HEADER_USER_BALANCE_URL}">{PHP.L.payments_mybalance}: {HEADER_USER_BALANCE|number_format($this, '0', '.', ' ')} {PHP.cfg.payments.valuta}</a></li>
<!-- ENDIF -->
<!-- IF {HEADER_USER_PMREMINDER} --><li>{HEADER_USER_PMREMINDER}</li><!-- ENDIF -->

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">{PHP.L.Akkaunt} &nbsp; {PHP.usr.name} <b class="caret"></b></a>

<ul class="dropdown-menu">
<li><a href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">Мой профиль</a></li>
<li><a href="{PHP.usr.name|cot_url('users', 'm=profile)}">{PHP.L.nastroyki}</a></li>	


<!-- IF  {PHP.usr.id} == {USERS_DETAILS_ID} OR {PHP.usr.maingrp} == '7' OR {PHP.usr.maingrp} == '5' -->
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=projects')}">{PHP.L.projects_myprojects}</a></li><!-- ENDIF -->
<!-- IF {PHP|cot_auth('projects', 'any', '1')} --><li><a href="{PHP|cot_url('projects', 'm=useroffers')}">{PHP.L.offers_useroffers}</a></li><!-- ENDIF --> 
<li><a href="{PHP|cot_url('payorders')}">Счета к оплате</a></li>

<li><!-- IF  {PHP.usr.id} == {USERS_DETAILS_ID} OR {PHP.usr.maingrp} == '4' OR {PHP.usr.maingrp} == '5' --><!-- IF {HEADER_USER_PROEXPIRE} -->
<a href="{PHP|cot_url('plug', 'e=paypro')}" class="sweywer" title="{PHP.L.paypro_header_extend}">Тарифный план до:</br>{HEADER_USER_PROEXPIRE|cot_date('d.m.Y', $this)}</a>
<!-- ELSE -->
<a href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_buy}">{PHP.L.paypro_header_buy}</a>
<!-- ENDIF --><!-- ENDIF --></li>

<li>{HEADER_USER_ADMINPANEL}</li>
<li>{PHP.glb_vrf_link_admin}</li>
<li>{HEADER_USER_LOGINOUT}</li>
</ul>
</li>
<!-- END: USER -->
</ul>
</div>
</div>
</div>

<div id="main" class="content">

		

<!-- END: HEADER -->