<!-- BEGIN: NEWS -->

<table width="100%">
<!-- BEGIN: PAGE_ROW -->	
<tr><td colspan="2">
<p ><a href="{PAGE_ROW_URL}" title="{PAGE_ROW_SHORTTITLE}">{PAGE_ROW_SHORTTITLE}</a>
</td></tr>
<tr><td colspan="2">
<p class="small_inc"><!-- IF {PAGE_ROW_DESC} -->{PAGE_ROW_DESC}<!-- ENDIF --></p>	
</td></tr>

<tr>
<td><p class="small"><span>Просмотров:&nbsp;<span class="date"> {PAGE_ROW_COUNT}</span></span></p></td>
<td>
</td></tr>
<tr>
<td><p class="small"><span>Коментариев:<span class="date">{PAGE_ROW_COMMENTS}</span></span></p>	</td>
<td><p class="small pull-right"><span class="{PAGE_ROW_ODDEVEN}">{PAGE_ROW_DATE_STAMP|cot_date('j F Y ', $this)}г.</span></p></td>
</tr>
<!-- END: PAGE_ROW -->
<!-- BEGIN: NO_PAGES_FOUND -->
<tr><td class="centerall">{PHP.L.recentitems_nonewpages}</td></tr>
<!-- END: NO_PAGES_FOUND -->
</table>

<!-- END: NEWS -->




