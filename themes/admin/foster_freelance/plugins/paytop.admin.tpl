<!-- BEGIN: MAIN -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>
          {PHP.L.paytop_addtopaccaunt}
        </h3>
      </div>
      <div class="widget-content">
          <table class="cells">
    		<!-- BEGIN: TOP_ROW -->
    		<tr>
    			<td><a href="{TOP_ROW_USER_DETAILSLINK}">{TOP_ROW_USER_NAME}</a></td>
    			<td>{TOP_ROW_AREA}</td>
    			<td>{TOP_ROW_EXPIRE|cot_date('d.m.Y', $this)}</td>
    			<td><a href="{TOP_ROW_SERVICE_ID|cot_url('admin', 'm=other&p=paytop&a=delete&id='$this)}">{PHP.L.Delete}</a></td>
    		</tr>
    		<!-- END: TOP_ROW -->
    	 </table>
        <div class="margintop10 textcenter">
    	<form action="{TOP_FORM_ACTION_URL}" method="POST">
    		{PHP.L.Username}: <input type="text" name="username" value="" /> 
    		{PHP.L.paytop_area}: {TOP_FORM_AREA} 
    		{PHP.L.paytop_period} {TOP_FORM_PERIOD} {TOP_FORM_PERIOD_NAME}
    		<button class="btn">{PHP.L.Add}</button>
    	</form>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->