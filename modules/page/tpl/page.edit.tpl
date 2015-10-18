
<!-- BEGIN: MAIN -->
<center>
<div class="breadcrumb"><h3>{PAGEEDIT_PAGETITLE} № {PAGEEDIT_FORM_ID}</h3></div>
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<div class="customform">
<form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
<table  class="centrals">
<tr><td>{PAGEEDIT_FORM_LOCALSTATUS}</td></tr>
<tr><td><p>{PHP.L.Category} и автор</p>{PHP.c|catselector_selectbox('page', $this, 'rpagecat', '', 'W' 0)} {PAGEEDIT_FORM_AUTHOR}</td></tr>

<tr><td><p>{PHP.L.Title}: статьи</p>{PAGEEDIT_FORM_TITLE}</td></tr>
					
<tr><td><p>{PHP.L.Description}: <span class="date">(Краткое описание статьи)</span><p>{PAGEEDIT_FORM_DESC}</td></tr>
					
<tr><td><p>{PHP.L.page_metakeywords}: для поисковиков <span class="date">(через запятую)</span></p>{PAGEEDIT_FORM_KEYWORDS}</td></tr>

<!-- BEGIN: ADMIN -->

<tr><td><p>{PHP.L.Alias}:</p>{PAGEEDIT_FORM_ALIAS}</td></tr>
<tr><td><p>{PHP.L.page_metatitle}:</p>{PAGEEDIT_FORM_METATITLE}</td></tr>
<tr><td><p>{PHP.L.page_metadesc}:</p>{PAGEEDIT_FORM_METADESC}</td></tr>
<tr><td><p>{PHP.L.Begin}:</p>{PAGEEDIT_FORM_BEGIN}</td></tr>
<tr><td><p>{PHP.L.Expire}:</p>{PAGEEDIT_FORM_EXPIRE}</td></tr>
<tr><td><p>{PHP.L.Parser}:</p>{PAGEEDIT_FORM_PARSER}</td></tr>
<tr><td><p>{PHP.L.Owner}:</p>{PAGEEDIT_FORM_OWNERID}</td></tr>
<tr><td><p>{PHP.L.Hits}:</p>{PAGEEDIT_FORM_PAGECOUNT}</td></tr>				
<!-- END: ADMIN -->
<!-- IF {PHP.cot_plugins_active.vkpost} -->
<tr><td><p>Отправить на стену freecer  ВКонтакте</p> {PAGEEDIT_FORM_VKPOST}</td></tr>  
<!-- ENDIF -->
<!-- BEGIN: TAGS -->
<tr><td><p>{PAGEEDIT_TOP_TAGS} для поиска на сайте <span class="date">({PAGEEDIT_TOP_TAGS_HINT})</span></p>{PAGEEDIT_FORM_TAGS} </td></tr>
<!-- END: TAGS -->

<tr><td><p>Текст статьи <span class="date">(разрешается добавлять фото, видео использовать ссылки, применять стили - используя редактор.)</span></p>{PAGEEDIT_FORM_TEXT}</td></tr>
<tr><td><p>{PHP.L.page_deletepage}:</p>{PAGEEDIT_FORM_DELETE}</td></tr>
<tr><td class="valid">
<!-- IF {PHP.usr_can_publish} --><button type="submit" class="btn" name="rpagestate" value="0">{PHP.L.Publish}</button><!-- ENDIF -->
							

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


