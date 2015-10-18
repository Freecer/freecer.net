<!-- BEGIN: LIST -->
<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">
    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Structure}</h3>
      </div><!-- /widget-header -->
      <div class="widget-content">
        <ul id="main-nav" class="nav nav-tabs nav-stacked">
          <!-- BEGIN: ADMIN_STRUCTURE_EXT -->
          <li>
            <a href="{ADMIN_STRUCTURE_EXT_URL}">
              <!-- IF {ADMIN_STRUCTURE_EXT_ICO} -->
              <img src="{ADMIN_STRUCTURE_EXT_ICO}" />
              <!-- ELSE -->
              <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
              <!-- ENDIF -->
              {ADMIN_STRUCTURE_EXT_NAME}
            </a>
          </li>
          <!-- END: ADMIN_STRUCTURE_EXT -->
          <!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
          <li>
            {PHP.L.adm_listisempty}
          </li>
          <!-- END: ADMIN_STRUCTURE_EMPTY -->
        </ul>
        <!-- END: LIST -->
      </div><!-- /widget-content -->
    </div><!-- /widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- BEGIN: MAIN -->

<div class="container-fluid">
  {FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}
</div>
<div class="row-fluid">
  <div class="container-fluid">

    <div class="widget">
      <div class="widget-header">
        <h3>{PHP.L.Structure}</h3>
      </div><!-- /widget-header -->
      <div class="widget-content">

        <!-- BEGIN: DEFAULT -->
        <h3 class="topheading">{PHP.L.editdeleteentries}
        <div class="pull-right">
          <a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="btn btn-small"><i class="icon-list-alt"></i> <span class="hidden-phone">{PHP.L.ExtraFields}</span></a>
          <a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="btn btn-small" title="{PHP.L.adm_tpl_resyncalltitle}"><i class="icon-refresh"></i> <span class="hidden-phone">{PHP.L.Resync}</span></a>
        </div>
        </h3>

        <form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" class="ajax" enctype="multipart/form-data" >
          <table class="table table-striped table-condensed footable">
            <thead>
              <tr>
                <th data-hide="phone">{PHP.L.Path}</th>
                <th data-hide="phone">{PHP.L.Code}</th>
                <th data-class="expand">{PHP.L.Title}</th>
                <th data-hide="phone">{PHP.L.TPL}</th>
                <th data-hide="phone">{PHP.L.Pages}</th>
                <th data-hide="phone" class="alignright">{PHP.L.Action}</th>
              </tr>
            </thead>
            <tbody>
              <!-- BEGIN: ROW -->
              <tr>
                <td>

                  {ADMIN_STRUCTURE_PATH}
                </td>
                <td>{ADMIN_STRUCTURE_CODE}</td>
                <td>{ADMIN_STRUCTURE_TITLE}</td>
                <td>{ADMIN_STRUCTURE_TPLQUICK}</td>
                <td>{ADMIN_STRUCTURE_COUNT}</td>
                <td class="alignright">
                  <br class="visible-phone" />
                  <div class="btn-group">
                    <a class="btn btn-mini" title="{PHP.L.Options}" href="{ADMIN_STRUCTURE_OPTIONS_URL}"><i class="icon-cog"></i></a>
                    <!-- IF {ADMIN_STRUCTURE_RIGHTS_URL} -->
                    <a class="btn btn-mini" title="{PHP.L.Rights}" href="{ADMIN_STRUCTURE_RIGHTS_URL}"><i class="icon-eye-open"></i></a>
                    <!-- ENDIF -->
                    <!-- IF {PHP.dozvil} -->
                    <a class="btn btn-mini btn-danger" title="{PHP.L.Delete}" href="{ADMIN_STRUCTURE_UPDATE_DEL_URL}"><i class="icon-remove icon-white"></i></a>
                    <!-- ELSE -->
                    <a class="btn btn-mini btn-danger disabled"><i class="icon-remove icon-white"></i></a>
                    <!-- ENDIF -->
                    <a class="btn btn-mini" href="{ADMIN_STRUCTURE_JUMPTO_URL}" title="{PHP.L.Open}"><i class="icon-share-alt"></i></a>
                    <!--<a class="btn btn-mini" href="{ADMIN_STRUCTURE_CONFIG_URL}" title="{PHP.L.Configuration}"><i class="icon-wrench"></i></a>-->
                    
                  </div>
                </td>
              </tr>
              <!-- END: ROW -->
            </tbody>
            <tfoot>
              <tr>
                <td colspan="6">
                  <button type="submit" class="btn btn-primary">{PHP.L.UpdateEntries}</button>
                  <button type="reset" class="btn">{PHP.L.Cancel}</button>
                </td>
              </tr>
            </tfoot>
          </table>
        </form>
        <!-- IF {PHP.pagenav.total} > 1 -->
        <div class="pagination">
          <ul>
          {ADMIN_STRUCTURE_PAGNAV}
          </ul>
        </div>
        <!-- ENDIF -->
        <!-- END: DEFAULT -->

        <!-- BEGIN: OPTIONS -->
        <!--<a href="{ADMIN_STRUCTURE_CONFIG_URL}" class="btn btn-small pull-right"><i class="icon-wrench iconspaced"></i> <span class="hidden-phone">{PHP.L.Configuration}</span></a>-->
        <a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}" class="btn btn-small pull-right"><i class="icon-list-alt"></i> <span class="hidden-phone">{PHP.L.ExtraFields}</span></a>
        <a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="btn btn-small pull-right" title="{PHP.L.adm_tpl_resyncalltitle}"><i class="icon-refresh"></i> <span class="hidden-phone">{PHP.L.Resync}</span></a>
        <h3 class="topheading">Update category &quot;{PHP.row.structure_title}&quot;</h3>
        <form action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post" enctype="multipart/form-data">

          <label class="control-label">{PHP.L.Path}:</label>
          <div class="controls"><input type="text" name="rstructurepath[{PHP.id}]" value="{PHP.row.structure_path}" maxlength="255" class="span2" /></div>
          <label class="control-label">{PHP.L.Code}:</label>
          <div class="controls"><input type="text" name="rstructurecode[{PHP.id}]" value="{PHP.row.structure_code}" maxlength="255" class="span2" /></div>

          <label class="control-label">{PHP.L.Title}:</label>
          <div class="controls"><input type="text" name="rstructuretitle[{PHP.id}]" value="{PHP.row.structure_title}" maxlength="255" class="span4" /></div>

          <label class="control-label">{PHP.L.Description}:</label>
          <div class="controls"><input type="text" name="rstructuredesc[{PHP.id}]" value="{PHP.row.structure_code}" maxlength="255" class="span4" /></div>

          <label class="control-label">{PHP.L.Icon}:</label>
          <input type="text" name="rstructureicon[{PHP.id}]" value="{PHP.row.structure_icon}" maxlength="255" class="span4" />

          <label class="checkbox"><input type="checkbox" name="rstructurelocked[{PHP.id}]" value="{PHP.row.structure_locked}" /> {PHP.L.Locked}</label>

          <div class="control-group form-horizontal">
            <label class="control-label">{PHP.L.adm_tpl_mode}:</label>
            <div class="controls">{ADMIN_STRUCTURE_TPLMODE} {ADMIN_STRUCTURE_SELECT}</div>
          </div>
          <!-- BEGIN: EXTRAFLD -->
          <div class="control-group">
            <label class="control-label">{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</label>
            <div class="controls">{ADMIN_STRUCTURE_EXTRAFLD}</div>
          </div>
          <!-- END: EXTRAFLD -->

          <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
          <button type="reset" class="btn">{PHP.L.Cancel}</button>
          <!-- BEGIN: CONFIG -->
            <div style="margin-top: 30px;">
                <div class="widget-header">
                    <h3>{PHP.L.Configuration} {CONFIG_HIDDEN}</h3>
                </div><!-- /widget-header -->
                    {ADMIN_CONFIG_EDIT_CUSTOM}
                    <table class="cells table">
                        <tr>
                            <td class="coltop width35">{PHP.L.Parameter}</td>
                            <td class="coltop width60">{PHP.L.Value}</td>
                            <td class="coltop width5">{PHP.L.Reset}</td>
                        </tr>
                        <!-- BEGIN: ADMIN_CONFIG_ROW -->
                        <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
                        <tr>
                            <td class="group_begin" colspan="3">
                            <h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
                            </td>
                        </tr>
                        <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
                        <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
                        <tr>
                            <td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
                            <td>
                            {ADMIN_CONFIG_ROW_CONFIG}
                            <div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                            </td>
                            <td class="centerall">
                            <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn">
                            	{PHP.L.Reset}
                            </a>
                            </td>
                        </tr>
                        <!-- END: ADMIN_CONFIG_ROW_OPTION -->
                        <!-- END: ADMIN_CONFIG_ROW -->
                    </table>
            <!-- END: CONFIG -->
			<table class="cells table">
				<tr>
					<td class="valid" colspan="2"><input type="submit" class="submit btn btn-success" value="{PHP.L.Update}" /></td>
				</tr>
			</table>
        </form>
        <!-- END: OPTIONS -->

        <!-- BEGIN: NEWCAT -->
        <h3>{PHP.L.AddEntry}</h3>
        <form action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post" enctype="multipart/form-data">

          <label class="control-label">{PHP.L.Path}:</label>
          <input type="text" name="rstructurepath" value="{PHP.rstructure.structure_path}" maxlength="16" class="span2" />
          <label class="control-label">{PHP.L.Code}:</label>
          <input type="text" name="rstructurecode" value="{PHP.rstructure.structure_code}" class="span2" />

          <label class="control-label">{PHP.L.Title}:</label>
          <input type="text" name="rstructuretitle" value="{PHP.rstructure.structure_title}" maxlength="100" class="span4" />

          <label class="control-label">{PHP.L.Description}:</label>
          <input type="text" name="rstructuredesc" value="{PHP.rstructure.structure_desc}" maxlength="255" class="span4" />

          <label class="control-label">{PHP.L.Icon}:</label>
          <input type="text" name="rstructureicon" value="{PHP.rstructure.structure_icon}" maxlength="128" class="span4" />

          <label class="checkbox"><input type="checkbox" name="rstructurelocked"> {PHP.L.Locked}</label>

          <!-- BEGIN: EXTRAFLD -->
          <label>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</label>
          {ADMIN_STRUCTURE_EXTRAFLD}
          <!-- END: EXTRAFLD -->

          <button type="submit" class="btn btn-primary">{PHP.L.AddEntry}</button>
          <button type="reset" class="btn">{PHP.L.Cancel}</button>
        </form>
        <!-- END: NEWCAT -->

      </div><!-- end: widget-content -->
    </div><!-- end: widget -->
  </div><!-- /.container-fluid -->
</div><!-- /.row-fluid -->
<!-- END: MAIN -->