<!-- BEGIN: MAIN -->
<ul<!-- IF {CAT_LEVEL} == 1 --> id="ucats_tree" class="nav nav-list freelancer"<!-- ENDIF -->>
	<!-- IF {CAT_LEVEL} == 1 -->
			
	<!-- ENDIF -->
	<!-- BEGIN: CAT_ROW -->
	<li <!-- IF {CAT_ROW_SUBCAT} -->class="sub section"<!-- ELSE -->class="subsection"<!-- ENDIF -->>
	<a><label style="display:inline-block;" class="getChet_{CAT_ROW_ID}" id="getChack" <!-- IF {CAT_ROW_SUBCAT} -->onClick="clickLabel('div_checkbox_{CAT_ROW_ID}','checkbox-{CAT_ROW_ID}','getChet_{CAT_ROW_ID}');"<!-- ELSE -->onClick="clikLab('checkbox-{CAT_ROW_ID}','getChet_{CAT_ROW_ID}');"<!-- ENDIF --> for="checkbox-{CAT_ROW_ID}"><!-- IF {CAT_ROW_SUBCAT} --><i class="fa fa-circle-o"></i><!-- ELSE --><i class="fa fa-square-o"></i><!-- ENDIF --></label><input class="checkbox" id="checkbox-{CAT_ROW_ID}" style="margin:0px;" <!-- IF {CAT_ROW_SUBCAT} -->onClick="cheackBox('div_checkbox_{CAT_ROW_ID}','checkbox-{CAT_ROW_ID}');"<!-- ELSE -->onClick="checkCat();"<!-- ENDIF --> value="{CAT_ROW_ID}" type="checkbox"/> <label style="display:inline-block; font-size: 14px;  white-space: pre-wrap; width: 85%;" class="label_check section_label blue" <!-- IF !{CAT_ROW_SUBCAT} -->for="checkbox-{CAT_ROW_ID}" onClick="clikLab('checkbox-{CAT_ROW_ID}','getChet_{CAT_ROW_ID}');"<!-- ENDIF --> onClick="showCat('div_checkbox_{CAT_ROW_ID}','checkbox-{CAT_ROW_ID}');">{CAT_ROW_TITLE} </label> <span class="pull-right" onClick="showCat('div_checkbox_{CAT_ROW_ID}','checkbox-{CAT_ROW_ID}');">{CAT_ROW_COUNT}</span></a>
		<!-- IF {CAT_ROW_SUBCAT} -->
		<div id="div_checkbox_{CAT_ROW_ID}" style="display:none;" class="chetbox_ul">
		{CAT_ROW_SUBCAT}
		</div>
		<!-- ENDIF -->
	</li>
	<!-- END: CAT_ROW -->
</ul>
<!-- END: MAIN -->