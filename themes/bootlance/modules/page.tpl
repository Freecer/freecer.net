<!-- BEGIN: MAIN -->
<center><div class="breadcrumb"><b>{PAGE_TITLE}</b></div></center>

<div class="row">
	
<div class="span9 pull-right">

<div class="becgraund "><h4>{PAGE_SHORTTITLE}</h4></div>
<div class="wellbord">{PAGE_TEXT}</div><br/>

{PAGE_COMMENTS_DISPLAY}
	
</div>


<div class="span3 ">
<!-- BEGIN: PAGE_ADMIN -->
<ul class="nav">
<li><a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a></li>
<li>{PAGE_ADMIN_UNVALIDATE}</li>
<li >{PAGE_ADMIN_EDIT}</li>
<li>{PAGE_ADMIN_DELETE}</li>
</ul>
<!-- END: PAGE_ADMIN -->

</div>
</div>

<!-- END: MAIN -->

