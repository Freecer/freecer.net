<!-- BEGIN: MAIN -->
<center><div class="breadcrumb">Форумы</div></center>

<div class="row">

<div class="span3 well">
<ul class="nav fontsise">
<li class="datelites">Общие форумы</li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=communication')}">Общение</a></li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=critikism')}">Критика и обсуждение</a></li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=useful')}">Полезные советы</a></li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=politics')}">Новости и политика</a></li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=events')}">Акции и мероприятия</a></li>
<li class="datelites">Форумы сервиса</li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=discussion-f')}">Обсуждение Freecer.net</a></li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=services-service')}">Услуги сервиса</a></li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=suggestions')}">Предложения и замечания</a></li>
<li class="datelites">Другое</li>
<li><a href="{PHP|cot_url('forums','e=forums&m=topics&s=smoking-oom')}">Курилка</a></li>
</ul>
<ul id="newf"><li><a class="beryy" href="{FORUMS_TOPICS_NEWTOPICURL}" rel="nofollow">Создать новую тему</a></li></ul>	
</div>

<div class="span8 pull-right">
<table class="table">
<tr class="becgraund">
<td class="width50">Тема форума</td>
<td class="width25">Последнее сообщение</td>
<td class="width10">Сообщения</td>
<td class="width10">Просмотры</td>
</tr>
<!-- BEGIN: FORUMS_TOPICS_ROW -->	
<tr >
<td><b><a href="{FORUMS_TOPICS_ROW_URL}" title="{FORUMS_TOPICS_ROW_PREVIEW}">{FORUMS_TOPICS_ROW_TITLE}</a></b></td>
<td class="centerall small">{FORUMS_TOPICS_ROW_LASTPOSTER} {FORUMS_TOPICS_ROW_TIMEAGO}</td>
<td class="centerall" ><center>{FORUMS_TOPICS_ROW_POSTCOUNT}</center></td>
<td class="centerall"><center>{FORUMS_TOPICS_ROW_VIEWCOUNT}</center></td>
</tr>
<tr>
<td colspan="4"><!-- IF {FORUMS_TOPICS_ROW_DESC} --><p class="small">{FORUMS_TOPICS_ROW_DESC}</p><!-- ENDIF --></td>
</tr>	
<!-- END: FORUMS_TOPICS_ROW -->
</table>
</div>


</div>
<!-- END: MAIN -->



