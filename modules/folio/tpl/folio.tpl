<!-- BEGIN: MAIN -->
<center><div class="breadcrumb"><b>{PRD_TITLE}</b></div></center>

<div class="row">
<table class="table well span6">
<tr>
<td rowspan="3" class="center" align="center"><a href="{PRJDOWNER_DETAILSLINK}">{PRD_OWNER_AVATAR}</a></td>
<td><p>{PRD_OWNER_FEMILY} {PRD_OWNER_NIME}<span class="date"><a href="{PRD_OWNER_DETAILSLINK}">({PRD_OWNER_NICKNAME})</a></span>
<a href="{PRD_OWNER_DETAILSLINK|cot_url('users', 'm=details&id='$this'&tab=reviews')}">
<span class="reyl">{PRD_OWNER_REVIEWS_POZITIVE_SUMM}</span> /
<span class="red">{PRD_OWNER_REVIEWS_NEGATIVE_SUMM}</span>
</a>
<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
<a href="{PHP|cot_url('users', 'm=profile')}" class="date" title="Редактировать профиль"><i class="fa fa-pencil-square-o"></i></a>
<!-- ENDIF --></p></td>
<td><p class="pull-right"><span class="date">
<img src="themes/{PHP.theme}/img/online{PRD_OWNER_ONLINE}.png" /></span> {PRD_OWNER_LASTLOG_STAMP|cot_date('j F  H:i')}</p></td>
</tr>
<tr>
<td><p>{PHP.L.registret}<span class="date">{PRD_OWNER_REGDATE_STAMP|cot_build_timeago($this)}</span></p></td>
<td><p class="pull-right"><!-- IF {PRD_OWNER_ISPRO} --><span class="date">Профи</span><!-- ENDIF -->
{PHP.L.Riting} <span class="u_rating" title="Рейтинг:  {PRD_OWNER_USERPOINTS}">
<span class="cur_rat" style="width: {PRD_OWNER_USERPOINTS}%;"> </span>
</span></p></td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Age}:<span class="date">{PRD_OWNER_AGE}</span> {PRD_OWNER_COUNTRYFLAG}<span class="otstup">{PRD_OWNER_CITY}</span></p></td>
<td><p class="pull-right"><span class="ico2">{PRD_OWNER_FAVORITE} </span>  <!-- IF {PHP.cot_modules.pm} -->{PRD_OWNER_PM}<!-- ENDIF --></p> </td>
</tr>
</table>


<table class="table well span6 pull-right ">
<tr>
<td colspan="2" ><!-- IF {PRD_COST} > 0 --><p class="textcenter reyl textumbo">{PRD_COST} {PHP.cfg.payments.valuta}</p><!-- ENDIF --></td>
</tr>
<tr>
<td><p class="date">{PRD_DATE}</p></td>
<td>
<p class="date">
<!-- IF {PRD_USER_IS_ADMIN} -->
<span class="small">{PRD_ADMIN_EDIT}</span> 
<!-- IF {PRD_STATE} != 2 -->
<span class="small"><a href="{PRD_HIDEPRODUCT_URL}">{PRD_HIDEPRODUCT_TITLE}</a></span> 
<!-- ENDIF -->
<!-- ENDIF -->	
<span class="date pull-right">{PRD_COUNT} Просмотров</span></p>
</td>
</tr>
</table>
<div class="span12"><center>
<!-- IF {PRD_STATE} == 2 --><div class="alert alert-warning">{PHP.L.folio_forreview}</div><!-- ENDIF -->
<!-- IF {PRD_STATE} == 1 --><div class="alert alert-warning">{PHP.L.folio_hidden}</div><!-- ENDIF -->	
</center><br></div>

<center>
<table class="table wellbord width80">
<tr><td class="mboxHrr" style='position: relative;'>
    <!-- IF {PRD_ID|getPreviousFolio($this, 'PRD_SHOW_URL')} != '' -->
    <span class='left' style='position: absolute; left: 10px; top: 5px; height: 100%;'>
        <a class='btn btn-small'  href="{PRD_ID|getPreviousFolio($this, 'PRD_SHOW_URL')}"> < Назад</a>
    </span>
    <!-- ENDIF -->
    <center style="width: 100%; padding: 0 70px; box-sizing: border-box;"><b>{PRD_SHORTTITLE}</b></center>
    <!-- IF {PRD_ID|getNextFolio($this, 'PRD_SHOW_URL')} != '' -->
    <span class='right' style='position: absolute; right: 10px; top: 5px; height: 100%; text-align: right;'>
        <a class='btn btn-small' href="{PRD_ID|getNextFolio($this, 'PRD_SHOW_URL')}">Далее > </a>
    </span>
    <!-- ENDIF -->
</td></tr>
<tr><td class="seriy">{PRD_TEXT}</td></tr>
<tr><td><!-- IF {PRD_ID|cot_files_count('folio',$this, 'gallery')} > 0 -->
{PRD_ID|cot_files_display('folio',$this, 'gallery', 'files.folio')}
<!-- ENDIF --></td></tr>
</table>
</center>




</div>
<!-- END: MAIN -->