<!-- BEGIN: MAIN -->
<div class="row-fluid">
  <div class="container-fluid">
    <div class="btn-toolbar pull-left">
    	<a href="{PHP|cot_url('admin', 'm=cwsender&n=lists')}" class="btn btn-small<!-- IF {PHP.n} == 'lists' --> btn-success<!-- ENDIF -->">{PHP.L.cwsender_lists_title}</a>
    	<a href="{PHP|cot_url('admin', 'm=cwsender&n=letters')}" class="btn btn-small<!-- IF {PHP.n} == 'letters' --> btn-success<!-- ENDIF -->">{PHP.L.cwsender_letters_title}</a>
    </div>
    <!-- BEGIN: LISTS -->
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.cwsender_lists_title}</h3>
      </div>
      <div class="widget-content">
        <table class="cells">
        	<!-- BEGIN: LIST_ROW -->
        	<tr>
        		<td class="width5">{LIST_ROW_ID}</td>
        		<td class="width50">{LIST_ROW_TITLE}</td>
        		<td class="width10 textcenter">{LIST_ROW_TYPE}</td>
        		<td class="width30 textcenter">{LIST_ROW_SETTING}</td>
        		<td class="width5 textcenter"><a class="btn btn-mini btn-danger" href="{LIST_ROW_DELETE_URL}" title="{PHP.L.Delete}"><i class="icon-remove" title="{PHP.L.Delete}"></i></a></td>
        	</tr>
        	<!-- END: LIST_ROW -->
        </table>
      </div>
    </div>
    <!-- BEGIN: ADDFORM -->
        <script>
        	
        	$(function () {
        		$('input[type=radio]').hide();
        	});
        
        	function CollapseListType(obj)
        	{
        		$('#listtypes').find('div').hide();
        		$('#listtypes label').removeClass('special');
        		$('#listtypes label').removeClass('active');
        		$('#' + obj).show();
        		$('.' + obj).addClass('special');
        		$('.' + obj).addClass('active');
        	}
        </script>
           {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
        <div class="widget">
          <div class="widget-header">
            <h3>{PHP.L.cwsender_lists_add_title}</h3>
          </div>
          <div class="widget-content">
            <form action="{ADDFORM_ACTION}" method="post" class="customform">
            	<table class="cells">
            		<tr>
            			<td class="width20">{PHP.L.cwsender_lists_form_title}</td>
            			<td class="width100">{ADDFORM_TITLE}</td>
            		</tr>
            		<tr>
            			<td class="width20">{PHP.L.cwsender_lists_form_recipients}</td>
            			<td class="width100">
            				<div id="listtypes">
            					<label class="type1 button btn<!-- IF {PHP.type} == 'text' --> active special<!-- ENDIF -->" onClick="CollapseListType('type1');">
            						<input type="radio" name="rtype" value="text" <!-- IF {PHP.type} == 'text' -->checked<!-- ENDIF -->/> {PHP.L.cwsender_lists_form_type_text_title}
            					</label>
            					<label class="type2 button btn<!-- IF {PHP.type} == 'groups' --> active special<!-- ENDIF -->" onClick="CollapseListType('type2');">
            						<input type="radio" name="rtype" value="groups" <!-- IF {PHP.type} == 'groups' -->checked<!-- ENDIF -->/> {PHP.L.cwsender_lists_form_type_groups_title}
            					</label>
            					<label class="type3 button btn<!-- IF {PHP.type} == 'subs' --> active special<!-- ENDIF -->" onClick="CollapseListType('type3');">
            						<input type="radio" name="rtype" value="subs" <!-- IF {PHP.type} == 'subs' -->checked<!-- ENDIF -->/> {PHP.L.cwsender_lists_form_type_subs_title}
            					</label>
            					<label style="display: none;" class="type4 button btn<!-- IF {PHP.type} == 'mysql' --> active special<!-- ENDIF -->" onClick="CollapseListType('type4');">
            						<input type="radio" name="rtype" value="mysql" <!-- IF {PHP.type} == 'mysql' -->checked<!-- ENDIF -->/> {PHP.L.cwsender_lists_form_type_mysql_title}
            					</label>
            					<p>&nbsp;</p>	
            					<div id="type1"<!-- IF {PHP.type} != 'text' --> style="display:none;"<!-- ENDIF -->>
            						<textarea name="rtext" cols="80" rows="15">{PHP.setting.text}</textarea>
            						<p>{PHP.L.cwsender_lists_form_type_text_desc}</p>
            					</div>
            					<div id="type2"<!-- IF {PHP.type} != 'groups' --> style="display:none;"<!-- ENDIF -->>
            						<script>
            							$(function () {
            								$('#type2 input[type=checkbox]:disabled').parent('li').hide();
            							});
            						</script>
            						{ADDFORM_RECIPIENTS}
            					</div>
            					<div id="type3"<!-- IF {PHP.type} != 'subs' --> style="display:none;"<!-- ENDIF -->>
            						{PHP.L.cwsender_lists_form_type_subs_desc}
            					</div>
            					<div id="type4"<!-- IF {PHP.type} != 'mysql' --> style="display:none;"<!-- ENDIF -->>
            						<textarea name="rquery" cols="80" rows="15">{PHP.setting.mysql}</textarea>
           							<p>{PHP.L.cwsender_lists_form_type_mysql_desc}</p>
            					</div>
            				</div>
            			</td>
            		</tr>
            		<tr>
            			<td class="width20"></td>
            			<td><button type="submit" class="btn btn-success">{PHP.L.cwsender_lists_add_button}</button></td>
            		</tr>
            	</table>
            </form>
          </div>
        </div>
    <!-- END: ADDFORM -->
    <!-- END: LISTS -->
    <!-- BEGIN: LETTERS -->
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.cwsender_letters_title}</h3>
      </div>
      <div class="widget-content">
        <table class="cells">
        	<!-- BEGIN: LETTER_ROW -->
        	<tr>
        		<td class="width15">{LETTER_ROW_DATE|cot_date('d.m.Y H:i', $this)}</td>
        		<td>
       			<h5>{LETTER_ROW_TITLE}</h5>
        			{LETTER_ROW_TEXT}
        		</td>
        		<td>{LETTER_ROW_LIST}</td>
        		<td>
        			<!-- IF {LETTER_ROW_STATUS} == 'new' -->
        			{PHP.L.cwsender_letters_status_ready} <a href="{LETTER_ROW_SEND_URL}" class="btn btn-danger">{PHP.L.Submit}</a>
        			<!-- ENDIF -->
        			<!-- IF {LETTER_ROW_STATUS} == 'process' -->
        			<span class="label label-warning">{PHP.L.cwsender_letters_status_process}</span>
        			<!-- ENDIF -->
        			<!-- IF {LETTER_ROW_STATUS} == 'done' -->
        			<span class="label label-success">{PHP.L.cwsender_letters_status_sent}</span>
        			<!-- ENDIF -->
        		</td>
        		<td class="width5"><a class="btn btn-mini btn-danger" href="{LETTER_ROW_DELETE_URL}" title="{PHP.L.Delete}"><i class="icon-remove" title="{PHP.L.Delete}"></i> </a></td>
        	</tr>
        	<!-- END: LETTER_ROW -->
        </table>
        <!-- BEGIN: ADDFORM -->
        <script>
        	$(function () {
        		$('input[type=radio]').hide();
        		$('input[type=checkbox]:disabled').parent('li').hide();
        	});
        </script>
      </div>
    </div>
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.cwsender_letters_add_title}</h3>
      </div>
        <div class="widget-content">
            <form action="{ADDFORM_ACTION}" method="post" class="customform">
            	<table class="cells">
            		<tr>
            			<td>{PHP.L.cwsender_letters_form_title}</td>
            			<td>{ADDFORM_TITLE|cot_inputbox('text', 'rtitle', $this)}</td>
            		</tr>
            		<tr>
            			<td>{PHP.L.cwsender_letters_form_text}</td>
            			<td>{ADDFORM_TEXT|cot_textarea('rtext', $this, 25, 60, 'id="formtext"', 'input_textarea_editor')}</td>
            		</tr>
            		<tr>
            			<td>{PHP.L.cwsender_letters_form_list}</td>
            			<td>{ADDFORM_RECIPIENTS}</td>
            		</tr>
            		<tr>
            			<td></td>
            			<td><button type="submit" class="btn btn-success textcenter">{PHP.L.cwsender_letters_add_button}</button></td>
            		</tr>
            	</table>
            </form>
        </div>
    </div>
    <!-- END: ADDFORM -->
    <!-- END: LETTERS -->
  </div>
</div>				
<!-- END: MAIN -->