<!-- BEGIN: MAIN -->

<div class="row">
		
<ul class="pull-left span3" >
<li><a href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=userpage')}">{PHP.L.All}</a></li>
<!-- BEGIN: CATEGORY_ROWS -->
<li class="<!-- IF {PAGE_ROW_CAT_SELECT} -->active<!-- ENDIF -->">
<a href="{PAGE_ROW_CAT_URL}">{PAGE_ROW_CAT_TITLE} <span class="date pull-right">{PAGE_ROW_CAT_COUNT_PAGE}</span></a></li>
<!-- END: CATEGORY_ROWS -->
<hr>
<a class="btn btn-success" style="width:88%;" href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.statsdob}</a>
</ul>			

<div class="span9 pull-right">

<!-- BEGIN: PAGE_ROWS -->
<div class="becgraund "><h4><a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a></h4></div>
<div class="wellbord"><p class="small pull-right">{PAGE_ROW_LOCALSTATUS} <span class="date">{PAGE_ROW_DATE_STAMP|cot_date('j F Y ', $this)}г.</span><p>
<p>{PAGE_ROW_TEXT}</p></div>
<br/>
<!-- END: PAGE_ROWS -->	

<!-- IF {PAGENAV_COUNT} > 0 -->	
<div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
<!-- ELSE -->
<center><br><img src="themes/{PHP.theme}/img/alert/icon2.png"/><h3 class="width40 seq">{PHP.L.userpage_empty}</h3></center>
<!-- ENDIF -->

</div>
</div>
<!-- END: MAIN -->
