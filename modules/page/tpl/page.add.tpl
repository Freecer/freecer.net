<!-- BEGIN: MAIN -->
<center>
<div class="breadcrumb"><h3>{PAGEADD_PAGETITLE}</h3></div>
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<div class="customform">
<form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
<table  class="centrals">

<tr><td><p>{PHP.L.Category} и автор</p>{PHP.c|catselector_selectbox('page', $this, 'rpagecat', '', 'W' 0)} {PAGEADD_FORM_AUTHOR}</td></tr>

<tr><td><p>{PHP.L.Title}: статьи</p>{PAGEADD_FORM_TITLE}</td></tr>
					
<tr><td><p>{PHP.L.Description}: <span class="date">(Краткое описание статьи)</span><p>{PAGEADD_FORM_DESC}</td></tr>
					
<tr><td><p>{PHP.L.page_metakeywords}: для поисковиков <span class="date">(через запятую)</span></p>{PAGEADD_FORM_KEYWORDS}</td></tr>

 <!-- IF {PHP.usr.isadmin} -->
<tr><td><p>{PHP.L.Owner}:</p>{PAGEADD_FORM_OWNER}</td></tr>
<tr><td><p>{PHP.L.Alias}:</p>{PAGEADD_FORM_ALIAS}</td></tr>
<tr><td><p>{PHP.L.page_metatitle}:</p>{PAGEADD_FORM_METATITLE}</td></tr>
<tr><td><p>{PHP.L.page_metadesc}:</p>{PAGEADD_FORM_METADESC}</td></tr>
<tr><td><p>{PHP.L.Begin}:</p>{PAGEADD_FORM_BEGIN}</td></tr>
<tr><td><p>{PHP.L.Expire}:</p>{PAGEADD_FORM_EXPIRE}</td></tr>
<tr><td><p>{PHP.L.Parser}:</p>{PAGEADD_FORM_PARSER}</td></tr>
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.vkpost} -->
<tr><td><p>Отправить на стену freecer  ВКонтакте</p> {PAGEADD_FORM_VKPOST}</td></tr>  
<!-- ENDIF -->
<!-- BEGIN: TAGS -->
<tr><td><p>{PAGEADD_TOP_TAGS} для поиска на сайте <span class="date">({PAGEADD_TOP_TAGS_HINT})</span></p>{PAGEADD_FORM_TAGS} </td></tr>
<!-- END: TAGS -->

<tr><td><p>Текст статьи <span class="date">(разрешается добавлять фото, видео использовать ссылки, применять стили - используя редактор.)</span></p>{PAGEADD_FORM_TEXT}</td></tr>

<tr><td class="valid">
<button type="submit" class="btn" name="rpagestate" value="0">{PHP.L.Publish}</button>
							

<!-- IF {PHP.usr.isadmin} -->
<button type="submit" class="btn"  name="rpagestate" value="2" class="submit">{PHP.L.Saveasdraft}</button>
<button type="submit" class="btn"  name="rpagestate" value="1">{PHP.L.Submitforapproval}</button>
<!-- ENDIF -->
</td>
</tr>
</table>
</form>
</div>
<p class="date">{PHP.L.page_formhint}</p>
</center>
<!-- END: MAIN -->


