<!-- BEGIN: MAIN -->
	<center><div class="breadcrumb"><b>{PHP.L.favoriteusers_title}</b></div>
	<div class="row">
	<div class="span12">		
	<form class="form-inline" method="get" id="favu_form" action="{PHP|cot_url('index')}">
	<input type="hidden" name="e" value="favoriteusers" />
	{FAVU_SQ}{FAVU_CAT}
	<button type="submit" class="btn">{PHP.L.Search}</button>
	</form>
	</div>
	</div></center>

	<div class="row">
	<div class="span12">			
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	</div>
	</div>

<div class="row">

<!-- BEGIN: USER_LIST_ROW -->
<div class="span3 ">
<table class="table centerall wellbord {USER_LIST_ROW_ODDEVEN}" >
<tr>
<td rowspan="3">{USER_LIST_ROW_AVATAR}</td>
<td colspan="2"><p>{USER_LIST_ROW_NAME}
<a href="{USERS_DETAILS_REVIEWS_URL}#tab_reviews" data-toggle="tab" class="pull-right">
<span class="reyl">{USER_LIST_ROW_REVIEWS_POZITIVE_SUMM}</span> /
<span class="red">{USER_LIST_ROW_REVIEWS_NEGATIVE_SUMM}</span></a></p>
</td>
</tr>
<tr>
<td><p class="small">{PHP.L.Riting} </p></td>
<td><span class="u_rating" title="Рейтинг:  {USER_LIST_ROW_USERPOINTS}"><span class="cur_rat" style="width: {USER_LIST_ROW_USERPOINTS}%;"> </span></span></td>
</tr>
<tr>
<td><p class="small">Группа:</p></td>
<td><p class="small">{USER_LIST_ROW_USERSELECTED_GROUP_NAME}</p></td>
</tr>
<tr>
<td colspan="3"><p id="uid{USER_LIST_ROW_ID}">{USER_LIST_ROW_DELETE_URL}<span class="pull-right"><img src="themes/{PHP.theme}/img/online{USER_LIST_ROW_ONLINE}.png"/></span></p></td>
</tr>
</table>
</br>
</div>	
<!-- END: USER_LIST_ROW -->

</div>	
<div class="row">
<div class="span12">
<!-- IF {PAGENAV_COUNT} > 0 -->	
<div class="pagination"><ul>{PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}</ul></div>
<!-- ELSE -->
<center><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h3 class="width40">{PHP.L.Noitemsfound}</h3><center>
<!-- ENDIF -->
</div>
</div>


<!-- END: MAIN -->