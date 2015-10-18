<!-- BEGIN: MAIN -->
<center>
 <div class="breadcrumb"><h3>{PHP.L.market_edit_product_title}</h3></div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="customform">
	
	<form action="{PRDEDIT_FORM_SEND}" method="post" name="edit" enctype="multipart/form-data">
		
    <table  class="centrals">

    <tr><td>{PHP.L.Category}:</td></tr>
    <tr><td>{PHP.c|catselector_selectbox('market', $this, 'rcat', '', 'W' 0)}</td></tr>

	<tr class="hidden"<!-- IF !{PHP.usr.isadmin} --> class="hidden"<!-- ENDIF -->>
	<td align="right">{PHP.L.Parser}:</td>
	<td>{PRDEDIT_FORM_PARSER}</td>
	</tr>
   
    <tr><td class="hidden">{PHP.L.Location}</td></tr>
    <tr><td class="hidden">{PRDEDIT_FORM_LOCATION}</td></tr>
    <tr><td>Краткий заголовок товара и цена в долларах</td></tr>
    <tr><td><div class="input-append">{PRDEDIT_FORM_TITLE} {PRDEDIT_FORM_COST}<span class="add-on">{PHP.cfg.payments.valuta}</span></div></td></tr>
  
    <tr><td>Описание товара (развёрнуто)</td></tr>
    <tr><td>{PRDEDIT_FORM_TEXT}</td></tr>
    
	<!-- IF {PHP.cot_plugins_active.marketorders} -->
	<tr><td>{PHP.L.marketorders_file}:<p class="spall">Разширения файлов: .RAR .ZIP</p></td></tr>
	<tr><td>{PRDEDIT_FORM_FILE}</td></tr>
	<!-- ENDIF -->

    <tr><td>Лого</td></tr>
    <tr><td>{PRDEDIT_FORM_ID|cot_files_filebox('shop', $this, 'logo', 'image', 1)}</td></tr>
    <tr><td>Файлы</td></tr>
    <tr><td>{PRDEDIT_FORM_ID|cot_files_filebox('shop', $this, 'gallery')}</td></tr>

    <tr><td>{PHP.L.Delete}</td></tr>
	<tr><td>{PRDEDIT_FORM_DELETE}</td></tr>
       
    <tr><td><input type="submit" class="btn btn-success" value="{PHP.L.Submit}" /></td></tr>
    </table>
	
	</form>

</div>
</center>
<!-- END: MAIN -->


