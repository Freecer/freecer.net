<!-- BEGIN: MAIN -->
    <ul class="nav nav-list">
	<!-- IF {ROW_LEVEL} == 0 -->
	<li><a type="submit" class="btn btn-link" data-toggle="modal" data-target="#Modalx"><i class="fa fa-bars"></i>  {PHP.L.filter}</a></li>
	<li><a href="{PHP|cot_url('projects')}">{PHP.L.All}</a></li>		
	<!-- ENDIF -->

	<!-- BEGIN: CATS -->
	<li<!-- IF {ROW_SELECTED} --> class="active"<!-- ENDIF -->>
	<a href="{ROW_HREF}">{ROW_TITLE} <span class="pull-right">{ROW_COUNT}</span></a>
	<!-- IF {ROW_SUBCAT} --><script type="text/javascript" src="js/uaccordeon.js"></script>	
	{ROW_SUBCAT}
	<!-- ENDIF -->
	</li>
	<!-- END: CATS -->
    </ul>
<!-- END: MAIN -->