<!-- BEGIN: MAIN -->

<div class="row">

<ul class="pull-left span3" >		
<li><a href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=projects')}">{PHP.L.All}</a></li>
<!-- BEGIN: CAT_ROW -->	
<li class="<!-- IF {PRJ_CAT_ROW_SELECT} -->active<!-- ENDIF -->">
<a href="{PRJ_CAT_ROW_URL}">{PRJ_CAT_ROW_TITLE} <span class="date pull-right">{PRJ_CAT_ROW_COUNT_PROJECTS}</span></a></li>
<!-- END: CAT_ROW -->
<br>
<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {ADDPRJ_SHOWBUTTON} -->
<a href="{PHP|cot_url('projects', 'm=add')}" class="btn btn-success" style="width:88%;">{PHP.L.projects_add_to_catalog}</a>
<!-- ENDIF -->
</ul>

<div class="span9 pull-right">

<div id="listprojects">
<!-- BEGIN: PRJ_ROWS -->
<div class="media<!-- IF {PRJ_ROW_ISBOLD} --> well prjbold<!-- ENDIF --><!-- IF {PRJ_ROW_ISTOP} --> well prjtop<!-- ENDIF -->">
<table class="table">
<tr class="mboxHrr">
<td colspan="4"class="width80"><b><a class="textprojekt" href="{PRJ_ROW_URL}">{PRJ_ROW_SHORTTITLE}</a></b></td>
<td class="width20"><b><!-- IF {PRJ_ROW_COST} > 0 --><div class="pull-right">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --></b></td>
</tr>
<tr>
<td class="width40"><p class="owner small"><!-- IF {PRJ_ROW_TYPE} --><i class="fa fa-anchor"></i> {PRJ_ROW_TYPE} <!-- ENDIF --><a href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a></p></td>
<td class="width20" aligh="center"><p class="owner small"><span class="otstup"><i class="fa fa-clock-o"></i> </span>
<span class="date">{PRJ_ROW_DATE_STAMP|cot_build_timeago($this) {PHP.L.data_today}</span></p></td>

<td class="width15" aligh="center"><p class="owner small"><span class="region otstup"> <i class="fa fa-map-marker"></i> {PRJ_ROW_COUNTRY} {PRJ_ROW_EDIT_URL}</span></p></td>
<td class="width15" aligh="center"><p class="owner small"><span class="pull-right offers"><a href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">
<i class="fa fa-comments-o"></i> {PHP.L.offers_add_offer}</a> {PRJ_ROW_OFFERS_COUNT}</span></p> </p></td>
<td class="width10"><p class="owner small"><!-- IF {PRJ_ROW_USER_IS_ADMIN} --><span class="region otstup"> {PRJ_ROW_LOCALSTATUS}</span><!-- ENDIF --></p></td>
</tr>
<tr>
<td colspan="4"><p class="owner small">{PRJ_ROW_SHORTTEXT}</p></td>
<td>
<!-- IF {PHP.cot_plugins_active.payprjtop} AND {PHP.usr.id} == {PHP.urr.user_id} --><p><span class="mboxHy"> {PRJ_ROW_PAYTOP}</span></p><!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.payprjbold} AND {PHP.usr.id} == {PHP.urr.user_id} --><p><span class="mboxHy"> {PRJ_ROW_PAYBOLD}</span></p><!-- ENDIF -->
</td>
</tr>
</table>
</div>
<!-- END: PRJ_ROWS -->
</div>


<!-- IF {PAGENAV_COUNT} > 0 -->	
<div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
<!-- ELSE -->
<center><br><img src="themes/{PHP.theme}/img/alert/icon2.png"/><h3 class="width40 seq">{PHP.L.projects_empty}</h3></center>
<!-- ENDIF -->
</div></div>
<!-- END: MAIN -->