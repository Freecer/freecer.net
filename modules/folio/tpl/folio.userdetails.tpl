<!-- BEGIN: MAIN -->
<div class="row">

	<ul class="pull-left span3" >		
	<li><a href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=portfolio')}">{PHP.L.All}</a></li>

	<!-- BEGIN: CAT_ROW -->	
	<li class="<!-- IF {PRD_CAT_ROW_SELECT} -->active<!-- ENDIF --> textbox2">
	<a href="{PRD_CAT_ROW_URL}">{PRD_CAT_ROW_TITLE} <span class="date pull-right">{PRD_CAT_ROW_COUNT_FOLIO}</span></a></li>
	<!-- END: CAT_ROW -->
	<br>
	 <!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {RPD_ADDPRD_SHOWBUTTON} --><li>
	<a href="{PRD_ADDPRD_URL}" class="btn btn-success" style="width:88%;" >{PHP.L.folio_add_work}</a></li><!-- ENDIF -->
	</ul>


<div class="span9 pull-right">
	<div class="row">
<!-- BEGIN: PRD_ROWS -->
<div class="span3 pull-left maxi" >
   <table width="100%" class="pull-left">
    <tr>
    <td>
        <a href="{PRD_ROW_URL}" style='text-decoration: none;'>
            <div class="thumbnail" style='width:250px;height: 200px;white-space: nowrap;text-align: center;
                 padding-right: 8px;'>
                <span style='display:inline-block;height: 100%;vertical-align: middle;'></span>
                <img style='vertical-align: middle;max-height: 200px;max-width: 240px;display: inline-block;'
                 src="{PRD_ROW_ID|cot_files_get_someone_image('folio', $this, 'logo', 'gallery')}"/>
            </div>
        </a>
    </td>
    </tr>
    <tr>
    <td style='height: 35px;'/><p><a class="terwtabl2" href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a>
    <!-- IF {PRD_ROW_USER_IS_ADMIN} --><span class="pull-right date">{PRD_ROW_LOCALSTATUS}</span><!-- ENDIF --></p></td>
    </tr>
    <tr>
    <td ><p>Просмотров:<span class="date"></a>{PRD_ROW_COUNT} <!-- IF {PRD_ROW_COST} > 0 -->
    <span class="date pull-right">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span><!-- ENDIF --></p></td>
    </tr>
</table>
</div>   
	<!-- END: PRD_ROWS -->
</div>
<!-- IF {PAGENAV_COUNT} > 0 -->	
	<div class="pagination "><ul>{PAGENAV_PAGES}</ul></div>
	<!-- ELSE -->
	<center><br><img src="themes/{PHP.theme}/img/alert/icon2.png"/><h2 class="width40 seq">{PHP.L.folio_empty}</h2></center>
	<!-- ENDIF -->
	</div> </div>   




<!-- END: MAIN -->