<!-- BEGIN: PRD_ROWS -->
<table class="table">
    <tr>
        <td rowspan="3" class="width20">
            <a href="{PRD_ROW_URL}">
                <div class="thumbnail">
                    <img src="{PRD_ROW_ID|cot_files_get_someone_image('shop', $this, 'logo', 'gallery')}"/>
                </div>
            </a>
        </td>
        <td colspan="2" class="mboxHrr width85"><b>
        <!-- IF {PRD_ROW_COST} > 0 -->
                <div class="cost reyl pull-right">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --><a href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a></b>
        </td>
    </tr>
    <tr>
        <td class="width60"><p class="owner">{PRD_ROW_OWNER_NAME}</p></td>
        <td><span class="owner small pull-right">{PRD_ROW_DATE} {PRD_ROW_EDIT_URL}</span></td>
    </tr>
    <tr>
        <td  colspan="2" class="width10"><p class="type"><a href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a>
                <span class="pull-right">
                <!-- IF {PRD_ROW_COST} > 0 AND {PRD_ROW_STATE} == 0 --> 
                <!-- IF {PHP.cot_plugins_active.marketorders} AND {PHP|cot_auth('plug', 'marketorders', 'R')} -->
                    <!-- IF {PRD_ROW_ORDER_ID} -->
                    <a class="btn btn-small" href="{PRD_ROW_ORDER_URL}">{PHP.L.marketorders_title}</a>
                    <!-- IF {PRD_ROW_ORDER_DOWNLOAD} -->
                    <a class="btn btn-small" href="{PRD_ROW_ORDER_DOWNLOAD}">{PHP.L.marketorders_file_download}</a>
                    <!-- ELSE -->
                    {PRD_ROW_ORDER_LOCALSTATUS}
                    <!-- ENDIF -->  
                    <!-- ELSE -->
                    <a class="btn btn-success btn-small" href="{PRD_ROW_ID|cot_url('marketorders', 'm=neworder&pid='$this)}">{PHP.L.pocupca}</a>
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                </span></p>
        </td>
    </tr>

</table>
<!-- END: PRD_ROWS -->

<!-- BEGIN: ROW_EMPTY -->
<center><br><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h3 class="width40">{PHP.L.market_notfound}</h3></center>
<!-- END: ROW_EMPTY -->