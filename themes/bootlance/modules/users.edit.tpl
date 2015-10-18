<!-- BEGIN: MAIN -->
<center><div class="breadcrumb"><h4>{USERS_EDIT_TITLE}</h4></div></center>

<div class="row">

<div class="span3 well">
<ul class="nav fontsise">

<li class="datelites">Акаунт</li>
<li><a href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">Мой профиль</a></li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=portfolio')}">Портфолио</a></li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=reviews')}">Отзывы</a></li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=userpage')}">Мой блог</a></li>
<li><a href="{PHP|cot_url('favoriteusers', 'e=favoriteusers')}">Избранные пользователи</a></li>

<li class="datelites">Услуги</li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=projects')}">Мои проекты</a></li>
<li><a href="{PHP|cot_url('projects', 'm=useroffers')}">Мои заявки</a></li>
<li><a href="{PHP|cot_url('sbr')}">Мои сделки</a></li>
<li><a href="{PHP|cot_url('sbr', 'm=add')}">Создать безопасную сделку</a></li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=market')}">Мои товары</a></li>

<li class="datelites">Финансы</li>
<li><a href="{PHP|cot_url('payorders')}">Счета к оплате</a></li>
<li><a href="{PHP|cot_url('payments', 'm=balance')}">Финансовые операции</a></li>
<li><a href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_buy}">Продлить тарифный план</a></li>
<li><a href="{PHP|cot_url('marketorders', 'm=purchases')}">Мои покупки</a></li>
</ul>
</div>



<div class="span8 pull-right">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<form action="{USERS_EDIT_SEND}" method="post" enctype="multipart/form-data" name="useredit">


<ul class="nav nav-tabs">
<li class="active"><a href="#home" data-toggle="tab">Информация</a></li>

<li><a href="#profile" data-toggle="tab">Навыки</a></li>

<li><a href="#contakt" data-toggle="tab">Мои контакты</a></li>
<li><a href="#bezopasnoct" data-toggle="tab">Безопасность</a></li>
<li><a href="#reclama" data-toggle="tab">Раздел рекламмы</a></li>
<li><a href="#nastroyki" data-toggle="tab">Настройки</a></li>
</ul>

<div class="tab-content">
<div class="tab-pane active" id="home">

<table class="table">
<tr>
<td>Логин:</td>
<td>{USERS_EDIT_NAME}</td>
</tr>
<!-- IF {USERS_EDIT_GROUPSELECT} -->
<tr>
<td>Группа:</td>
<td>{USERS_EDIT_GROUPSELECT}</td>
</tr>
<!-- ENDIF -->
<tr>
<td >{PHP.L.users_id}:</td>
<td > № <input type="" name="id" value="{USERS_EDIT_ID}" /></td>
</tr>
<tr>
<td>{PHP.L.Groupsmembership}:</td>
<td>{PHP.L.Maingroup}:<br />&nbsp;{PHP.out.img_down}<br />{USERS_EDIT_GROUPS}</td>
</tr>
<tr>
<td colspan="3"><p class="imge">Резюме (блок информации профиля)</p>{USERS_EDIT_TEXT}</td>
</tr>
<tr class="hidden">
<td><p class="imge">{PHP.L.Groupsmembership}:</p><div id="usergrouplist">{USERS_EDIT_GROUPS}</div></td>
<td></td>
<td></td>
</tr>
<tr>
<!-- IF {USERS_EDIT_PHOTO} -->
<td colspan="2"><p class="imge">{PHP.L.Photo}:<p>{USERS_EDIT_PHOTO}<p class="imge small">Формат: 250 Х 350 px (.png .jpg .gif )</p></td>
<!-- ENDIF -->
<!-- IF {USERS_EDIT_AVATAR} -->
<td><p class="imge">{PHP.L.Avatar}:</p>{USERS_EDIT_AVATAR}<p class="imge small">Формат: 100 Х 100 px (.png .jpg .gif )</p></td>
<!-- ENDIF -->
</tr>				
</table>
</div>


<div class="tab-pane" id="profile">{USERS_EDIT_CAT}</div>


<div class="tab-pane" id="contakt">
<table class="table">
<tr>
<td class="width30"><p class="imge">{PHP.L.scipe}:</p></td>
<td class="width40">{USERS_EDIT_SKYPE}</td>
</tr>	
<tr>
<td class="width30"><p class="imge">E-mail :</p></td>
<td class="width40">{USERS_EDIT_EMAILSE}{USERS_EDIT_EMAIL}</td>
</tr>	
<tr>
<td class="width30"><p class="imge">{PHP.L.telept}:</p></td>
<td class="width40">{USERS_EDIT_TELEPT}</td>
</tr>	
<tr>
<td class="width30"><p class="imge">{USERS_EDIT_SITES_TITLE}:</p></td>
<td class="width40">{USERS_EDIT_SITES}</td>
</tr>

<tr class="">
<td colspan="2"><p class="imge">{PHP.L.users_hideemail}:<span class="date">{USERS_EDIT_HIDEEMAIL}</span></p></td>
</tr>
</table>
</div>


<div class="tab-pane" id="bezopasnoct">
<table class="table">
<tr>
<td>{PHP.L.users_newpass}:</td>
<td>
{USERS_EDIT_NEWPASS}
<p class="small">{PHP.L.users_newpasshint1}</p>
</td>
<tr>
<td></td>
<td><p class="small">{LZ_TITLE},{LZ_FORM}</p></td>
</tr>
</table>
</div>


<div class="tab-pane" id="reclama">
<table class="table">

<tr>
<td><p class="imge">{PHP.L.prjsender}:</p></td>
<td><a href="{PHP|cot_url('prjsender')}" class="btn btn-small">Отметить категории</a></td>
</tr>

<tr>
<td class="width40"><p class="imge">{USERS_EDIT_RECLAMA_TITLE}:</p><p class="small">(Максимальное колличество символов 255)</p></td>
<td class="width40">{USERS_EDIT_RECLAMA}</td>
</tr>
</table>
</div>


<div class="tab-pane" id="nastroyki">
<table class="table">
<tr>
<td class="width30"><p class="imge">{PHP.L.femily}:</p></td>
<td class="width60">{USERS_EDIT_FEMILY}</td>
</tr>
<tr>
<td><p class="imge">{PHP.L.nime}:</p></td>
<td class="width60">{USERS_EDIT_NIME}</td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Gender}:</p></td>
<td class="width30">{USERS_EDIT_GENDER}</td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Language}:</p></td>
<td class="width30">{USERS_EDIT_LANG}</td>
</tr>
<tr><!-- IF {PHP.cot_plugins_active.locationselector} -->
<td><p class="imge">{PHP.L.Country}:</p></td>
<td class="width30">{USERS_EDIT_LOCATION}</td>
</tr><!-- ELSE -->
<tr>
<td><p class="imge">{PHP.L.Country}:</p></td>
<td class="width30">{USERS_EDIT_LOCATION}</td>
</tr><!-- ENDIF -->
<tr>
<td><p class="imge">{PHP.L.Birthdate}:</p></td>
<td class="width20">{USERS_EDIT_BIRTHDATE}</td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Timezone}:</p></td>
<td class="width61">{USERS_EDIT_TIMEZONE}</td>
</tr>
<tr><!-- IF {PHP.cot_modules.pm} -->
<td class="width30"><p class="imge">{PHP.L.users_pmnotify}:</p></td>
<td class="width40"><p class="imge">{USERS_EDIT_PMNOTIFY}</p></td>
<!-- ENDIF --></tr>	

<tr><td>{PHP.L.Registered}:</td><td>{USERS_EDIT_REGDATE}</td></tr>
<tr><td>{PHP.L.Lastlogged}:</td><td>{USERS_EDIT_LASTLOG}</td></tr>
<tr><td>{PHP.L.users_lastip}:</td><td>{USERS_EDIT_LASTIP}</td></tr>
<tr><td>{PHP.L.users_logcounter}:</td><td>{USERS_EDIT_LOGCOUNT}</td></tr>
<tr><td>{PHP.L.users_deleteuser}:</td><td>{USERS_EDIT_DELETE}</td></tr>
</table>
</div>
						
<div class="pull-right"><button type="submit" class="btn btn-success span2">{PHP.L.Update}</button>
</div>

</div>

</form>
</br>
</div>
</div>

<!-- END: MAIN -->

