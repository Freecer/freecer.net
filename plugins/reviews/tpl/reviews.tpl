<!-- BEGIN: MAIN -->
<div class="reviews">
	

<!-- BEGIN: REVIEWS_ROWS -->
<table class="table">
<tr>
<td rowspan="3" class="width10" aligh="center">{REVIEW_ROW_AVATAR}</td>
<td class="mboxHrr width40">{REVIEW_ROW_OWNER}</td>
<td class="mboxHrr width20">{REVIEW_ROW_SCORE}</td>
<td class="mboxHrr width10" align="right">{REVIEW_ROW_DATE|date('d.m.Y H:i', $this)}</td>
</tr>
<tr>
<td colspan="3" class="width90"><!-- IF {REVIEW_ROW_AREA} == 'projects' -->
<p class="small">{PHP.L.review_reviewforproject}: <a href="{REVIEW_ROW_PRJ_URL}">{REVIEW_ROW_PRJ_SHORTTITLE}</a></p><!-- ENDIF --></td>
</tr>
<tr>
    <td colspan="3" class="width90">
    <p class="owner small">{REVIEW_ROW_TEXT}</p>
    <span class="pull-right">
        <!-- IF {REVIEW_ROW_DELETE_URL} -->
        <div class="edit"><a href="{REVIEW_ROW_DELETE_URL}">{PHP.L.Delete}</a></div>
        <!-- ENDIF -->
        
        <!-- IF {REVIEW_MAY_EDIT} -->
        <!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} == {REVIEW_ROW_OWNERID} -->
        <div class="edit">
        <a onClick="$('#ReviewEditModal{REVIEW_ROW_ID}').modal(); return false;" href="{REVIEW_ROW_EDIT_URL}">{PHP.L.Edit}</a>
        </div>
        <!-- ENDIF -->
        <!-- ENDIF -->
    </span>
    </td>
</tr>
</table> 

		<!-- BEGIN: EDITFORM -->
		<div id="ReviewEditModal{REVIEW_FORM_ID}" class="modal hide fade">
			<div class="modal-header">
				<h3 id="myModalLabel">{PHP.L.review_edit_review}</h3>
				<div class="modal-body">
					<div class="customform">
						<form action="{REVIEW_FORM_SEND}" method="post" name="newreview" enctype="multipart/form-data">
							<table class="table">
								<tr>
									<td style="width:176px;">{PHP.L.review_text}:</td>
									<td>{REVIEW_FORM_TEXT}</td>
								</tr>
								<tr>
									<td>{PHP.L.review_score}:</td>
									<td>{REVIEW_FORM_SCORE}</td>
								</tr>
								<tr>
									<td></td>
									<td>
										<input type="submit" value="{PHP.L.Edit}" class="btn btn-success" />
										<a href="{REVIEW_FORM_DELETE_URL}" class="btn btn-warning">{PHP.L.Delete}</a>	   
									</td>
								</tr>
							</table>
						</form>
					</div>	
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Закрыть</button>
				</div>
			</div>
		</div>
		<!-- END: EDITFORM -->	
	
		<hr/>
	<!-- END: REVIEWS_ROWS -->


</div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<center>
<!-- BEGIN: FORM -->
	<div class="mboxHD"><!-- IF {REVIEW_FORM_ACTION} == "EDIT" -->{PHP.L.review_edit_review}<!-- ELSE -->{PHP.L.review_add_review}<!-- ENDIF --></div>

		<form action="{REVIEW_FORM_SEND}" method="post" name="newreview" enctype="multipart/form-data">
			<table class="centrals">
				<!-- IF {REVIEW_FORM_PROJECTS} -->
				<tr><td><h4 class="seq">{PHP.L.reviews_projectsonly}</h4></td></tr>
				<tr><td><p>{PHP.L.review_chooseprj}:</p>{REVIEW_FORM_PROJECTS}</td></tr>
				<!-- ENDIF -->
				<tr><td><p>{PHP.L.review_text}:</p>{REVIEW_FORM_TEXT}</td></tr>
				<tr><td>{REVIEW_FORM_SCORE}</td></tr>
				<tr><td>
						<input class="btn" type="submit" value="<!-- IF {REVIEW_FORM_ACTION} == "EDIT" -->{PHP.L.Edit}<!-- ELSE -->{PHP.L.Add}<!-- ENDIF -->" />
						<!-- IF {REVIEW_FORM_ACTION} == "EDIT" --> <a href="{REVIEW_FORM_DELETE_URL}">{PHP.L.Delete}</a><!-- ENDIF -->	   
					</td>
				</tr>
			</table>
		</form>

<!-- END: FORM -->
</center>
<!-- END: MAIN -->