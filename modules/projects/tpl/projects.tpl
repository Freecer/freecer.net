<!-- BEGIN: MAIN -->

<div class="breadcrumb ">{PRJ_TITLE}</div>

<div class="row">
<div class="span3 pull-right"> 
<!-- IF {PRJ_USER_IS_ADMIN} -->{PRJ_ADMIN_EDIT} &nbsp; 
<!-- IF {PRJ_STATE} != 2 --> <a href="{PRJ_HIDEPROJECT_URL}">{PRJ_HIDEPROJECT_TITLE}</a> &nbsp; 
<!-- IF {PRJ_PERFORMER} --> <a href="{PRJ_REALIZEDPROJECT_URL}">{PRJ_REALIZEDPROJECT_TITLE}</a> 
<!-- ENDIF --> <!-- ENDIF --> <!-- ENDIF --> 


<h4 class="date">{PHP.L.offers_add_offer}: <span class="reyl">{PRJ_OFFERS_COUNT}</span>
<!-- IF {PRJ_REALIZED} --><span class="reyl pull-right">{PHP.L.projects_isrealized}</span><!-- ENDIF --> </h4>
<!-- IF {PRJ_COST} > 0 --><h4 class="date">{PHP.L.offers_budget}: <span class="reyl">{PRJ_COST} </span> {PHP.cfg.payments.valuta}</h4><!-- ENDIF -->
<h6 class="date"><i class="fa fa-thumb-tack"></i> &nbsp; Создан {PRJ_DATE_STAMP|cot_build_timeago($this) {PHP.L.data_today}</h6>
    
<!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_FORPRO} --><p class="small"><span class="date">{PHP.L.paypro_forpro}</span></p><!-- ENDIF -->
<!-- IF {PRJ_STATE} == 2 --><p class="small"><span class="date">{PHP.L.projects_forreview}</span></p><!-- ENDIF -->
<!-- IF {PRJ_STATE} == 1 --><p class="small"><span class="date">{PHP.L.projects_hidden}</span></p><!-- ENDIF -->
<hr/>
<p class="small">
<!-- IF {PRJ_ID|cot_files_count('project', $this)} > 0 -->
<p class="small date">Файлы проекта</p>
{PRJ_ID|cot_files_display('project', $this)}
<!-- ENDIF -->
<div style="clear:both;"></div>
</div>


<div class="span9">
<table class="table well">
<tr>
<td rowspan="3" class="center width15"><a href="{PRJ_OWNER_DETAILSLINK}">{PRJ_OWNER_AVATAR}</a></td>
<td><p>{PRJ_OWNER_FEMILY} {PRJ_OWNER_NIME}<span class="date"><a href="{PRJ_OWNER_DETAILSLINK}">({PRJ_OWNER_NICKNAME})</a></span>
<a href="{PRJ_OWNER_DETAILSLINK|cot_url('users', 'm=details&id='$this'&tab=reviews')}">
<span class="reyl">{PRJ_OWNER_REVIEWS_POZITIVE_SUMM}</span> /
<span class="red">{PRJ_OWNER_REVIEWS_NEGATIVE_SUMM}</span>
</a>

<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
<a href="{PHP|cot_url('users', 'm=profile')}" class="date" title="Редактировать профиль"><i class="fa fa-pencil-square-o"></i></a>
<!-- ENDIF --></p></td>
<td><p class="pull-right"><span class="date">
<img src="themes/{PHP.theme}/img/online{PRJ_OWNER_ONLINE}.png" /></span> {PRJ_OWNER_LASTLOG_STAMP|cot_date('j F  H:i')}</p></td>
</tr>
<tr>
<td><p>{PHP.L.registret}<span class="date">{PRJ_OWNER_REGDATE_STAMP|cot_build_timeago($this)}</span></p></td>
<td><p class="pull-right"><!-- IF {PRJ_OWNER_ISPRO} --><span class="date">Профи</span><!-- ENDIF -->
{PHP.L.Riting} <span class="u_rating" title="Рейтинг:  {PRJ_OWNER_USERPOINTS}">
<span class="cur_rat" style="width: {PRJ_OWNER_USERPOINTS}%;"> </span>
</span></p></td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Age}:<span class="date">{PRJ_OWNER_AGE}</span> {PRJ_OWNER_COUNTRYFLAG}<span class="otstup">{PRJ_OWNER_CITY}</span></p></td>
<td><p class="pull-right"><span class="ico2">{PRJ_OWNER_FAVORITE} </span>  <!-- IF {PHP.cot_modules.pm} -->{PRJ_OWNER_PM}<!-- ENDIF --></p> </td>
</tr>
</table>

</div>
<div class="span9 pull-left">{PRJ_TEXT}</div>
</div>



<div class="row">
<div class="span12"> {OFFERS} </div>
</div>
<!-- ENDIF --> 
<!-- END: MAIN -->