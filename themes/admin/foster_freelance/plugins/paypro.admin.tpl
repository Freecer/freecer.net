<!-- BEGIN: MAIN -->
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>
          {PHP.L.pro_users}
        </h3>
      </div>
      <div class="widget-content">
        <table class="cells">
		<!-- BEGIN: PRO_ROW -->
		<tr>
			<td class="width15 textcenter"><a href="{PRO_ROW_USER_DETAILSLINK}">{PRO_ROW_USER_NAME}</a></td>
			<td class="textcenter">{PRO_ROW_EXPIRE|cot_date('d.m.Y', $this)}</td>
			<td class="width5"><a class="pull-right btn btn-mini btn-danger" href="{PRO_ROW_USER_ID|cot_url('admin', 'm=other&p=paypro&a=delete&id='$this)}" title="{PHP.L.Delete}"><i class="icon-remove icon-white"></i></a></td>
		</tr>
		<!-- END: PRO_ROW -->
	    </table>
      </div>
    </div>
    {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
    <div class="widget">
      <div class="widget-header">
        <h3>
          {PHP.L.paypro_addproacc}
        </h3>
      </div>
      <div class="widget-content">
            <table class="cells">
        		<form action="{PRO_FORM_ACTION_URL}" method="POST" class="form-horizontal">
        		{PHP.L.Username}: {PRO_FORM_SELECTUSER} {PRO_FORM_PERIOD} {PHP.L.paypro_month}
        		<button class="btn btn-success">{PHP.L.Add}</button>
            </form>
	    </table>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->