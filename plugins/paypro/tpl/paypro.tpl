<!-- BEGIN: MAIN -->
<div class="row">
<center><div class="breadcrumb"><h4>{PHP.L.paypro_buypro_title}<h4></div>


	
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{PRO_FORM_ACTION}" method="post">
		<table class="centrals">
		<tr><td><p>{PHP.L.paypro_costofmonth} {PRO_FORM_COST} {PHP.cfg.plugin.paypro.cost} {PHP.cfg.payments.valuta}</p></td></tr>
		<tr><td><p>{PHP.L.paypro_error_months}<span class="date">(месяцев)</span></p>{PRO_FORM_PERIOD}</td></tr>
		<!-- IF {PRO_FORM_USER_NAME} --><tr><td><p>{PHP.L.paypro_giftfor}</p>{PRO_FORM_USER_NAME}</td></tr><!-- ENDIF -->
		<tr><td><button class="btn btn-success span2">{PHP.L.paypro_buy}</button></td></tr>
		</table>
		</form>


<center>
	</div>
<!-- END: MAIN -->