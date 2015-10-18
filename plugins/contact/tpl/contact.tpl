<!-- BEGIN: MAIN -->
<center><div class="breadcrumb">{PHP.L.contact_title}</div></center>

		<div class="row">

        <div class="span3 pull-left">
		<div class="becgraund">Рекламный блок</div>
		<div class="wellbord"><center>{PHP.box1}</center></div><br/>

        <div class="becgraund">ООО "Фрикер"</div>
		<div class="wellbord">
		<!-- IF {PHP.cfg.plugin.contact.about} --><p>{PHP.cfg.plugin.contact.about}</p><!-- ENDIF -->
		<!-- IF {PHP.cfg.plugin.contact.map} --><p>{PHP.cfg.plugin.contact.map}</p><!-- ENDIF -->
		</div>
		</div>

        <div class="span8">
        <div class="becgraund">Техподдержка</div>
		<div class="wellbord">
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}

       <!-- BEGIN: FORM -->
		<form action="{CONTACT_FORM_SEND}" method="post" name="contact_form" enctype="multipart/form-data">
		<table class="flat">
		<tr>
		<td class="width25 small">{PHP.L.Username}:</td>
		<td class="width40" >{CONTACT_FORM_AUTHOR}</td>
		</tr>
		<tr>
		<td class="small">{PHP.L.Email}:</td>
		<td class="width90">{CONTACT_FORM_EMAIL} </td>
		</tr>
		<tr>
		<td class="small">{PHP.L.Subject}:</td>
		<td class="width90">{CONTACT_FORM_SUBJECT}</td>
		</tr>
		<tr>
		<td class="small">{PHP.L.Message}:</td>
		<td class="width90" >{CONTACT_FORM_TEXT}</td>
		</tr>
        <!-- BEGIN: EXTRAFLD -->
		<tr>
		<td>{CONTACT_FORM_EXTRAFLD_TITLE}:</td>
		<td>{CONTACT_FORM_EXTRAFLD}</td>
		</tr>
        <!-- END: EXTRAFLD -->
        <!-- BEGIN: CAPTCHA -->
		<tr>
		<td class="over">{CONTACT_FORM_VERIFY_IMG}</td>
		<td class="width20">{CONTACT_FORM_VERIFY}</td>
		</tr>
        <!-- END: CAPTCHA -->
		<tr>
		<td>&nbsp;</td>
		<td><button type="submit" class="btn btn-success width23">{PHP.L.Submit}</button></td>
		</tr>
		</table>
		</form>
        <!-- END: FORM -->
        </div>
		</div>
		</div>

<!-- END: MAIN -->