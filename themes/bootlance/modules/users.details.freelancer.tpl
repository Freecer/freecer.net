<!-- BEGIN: MAIN -->
<!-- BEGIN: USERS_DETAILS_ADMIN -->
<div class="breadcrumb"><a href="{USERS_DETAILS_USERSELECTED_GROUP_URL}">{USERS_DETAILS_USERSELECTED_GROUP_NAME}</a>  {USERS_DETAILS_NICKNAME} 
	 &nbsp; [ {USERS_DETAILS_ADMIN_EDIT} ]</div><!-- END: USERS_DETAILS_ADMIN -->

<div class="row">
<div class="span12">
	


<table class="table well">
<tr>
<td rowspan="3" class="center" align="center">{USERS_DETAILS_AVATAR}</td>
<td><p>{USERS_DETAILS_FEMILY} {USERS_DETAILS_NIME}<span class="date">({USERS_DETAILS_NICKNAME}) {USERS_DETAILS_VRF_TITLE}</span>
<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
<a href="{PHP|cot_url('users', 'm=profile')}" class="date" title="Редактировать профиль"><i class="fa fa-pencil-square-o"></i></a>
<!-- ENDIF --></p></td>
<td><p class="pull-right"><span class="date">
<img src="themes/{PHP.theme}/img/online{USERS_DETAILS_ONLINE}.png" /></span> {USERS_DETAILS_LASTLOG_STAMP|cot_date('j F  H:i')}</p></td>
</tr>
<tr>
<td><p>{PHP.L.registret}<span class="date">{USERS_DETAILS_REGDATE_STAMP|cot_build_timeago($this)}</span></p></td>
<td><p class="pull-right"><!-- IF {USERS_DETAILS_ISPRO} --><span class="date">Профи</span><!-- ENDIF -->
{PHP.L.Riting} <span class="u_rating" title="Рейтинг:  {USERS_DETAILS_USERPOINTS}">
<span class="cur_rat" style="width: {USERS_DETAILS_USERPOINTS}%;"> </span>
</span></p></td>
</tr>
<tr>
<td><p class="imge">{PHP.L.Age}:<span class="date">{USERS_DETAILS_AGE}</span> {USERS_DETAILS_COUNTRYFLAG}<span class="otstup">{USERS_DETAILS_CITY}</span></p></td>
<td><p class="pull-right"><span class="ico2">{USERS_DETAILS_FAVORITE} </span>  <!-- IF {PHP.cot_modules.ds} --><a href="{USERS_DETAILS_ID|cot_url('ds', 'm=send&to=$this')}" class="btn">Написать сообщение</a><!-- ENDIF --></p> </td>
</tr>
</table>

		
	</div>
	<div class="span12">

		<div class="tabbable">
		<ul class="nav nav-tabs">
		<li<!-- IF !{PHP.tab} --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_DETAILSLINK}#tab_info" data-toggle="tab">{PHP.L.Inform}</a></li>
		<!-- IF {PHP.cot_modules.folio} -->
		<li<!-- IF {PHP.tab} == 'portfolio' --> class="active"<!-- ENDIF -->>
		<a href="{USERS_DETAILS_FOLIO_URL}#tab_portfolio" data-toggle="tab">{PHP.L.folio} {USERS_DETAILS_FOLIO_COUNT}</a></li>
		<!-- ENDIF -->
		<!-- IF {PHP.cot_plugins_active.reviews} -->
		<li<!-- IF {PHP.tab} == 'reviews' --> class="active"<!-- ENDIF -->>
		<a href="{USERS_DETAILS_REVIEWS_URL}#tab_reviews" data-toggle="tab">{PHP.L.review_reviews}
        <span class="reyl">{USERS_DETAILS_REVIEWS_POZITIVE_SUMM}</span> /
        <span class="red">{USERS_DETAILS_REVIEWS_NEGATIVE_SUMM}</span>
		</a></li>
		<!-- ENDIF -->
		<!-- IF  {PHP.usr.id} == {USERS_DETAILS_ID} OR {PHP.usr.maingrp} == '4' OR {PHP.usr.maingrp} == '5' -->
		
		<!-- ENDIF -->
		<!-- IF {PHP.cot_modules.market} -->
		<li<!-- IF {PHP.tab} == 'market' --> class="active"<!-- ENDIF -->>
		<a href="{USERS_DETAILS_MARKET_URL}#tab_market" data-toggle="tab">{PHP.L.market} {USERS_DETAILS_MARKET_COUNT}</a></li>
		<!-- ENDIF -->
		<!-- IF {PHP.cot_plugins_active.userpage} -->
        <li<!-- IF {PHP.tab} == 'userpage' --> class="active"<!-- ENDIF -->>
        <a href="{USERS_DETAILS_PAGE_URL}#tab_userpage" data-toggle="tab">{PHP.L.bloge}  {USERS_DETAILS_PAGE_COUNT}</a></li>
        <!-- ENDIF -->
		</ul>
		</div>

		<div class="tab-content">

	    <div class="tab-pane<!-- IF !{PHP.tab} --> active<!-- ENDIF -->" id="tab_info">
	   
	    <div class="row">
	     <!-- IF {USERS_DETAILS_TEXT} -->
	    <div class="span9">{USERS_DETAILS_TEXT}</div>
	    <div class="span3 pull-right"><!-- IF {USERS_DETAILS_PHOTO} -->{USERS_DETAILS_PHOTO}<!-- ENDIF --></div>
	    <!-- ELSE --><center><br><img src="themes/{PHP.theme}/img/alert/icon2.png"/><h3 class="width40 seq">У пользователя пока нет информации!</h3></center><!-- ENDIF -->
	    </div></div>

		<div class="tab-pane<!-- IF {PHP.tab} == 'portfolio' --> active<!-- ENDIF -->" id="tab_portfolio">{PORTFOLIO}</div>
		<div class="tab-pane<!-- IF {PHP.tab} == 'market' --> active<!-- ENDIF -->" id="tab_market">{MARKET}</div>
		
		<div class="tab-pane<!-- IF {PHP.tab} == 'reviews' --> active<!-- ENDIF -->" id="tab_reviews">{REVIEWS}</div>
		<div class="tab-pane<!-- IF {PHP.tab} == 'userpage' --> active<!-- ENDIF -->" id="tab_userpage">{USERPAGE}</div>
		</div>

	</div>
</div>

<!-- END: MAIN -->



