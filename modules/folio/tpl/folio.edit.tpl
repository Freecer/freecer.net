<!-- BEGIN: MAIN -->
<center>
 <div class="breadcrumb"><h3>{PHP.L.folio_edit_work_title}</h3></div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="customform">
	
	<form action="{PRDEDIT_FORM_SEND}" method="post" name="newwork" enctype="multipart/form-data">
		
    <table  class="centrals">

    <tr><td>{PHP.L.Category}:</td></tr>
    <tr><td>{PHP.c|catselector_selectbox('folio', $this, 'rcat', '', 'W' 0)}</td></tr>

	<tr class="hidden"<!-- IF !{PHP.usr.isadmin} --> class="hidden"<!-- ENDIF -->>
	<td align="right">{PHP.L.Parser}:</td>
	<td>{PRDEDIT_FORM_PARSER}</td>
	</tr>
   
    <tr><td class="hidden">{PHP.L.Location}</td></tr>
    <tr><td class="hidden">{PRDEDIT_FORM_LOCATION}</td></tr>
    <tr><td>Краткий заголовок работы и цена в долларах</td></tr>
    <tr><td><div class="input-append">{PRDEDIT_FORM_TITLE} {PRDEDIT_FORM_COST}<span class="add-on">{PHP.cfg.payments.valuta}</span></div></td></tr>
  
    <tr><td>Описание работы</td></tr>
    <tr><td>{PRDEDIT_FORM_TEXT}</td></tr>
    
    <tr><td>Превью 200 Х 160 px. (.png, .jpg, jpeg)</td></tr>
    <tr><td>{PRDEDIT_FORM_ID|cot_files_filebox('folio', $this, 'logo', 'image', 1)}</td></tr>
    <tr><td>Файлы</td></tr>
    <tr><td>{PRDEDIT_FORM_ID|cot_files_filebox('folio', $this, 'gallery')}</td></tr>

	<tr><td>{PHP.L.Delete}</td></tr>
	<tr><td>{PRDEDIT_FORM_DELETE}</td></tr>
       
    <tr><td><input type="submit" class="btn btn-success" value="{PHP.L.Submit}" /></td></tr>
    </table>
	
	</form>

</div>
</center>
<!-- END: MAIN -->

