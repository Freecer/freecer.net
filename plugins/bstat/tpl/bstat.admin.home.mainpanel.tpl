<!-- BEGIN: MAIN -->

<div class="block">
	<h5><i class="fa fa-plug"></i> {PHP.L.bstat_title}</h5>
	<table class="cells table table-striped">
		<!-- BEGIN: BAL_ROW -->
		<tr>
			<td style="width:200px;"><a href="{BAL_ROW_USER_DETAILSLINK}">{BAL_ROW_USER_FULL_NAME}</a></td>
			<td style="text-align: right;">{BAL_ROW_SUMM} {PHP.cfg.payments.valuta}</td>
			<td style="width:50px; text-align: right;"><a href="{BAL_ROW_USER_ID|cot_url('admin', 'm=payments&id='$this)}"><img src="images/icons/default/arrow-right.png"/></a></td>
		</tr>
		<!-- END: BAL_ROW -->
	</table>
</div>

<!-- END: MAIN -->