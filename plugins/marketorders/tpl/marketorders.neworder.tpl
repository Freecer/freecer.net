<!-- BEGIN: MAIN -->
<center><div class="breadcrumb"><b>{BREADCRUMBS}</b></div>


	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{NEWORDER_FORM_SEND}" method="post" name="neworderform">
		<table class="width60 centrals">
			<tr>
			<td><p>{PHP.L.marketorders_neworder_product}:</p><h3>{NEWORDER_PRD_SHORTTITLE}</h3></td>
			</tr>
			<tr class="hidden">
			<td><p>{PHP.L.marketorders_neworder_count}:</p>{NEWORDER_FORM_COUNT}</td>
			</tr>
			<tr>
			<td><p>{PHP.L.marketorders_neworder_comment}:</p>{NEWORDER_FORM_COMMENT}</td>
			</tr>
			<tr>
			<td><p>{PHP.L.marketorders_neworder_total}:</p><h3 id="total">{NEWORDER_PRD_COST}  {PHP.cfg.payments.valuta}</h3></td>
			</tr>
			<!-- IF {PHP.usr.id} == 0 -->
			<tr>
			<td><p>{PHP.L.marketorders_neworder_email}:</p>{NEWORDER_FORM_EMAIL}</td>
			</tr>
			<!-- ENDIF -->
			<tr>
			<td><input type="submit" class="btn btn-success" value="{PHP.L.marketorders_neworder_button}" /></td>
			</tr>
		</table>
	</form>
				
	<script>
	
		$().ready(function() {
			$('#count').bind('change click keyup', function (){
				var prdcost = {PHP.item.item_cost};
				var count = $('input[name="rcount"]').val();
				$('#total').html(prdcost*count);
			});
		});
		
	</script>
	

</center>
<!-- END: MAIN -->