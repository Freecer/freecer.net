<!-- BEGIN: PRD_ROWS -->
<div class="span2 " >
    <table class="table">
        <tr>
            <td>
                <a href="{PRD_ROW_URL}" style='text-decoration: none;'>
                    <div class="thumbnail" style='white-space: nowrap;text-align: center; padding-right: 8px;  height: 105px;'>
                        <span style='display:inline-block;height: 100%;vertical-align: middle;'></span>
                        <img style='max-height: 100px;vertical-align: middle;display: inline-block;'
                             src="{PRD_ROW_ID|cot_files_get_someone_image('folio', $this, 'logo', 'gallery')}"/>
                    </div>
                </a>
            </td>
        </tr>
        <tr>
            <td><p class="textcenter terw11">{PRD_ROW_CATTITLE}</p></td>
        </tr>
    </table>
</div>
<!-- END: PRD_ROWS -->

<!-- BEGIN: ROW_EMPTY -->
<center><br><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h3 class="width40">{PHP.L.folio_notfound}</h3></center> 
<!-- END: ROW_EMPTY -->