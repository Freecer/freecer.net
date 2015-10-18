<!-- BEGIN: MAIN -->
<center><div class="breadcrumb"><b>{PRD_TITLE}</b></div></center>

<div class="row">

<table class="table well span8">
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


<table class="table well span4 pull-right ">
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
</p>
</td>
</tr>
<tr>
<td colspan="2" ><p>
<!-- IF {PRD_COST} > 0 AND {PRD_TATE} == 0 --> 
<!-- IF {PHP.cot_plugins_active.marketorders} AND {PHP|cot_auth('plug', 'marketorders', 'R')} -->
<!-- IF {PRD_ORDER_ID} -->
<a class="btn " href="{PRD_ORDER_URL}">{PHP.L.marketorders_title}</a>
<!-- IF {PRD_ORDER_DOWNLOAD} -->
<a class="btn " href="{PRD_ORDER_DOWNLOAD}">{PHP.L.marketorders_file_download}</a>
<!-- ELSE -->
{PRD_ORDER_LOCALSTATUS}
<!-- ENDIF -->  
<!-- ELSE -->
<a class="btn btn-success textcenter" href="{PRD_ID|cot_url('marketorders', 'm=neworder&pid='$this)}">{PHP.L.marketorders_neworder_button}</a>
<!-- ENDIF -->
<!-- ENDIF -->
<!-- ENDIF --></p>
</td>
</tr>
</table>

<div class="span12"><center>
<!-- IF {PRD_STATE} == 2 --><div class="alert alert-warning">{PHP.L.market_forreview}</div><!-- ENDIF -->
<!-- IF {PRD_STATE} == 1 --><div class="alert alert-warning">{PHP.L.market_hidden}</div><!-- ENDIF -->	
<a href="{PRD_SAVE_URL}" class="btn btn-success btn-large"><span>{PHP.L.Publish}</span></a> 
<a href="{PRD_EDIT_URL}" class="btn btn-large"><span>{PHP.L.Edit}</span></a>
</center><br></div>

<table class="table well span8">
<tr><td class="mboxHrr"><center><b>{PRD_SHORTTITLE}</b></center></td></tr>
<tr><td class="seriy">{PRD_TEXT}</td></tr>
</table>

<div class="span4 pull-right">
<!-- IF {PRD_ID|cot_files_count('shop', $this, 'gallery')} > 0 -->
    <div class="pull-left marginright10 marginbottom10">
        {PRD_ID|cot_files_gallery('shop', $this, 'gallery', 'files.project')}
    </div>
<!-- ENDIF -->	

</div>	
<!-- END: MAIN -->