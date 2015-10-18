<!-- BEGIN: MAIN -->
<center><div class="breadcrumb"><h4>Учётная запись {USERS_PROFILE_NAME} </h4></div></center>

<div class="row">

<div class="span3 well">
<ul class="nav fontsise">

<li class="datelites">Акаунт</li>
<li><a href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">Мой профиль</a></li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=reviews')}">Отзывы</a></li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=userpage')}">Мой блог</a></li>
<li><a href="{PHP|cot_url('favoriteusers', 'e=favoriteusers')}">Избранные пользователи</a></li>

<li class="datelites">Услуги</li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=projects')}">Мои проекты</a></li>
<li><a href="{PHP|cot_url('sbr')}">Мои сделки</a></li>
<li><a href="{PHP|cot_url('sbr', 'm=add')}">Создать безопасную сделку</a></li>
<li><a href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=market')}">Мои товары</a></li>

<li class="datelites">Финансы</li>
<li><a href="{PHP|cot_url('payorders')}">Счета к оплате</a></li>
<li><a href="{PHP|cot_url('payments', 'm=balance')}">Финансовые операции</a></li>
<li><a href="{PHP|cot_url('marketorders', 'm=purchases')}">Мои покупки</a></li>
</ul>
</div>



<div class="span8 pull-right">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile">


<ul class="nav nav-tabs">
<li class="active"><a href="#home" data-toggle="tab">Информация</a></li>
<li><a href="#contakt" data-toggle="tab">Мои контакты</a></li>
<li><a href="#bezopasnoct" data-toggle="tab">Безопасность</a></li>
<li><a href="#reclama" data-toggle="tab">Раздел рекламмы</a></li>
<li><a href="#nastroyki" data-toggle="tab">Настройки</a></li>
</ul>

<div class="tab-content">
<div class="tab-pane active" id="home">
<input type="hidden" name="userid" value="{USERS_PROFILE_ID}" />
<table class="table">
<!-- IF {USERS_PROFILE_GROUPSELECT} -->
<tr<!-- IF !{PHP.cfg.plugin.usergroupselector.allowchange} AND {PHP.cfg.plugin.usergroupselector.required} --> class="hidden"<!-- ENDIF -->>			
<td>{PHP.L.profile_group}:</td>
<td>{USERS_PROFILE_GROUPSELECT}</td>
<td></td>
</tr>
<!-- ENDIF -->
<tr>
<td colspan="3"><p class="imge">Резюме (блок информации профиля)</p>{USERS_PROFILE_TEXT}</td>
</tr>
<tr class="hidden">
<td><p class="imge">{PHP.L.Groupsmembership}:</p><div id="usergrouplist">{USERS_PROFILE_GROUPS}</div></td>
<td></td>
<td></td>
</tr>
<tr>
<!-- IF {USERS_PROFILE_PHOTO} -->
<td colspan="2"><p class="imge">{PHP.L.Photo}:<p>{USERS_PROFILE_PHOTO}<p class="imge small">Формат: 250 Х 350 px (.png .jpg .gif )</p></td>
<!-- ENDIF -->
<!-- IF {USERS_PROFILE_AVATAR} -->
<td><p class="imge">{PHP.L.Avatar}:</p>{USERS_PROFILE_AVATAR}<p class="imge small">Формат: 100 Х 100 px (.png .jpg .gif )</p></td>
<!-- ENDIF -->
</tr>				
</table>
</div>


<div class="tab-pane" id="contakt">
<table class="table">
<tr>
<td class="width30"><p class="imge">{PHP.L.scipe}:</p></td>
<td class="width40">{USERS_PROFILE_SKYPE}</td>
</tr>	
<tr>
<td class="width30"><p class="imge">E-mail :</p></td>
<td class="width40">{USERS_PROFILE_EMAILSE}{USERS_PROFILE_EMAIL}</td>
</tr>	
<tr>
<td class="width30"><p class="imge">{PHP.L.telept}:</p></td>
<td class="width40">{USERS_PROFILE_TELEPT}</td>
</tr>	
<tr>
<td class="width30"><p class="imge">{USERS_PROFILE_SITES_TITLE}:</p></td>
<td class="width40">{USERS_PROFILE_SITES}</td>
</tr>
<tr>
<!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
<td id="emailtd"><p class="imge">{PHP.L.Email}:</p>{USERS_PROFILE_EMAIL}
<!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
<script type="text/javascript">//<![CDATA[
$(document).ready(function(){$("#emailnotes").hide();$("#emailtd").click(function(){$("#emailnotes").slideDown();});});
//]]</script>
</td>
<td ><p class="imge">Новый {PHP.L.Email}:</p><p id="emailnotes">{USERS_PROFILE_EMAILPASS}</p></td>
<td><p class="imge"></p></td>
<!-- END: USERS_PROFILE_EMAILPROTECTION -->
<!-- END: USERS_PROFILE_EMAILCHANGE -->
</tr>
<tr class="hidden">
<td colspan="2"><p class="imge">{PHP.L.users_hideemail}:<span class="date">{USERS_PROFILE_HIDEEMAIL}</span></p></td>
</tr>
</table>
</div>


<div class="tab-pane" id="bezopasnoct">
<table class="table">
<tr>
<td class="width40"><p class="imge">{PHP.L.users_newpass}:</p><p class="small">{PHP.L.users_newpasshint1}</p></td>
<td>{USERS_PROFILE_OLDPASS}<p class="small">{PHP.L.users_oldpasshint}</p></td>
</tr>
<tr>
<td></td>
<td>{USERS_PROFILE_NEWPASS1} {USERS_PROFILE_NEWPASS2}<p class="small">{PHP.L.users_newpasshint2}</p></td>
</tr>

<tr>
<td></td>
<td><p class="small">{LZ_TITLE},{LZ_FORM}</p></td>
</tr>

</table>
</div>


<div class="tab-pane" id="reclama">
<table class="table">
<!-- IF {PHP.usr.maingrp} == 4 -->
<tr>
<td><p class="imge">{PHP.L.prjsender}:</p></td>
<td><a href="{PHP|cot_url('prjsender')}" class="btn btn-small">Отметить категории</a></td>
</tr>
<!-- ENDIF -->
<tr>
<td class="width40"><p class="imge">{USERS_PROFILE_RECLAMA_TITLE}:</p><p class="small">(Максимальное колличество символов 255)</p></td>
<td class="width40">{USERS_PROFILE_RECLAMA}</td>
</tr>
</table>
</div>


<div class="tab-pane" id="nastroyki">
<table class="table">
<tr>
<td class="width30"><p class="imge">{PHP.L.femily}:</p></td>
<td class="width60">{USERS_PROFILE_FEMILY}</td>
</tr>
<tr>
<td><p class="imge">{PHP.L.nime}:</p></td>
<td class="width60">{USERS_PROFILE_NIME}</td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Gender}:</p></td>
<td class="width30">{USERS_PROFILE_GENDER}</td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Language}:</p></td>
<td class="width30">{USERS_PROFILE_LANG}</td>
</tr>
<tr><!-- IF {PHP.cot_plugins_active.locationselector} -->
<td><p class="imge">{PHP.L.Country}:</p></td>
<td class="width30">{USERS_PROFILE_LOCATION}</td>
</tr><!-- ELSE -->
<tr>
<td><p class="imge">{PHP.L.Country}:</p></td>
<td class="width30">{USERS_PROFILE_LOCATION}</td>
</tr><!-- ENDIF -->
<tr>
<td><p class="imge">{PHP.L.Birthdate}:</p></td>
<td class="width20">{USERS_PROFILE_BIRTHDATE}</td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Timezone}:</p></td>
<td class="width61">{USERS_PROFILE_TIMEZONE}</td>
</tr>
<tr><!-- IF {PHP.cot_modules.pm} -->
<td class="width30"><p class="imge">{PHP.L.users_pmnotify}:</p></td>
<td class="width40"><p class="imge">{USERS_PROFILE_PMNOTIFY}</p></td>
<!-- ENDIF --></tr>	
<tr>
<td><p class="imge">{USERS_PROFILE_RCOMM_PM_SEND_TITLE}:</p></td>
<td class="width60"><p class="imge">{USERS_PROFILE_RCOMM_PM_SEND}</p></td>
</tr>
<tr>
<td><p class="imge">{USERS_PROFILE_RCOMM_MAIL_SEND_TITLE}:</p></td>
<td class="width60"><p class="imge">{USERS_PROFILE_RCOMM_MAIL_SEND}</p></td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Registered}:</p></td>
<td class="width60"><p class="imge">{USERS_PROFILE_REGDATE}</p></td>
</tr>
</table>
</div>
						

<div class="pull-right"><button class="btn btn-success span2">{PHP.L.Update}</button>
</div>

</div>

</form>
</br>
</div>
</div>

<!-- END: MAIN -->