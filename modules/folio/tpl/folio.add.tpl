<!-- BEGIN: MAIN -->
<center>
 <div class="breadcrumb"><h3>{PHP.L.folio_add_work_title}</h3></div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="customform">
	
	<form action="{PRDADD_FORM_SEND}" method="post" name="newwork" enctype="multipart/form-data">
		
    <table  class="centrals">

    <tr><td>{PHP.L.Category}:</td></tr>
    <tr><td>{PHP.c|catselector_selectbox('folio', $this, 'rcat', '', 'W' 0)}</td></tr>

	<tr class="hidden"<!-- IF !{PHP.usr.isadmin} --> class="hidden"<!-- ENDIF -->>
	<td align="right">{PHP.L.Parser}:</td>
	<td>{PRDADD_FORM_PARSER}</td>
	</tr>
   
    <tr><td class="hidden">{PHP.L.Location}</td></tr>
    <tr><td class="hidden">{PRDADD_FORM_LOCATION}</td></tr>
    <tr><td>Краткий заголовок работы и цена в долларах</td></tr>
    <tr><td><div class="input-append">{PRDADD_FORM_TITLE} {PRDADD_FORM_COST}<span class="add-on">{PHP.cfg.payments.valuta}</span></div></td></tr>
  
    <tr><td>Описание работы</td></tr>
    <tr><td>{PRDADD_FORM_TEXT}</td></tr>
    
    <tr><td><p>Превью 200 Х 160 px. (.png, .jpg, jpeg)</p> {PHP|cot_files_filebox('folio', 0, 'logo', 'image', 1)}</td></tr>
  
    <tr><td>Файлы </p>{PHP|cot_files_filebox('folio', 0, 'gallery')}</td></tr>

       
    <tr><td><input type="submit" class="btn btn-success" value="{PHP.L.Submit}" /></td></tr>
    </table>
	
	</form>

</div>
</center>
<!-- END: MAIN -->




