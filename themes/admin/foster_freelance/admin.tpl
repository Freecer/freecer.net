<!-- BEGIN: MAIN -->
  <div id="ajaxBlock">
  <!-- BEGIN: BODY -->
    <div class="belownav">
      <div class="container-fluid">
        <div class="animated fadeInDown pull-left">{ADMIN_TITLE}</div>
        <button type="button" class="btn btn-mini pull-right visible-desktop" data-toggle="button" id="setWidth" title="{PHP.L.ToggleSize}"><i class="icon-resize-full"></i></button>
      </div><!-- /.container-fluid -->
    </div><!-- /.belownav -->
    {ADMIN_MAIN}
    <!-- IF {ADMIN_HELP} -->
    <div class="container-fluid">
      <div class="help">
        <h4>{PHP.L.Help}:</h4>
        <p>{ADMIN_HELP}</p>
      </div><!--/.help -->
    </div>
    <!-- ENDIF -->
  <!-- END: BODY -->
  </div><!-- /#ajaxBlock -->
<!-- END: MAIN -->