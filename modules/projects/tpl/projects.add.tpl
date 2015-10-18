<!-- BEGIN: MAIN -->

<center>
 <div class="breadcrumb"><h3>{PHP.L.projects_add_project_title}</h3></div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="customform">
	
	<form action="{PRJADD_FORM_SEND}" method="post" name="newadv" enctype="multipart/form-data">
		
    <table  class="centrals">
    <!-- IF {PHP.projects_types} -->
    <tr><td>{PHP.L.categori_tipe_project}</td></tr>
    <tr><td>{PRJADD_FORM_TYPE}<!-- ENDIF -->{PHP.c|catselector_selectbox('projects', $this, 'rcat', '', 'W' 0)}</td></tr>
    
   
    <tr><td class="hidden">{PHP.L.Location}</td></tr>
    <tr><td class="hidden">{PRJADD_FORM_LOCATION}</td></tr>
    <tr><td>{PHP.L.crat_zagol_price_project}</td></tr>
    <tr><td><div class="input-append">{PRJADD_FORM_TITLE} {PRJADD_FORM_COST}<span class="add-on iffer">{PHP.cfg.payments.valuta}</span></div></td></tr>
  
    <tr><td>{PHP.L.opeste_project}</td></tr>
    <tr><td>{PRJADD_FORM_TEXT}</td></tr>
    
    <tr><td><p class="small">Файлы проекта (техническое задание, примеры)</p>{PHP|cot_files_filebox('project', 0)}</td></tr>

    <!-- IF {PHP.cot_plugins_active.paypro} -->
    <tr><td>{PHP.L.projects_platni}</td></tr>
    <tr><td>{PRJADD_FORM_FORPRO}</td></tr>
    <!-- ENDIF -->
       
    <tr><td><input type="submit" class="btn btn-success" value="{PHP.L.publices}" /></td></tr>
    </table>
	
	</form>

</div>
</center>
<!-- END: MAIN -->
