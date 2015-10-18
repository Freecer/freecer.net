<!-- BEGIN: MAIN -->
<center><div class="breadcrumb"><h4>{LIST_CATPATH}</h4></div></center>

<div class="row">
<div class="span12"><span class="pull-right "><!-- IF {PHP.usr.auth_write} -->{LIST_SUBMITNEWPAGE}</span><!-- ENDIF --></div>

<!-- BEGIN: LIST_ROW -->
<div class="span9 pull-right">
<div class="becgraund "><h4><a href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a></h4></div>
<div class="wellbord"><p>{LIST_ROW_TEXT_CUT}</p></div>
<br/></div>
<div class="span3">
<div class="becgraund "><span>{LIST_ROW_DATE_STAMP|cot_date('j F Y ', $this)}г.</span> <span>{LIST_ROW_DATE_STAMP|cot_date('H:i', $this)}</span></div>
<div class="wellbord">
<p class="small"></p>
<p class="small">Коментариев: {LIST_ROW_COMMENTS}</p>
<p class="small">Просмотров:<span class="date">{LIST_ROW_COUNT}</span></p>
<!-- IF {PHP.usr.isadmin} --><p class="small marginbottom10">{LIST_ROW_ADMIN}</p><!-- ENDIF -->
</div>
</div>
<!-- END: LIST_ROW -->

<div class="span3">


<!-- IF {PHP.cot_plugins_active.tags} -->
<p>{PHP.L.Tags}:  {LIST_TAG_CLOUD}</p>
<!-- ENDIF -->
</div></div>
<!-- END: MAIN -->