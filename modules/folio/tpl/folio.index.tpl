<!-- BEGIN: FOLIO -->

	
<div id="listfolio" >
</br>
<!-- BEGIN: PRD_ROWS -->
<!-- IF {PRD_ROW_ID|cot_files_count('folio', $this, 'logo')} > 0 -->
<div class="span2 " style='margin: 12px;'>
<table class="table" style='height: 180px;'>
<tr style='height: 140px;'>
<td>
    <a href="{PRD_ROW_URL}">
        <div class="thumbnail" style='width: 150px; height: 118px; overflow: hidden;
         white-space: nowrap;text-align: center;padding-right: 8px;'>
            <span style='display:inline-block;height: 100%;vertical-align: middle;'></span>
            <img style='vertical-align: middle;display: inline-block; max-height: 116px; '
                 src="{PRD_ROW_ID|cot_files_get('folio', $this, 'logo', 'path')}"/>
        </div>
    </a>
</td>
</tr>
<tr>
<td><p class="textcenter terw11">{PRD_ROW_CATTITLE}</p></td>
</tr>
</table>
</div>
<!-- ENDIF -->
<!-- END: PRD_ROWS -->
</div>
<div style="clear:both;"></div>		
<!-- END: FOLIO -->
				
