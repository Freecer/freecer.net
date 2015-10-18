<!-- BEGIN: MAIN -->
<div class="row">

<ul class="pull-left span3" >		
<li><a href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=market')}">{PHP.L.All}</a></li>
<!-- BEGIN: CAT_ROW -->	
<li class="<!-- IF {PRD_CAT_ROW_SELECT} -->active<!-- ENDIF -->">
<a href="{PRD_CAT_ROW_URL}">{PRD_CAT_ROW_TITLE}<span class="date pull-right">{PRD_CAT_ROW_COUNT_MARKET}</span></a></li>
<!-- END: CAT_ROW -->
<br>
<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {ADDPRD_SHOWBUTTON} -->
<a href="{PRD_ADDPRD_URL}" class="btn btn-success" style="width:88%;" >{PHP.L.market_add_product}</a>
<!-- ENDIF -->
</ul>




<div class="span9 pull-right">
<!-- BEGIN: PRD_ROWS -->
<table class="table">
<tr>
<td class="width10">
    <a href="{PRD_ROW_URL}">
        <div class="thumbnail">
            <img src="{PRD_ROW_ID|cot_files_get_someone_image('shop', $this, 'logo', 'gallery')}"/>
        </div>
    </a>
</td>
<td class="width50"><a href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a></p></td>
<td class="width20"><p> <!-- IF {PRD_ROW_USER_IS_ADMIN} --><span class="pull-right date">{PRD_ROW_LOCALSTATUS}</span><!-- ENDIF --></td>
<td class="width10"><p> Просмотров:<span class="date"></a>{PRD_ROW_COUNT}</p></td>
<td class="width10"><!-- IF {PRD_ROW_COST} > 0 --><span class="date pull-right"><b>{PRD_ROW_COST}</b> {PHP.cfg.payments.valuta}</span><!-- ENDIF --></td>
</tr>
</table>
<!-- END: PRD_ROWS -->



<!-- IF {PAGENAV_COUNT} > 0 -->	
<div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
<!-- ELSE -->
<center><br><img src="themes/{PHP.theme}/img/alert/icon2.png"/><h2 class="width40 seq">{PHP.L.market_empty}</h2></center>
<!-- ENDIF -->
</div>	</div>
<!-- END: MAIN -->