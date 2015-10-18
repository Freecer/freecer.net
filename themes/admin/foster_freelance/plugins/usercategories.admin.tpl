<!-- BEGIN: MAIN -->
<div class="row-fluid">
  <div class="container-fluid">
  <form action="{EDITFORM_ACTION_URL}" method="post" name="editcat">
    <div class="widget">
      <div class="widget-header">
        <h3>
          {PHP.L.usercategories_cat_editor}
        </h3>
      </div>
      <div class="widget-content">
      <table class="cells">
			<tr>
				<td class="coltop width10">{PHP.L.Path}</td>
				<td class="coltop width10">{PHP.L.Code}</td>
				<td class="coltop width40">{PHP.L.Title}</td>
				<td class="coltop width40">{PHP.L.Description}</td>
				<td class="coltop width10">{PHP.L.Action}</td>
			</tr>	
			<!-- BEGIN: ROWS -->
			<tr>
				<td>{ROW_PATH} </td>
				<td>{ROW_CODE} </td>
				<td>{ROW_TITLE} </td>
				<td>{ROW_DESC} </td>
				<td class="textcenter">
					<a title="{PHP.L.Delete}" href="{ROW_DELETE}" class="btn btn-mini btn-danger" title="{PHP.L.Delete}"><li class="icon-remove icon-white"></li></a>		
				</td>
			</tr>
			<!-- END: ROWS -->
			<!-- BEGIN: NOROWS -->
			<tr>
				<td class="centerall" colspan="4">{PHP.L.None}</td>
			</tr>
			<!-- END: NOROWS -->	
		</table>
		<div class="action_bar valid">
			<p class="paging">{PAGENAV_PAGES} </p>
			<input type="submit" class="btn btn-info" value="{PHP.L.Update}" />
		</div>	
      </div>
    </div>
  </form>
    <div class="widget">
      <div class="widget-header">
        <h3>
          {PHP.L.Add}
        </h3>
      </div>
      <div class="widget-content">
          <form method="post" action="{ADDFORM_ACTION_URL}">
    		<table class="cells">
    			<tr>
    				<td class="width15">{PHP.L.Path}:</td>
    				<td>{ADDFORM_PATH}</td>
    			</tr>
    			<tr>
    				<td>{PHP.L.Code}:</td>
    				<td>{ADDFORM_CODE}</td>
    			</tr>
    			<tr>
    				<td>{PHP.L.Title}:</td>
    				<td>{ADDFORM_TITLE}</td>
    			</tr>
    			<tr>
    				<td>{PHP.L.Description}:</td>
    				<td>{ADDFORM_DESC}</td>
    			</tr>
    		</table>
    		<div class="margintop10 valid">
    			<input type="submit" class="btn btn-info" value="{PHP.L.Add}" />
    		</div>	
    	</form>
      </div>
    </div>
  </div>
</div>
<!-- END: MAIN -->