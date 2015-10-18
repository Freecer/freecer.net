<!-- BEGIN: MAIN -->

<span id="{UKARMA_SELECTOR}">
	{UKARMA_SIGN} {UKARMA_SCORE_ABS}
	<!-- IF {UKARMA_SCOREENABLED} -->
<a href="index.php?r=ukarma&m=add&userid={UKARMA_USER_ID}&area={UKARMA_AREA}&code={UKARMA_CODE}&score=-1" class="ajax" rel="get-{UKARMA_SELECTOR}"><i class=" red fa fa-minus-square-o"></i></a> 
<a href="index.php?r=ukarma&m=add&userid={UKARMA_USER_ID}&area={UKARMA_AREA}&code={UKARMA_CODE}&score=1" class="ajax" rel="get-{UKARMA_SELECTOR}"><i class="reyl fa fa-plus-square-o"></i></a>
	<!-- ELSE -->
	
	<!-- ENDIF -->
</span>

<!-- END: MAIN -->