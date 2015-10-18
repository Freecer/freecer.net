<!-- BEGIN: MAIN -->


<center>
 <div class="breadcrumb"><h3>{PHP.L.projects_edit_project_title}</h3></div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="customform">
	
	<form action="{PRJEDIT_FORM_SEND}" method="post" name="edit" enctype="multipart/form-data">
		
    <table  class="centrals">
    <!-- IF {PHP.projects_types} -->
    <tr><td>{PHP.L.categori_tipe_project}</td></tr>
    <tr><td>{PRJEDIT_FORM_TYPE}<!-- ENDIF -->{PHP.c|catselector_selectbox('projects', $this, 'rcat', '', 'W' 0)}</td></tr>
    
   
    <tr><td class="hidden">{PHP.L.Location}</td></tr>
    <tr><td class="hidden">{PRJEDIT_FORM_LOCATION}</td></tr>
    <tr><td>{PHP.L.crat_zagol_price_project}</td></tr>
    <tr><td><div class="input-append">{PRJEDIT_FORM_TITLE} {PRJEDIT_FORM_COST}<span class="add-on">{PHP.cfg.payments.valuta}</span></div></td></tr>
  
    <tr><td>{PHP.L.opeste_project}</td></tr>
    <tr><td>{PRJEDIT_FORM_TEXT}</td></tr>
    
    <tr><td>{PRJEDIT_FORM_ID|cot_files_filebox('project', $this)}</td></tr>

    <!-- IF {PHP.cot_plugins_active.paypro} -->
    <tr><td>{PHP.L.projects_platni}</td></tr>
    <tr><td>{PRJEDIT_FORM_FORPRO}</td></tr>
    <!-- ENDIF -->

	<tr><td>{PHP.L.Delete}</td></tr>
	<tr><td>{PRJEDIT_FORM_DELETE}</td></tr>

    <tr><td><input type="submit" class="btn btn-success" value="{PHP.L.publices}" /></td></tr>
    </table>
	
	</form>

</div>
</center>
<!-- END: MAIN -->

	