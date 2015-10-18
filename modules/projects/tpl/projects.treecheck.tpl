<!-- BEGIN: MAIN -->
<div class="mini-menu">
    <ul class="nav nav-list">
        <!-- BEGIN: CATS -->
        <!-- IF {ROW_SUBCAT} -->
        <li class="sub section<!-- IF {ROW_SELECTED} --> active<!-- ENDIF -->">
            <label class="label_check section_label blue" for="{ROW_CAT}"><input class="checkbox" type="checkbox" id="{ROW_CAT}" name="c[]" value="{ROW_CAT}"><i class="fa fa-circle-o"></i></label>
            <a href="#">{ROW_TITLE} <span class="pull-right">{ROW_COUNT}</span></a>
                {ROW_SUBCAT}
        </li>
        <!-- ELSE -->
        <li class="section<!-- IF {ROW_SELECTED} --> active<!-- ENDIF --> nosub">
            <label class="label_check section_label blue" for="{ROW_CAT}"><input class="checkbox-check" type="checkbox" id="{ROW_CAT}" name="c[]" value="{ROW_CAT}"><i class="fa fa-circle-o">{ROW_TITLE}</i><span class="pull-right">{ROW_COUNT}</span></label>

        </li>
        <!-- ENDIF -->
        <!-- END: CATS -->
    </ul>
</div>
<!-- END: MAIN -->