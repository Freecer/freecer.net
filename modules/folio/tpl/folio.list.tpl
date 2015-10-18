<!-- BEGIN: MAIN -->
<center><div class="breadcrumb"><b>{BREADCRUMBS}</b>
        <!-- IF {PHP.usr.auth_write} -->
        <!-- IF  {PHP.usr.id} == {USERS_DETAILS_ID} OR {PHP.usr.maingrp} == '4' OR {PHP.usr.maingrp} == '5' -->
        <div class="pull-right"><a class="btn btn-small btn-success" href="{PHP|cot_url('folio', 'm=add')}">{PHP.L.folio_add_work}</a></div>
        <!-- ENDIF -->
        <!-- ENDIF -->
    </div></center>


<!-- IF {CATDESC} -->
<div class="well">{CATDESC}</div>
<!-- ENDIF -->
<div class="row">
    <div class="span3">
        <!-- IF {CATALOG} -->
        <div class="becgraund">Фильтр разделов</div>
        <div class="wellbord">{CATALOG}</div><br>
        <!-- ENDIF -->	
<!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.folio} -->
        <div class="mboxHD">{PHP.L.Tags}</div>
        {PRD_TAG_CLOUD}
        <!-- ENDIF -->
    </div>

    <div class="span9">

        <div id="ajaxBlock" >

            <!-- BEGIN: PRD_ROWS -->
            <div class="span2 " >
                <table class="table">
                    <tr>
                        <td>
                            <a href="{PRD_ROW_URL}" style='text-decoration: none;'>
                                <div class="thumbnail" style='white-space: nowrap;text-align: center; padding-right: 8px; height: 105px;'>
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
        </div>
        <div style="clear:both;"></div>	
                        <!-- IF {PAGENAV_COUNT} > 0 -->	
        <div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
        <!-- ELSE -->
        <center><br><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h3 class="width40">{PHP.L.folio_notfound}</h3></center>	
        <!-- ENDIF -->

    </div>
</div>

<!-- END: MAIN -->