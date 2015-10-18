<!-- BEGIN: MAIN -->

<div class="row top1">
<div class="span12 hidden-phone hidden-tablet">
<script type="text/javascript">!function ($) {$(function(){$('#carousel-example-generic').carousel()})}(window.jQuery)</script>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

    <div class="carousel-inner" role="listbox">

    <div class="item active">
    <img src="/themes/bootlance/img/1.jpg" alt="...">
    <div class="carousel-caption">
    <img class="float-fight" src="/themes/bootlance/img/1p.png" alt="...">
    <h1><a href="{PHP|cot_url('projects')}">Найти удалённую работу</a></h1>
    <p><i class="fa fa-check-square-o"></i> Простая регистрация.</p>
    <p><i class="fa fa-check-square-o"></i> Прибыльная работа по вашему профилю.</p>
    <p><i class="fa fa-check-square-o"></i> Минимальная комисия сервиса.</p>
    <p><i class="fa fa-check-square-o"></i> <a href="{PHP|cot_url('verification')}" >Верификация пользователя</a></p>
    </div>
    </div>

    <div class="item">
    <img src="/themes/bootlance/img/1.jpg" alt="...">
    <div class="carousel-caption">
    <img class="flost-fight" src="/themes/bootlance/img/2p.png" alt="...">
    <a href="{PHP|cot_url('users', 'group=freelancer')}"><h1>Найти исполнителя</h1></a>
    <p><i class="fa fa-check-square-o"></i> Бесплатный сервис.</p>
    <p><i class="fa fa-check-square-o"></i> Хорошие специалисты.</p>
    <p><i class="fa fa-check-square-o"></i> Удобный интерфейс.</p>
    </div>
    </div>

    </div>
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <i class="fa fa-chevron-right"></i> </a>
</div>
</div>
</div>

<div class="row">

<div class="span12">
<div class="becgraund">Последние работы исполнителей</div>
<div class="block wellbord2" >{PHP|cot_getfoliolist('index', 12, "p.item_id IN (SELECT file_item FROM files WHERE file_source = 'folio' AND file_field = 'logo')")}</div>
</div>

<div class="span3">
<div class="becgraund">Фильтр категорий</div>
<div class="well well-small">{PROJECTS_SEARCH}</div>
	
<!-- IF {PHP.cot_plugins_active.userpoints} -->
<div class="becgraund">{PHP.L.Top10}</div>
<div class="wellbord">{PHP|cot_get_topusers (4, 10)}</div><br/>

<div class="becgraund">{PHP.L.Top11}</div>
<div class="wellbord"> {PHP|cot_get_topusers (7, 5)}</div><br/>

<!-- ENDIF -->	
<div class="becgraund">События и акции</div>
<div class="wellbord">{INDEX_NEWS}</div><br/>

<div class="becgraund">Блоги пользователей</div>
<div class="wellbord">{RECENT_PAGES}</div><br/>

<div class="becgraund">Обсуждения в форумах</div>
<div class="wellbord">{RECENT_FORUMS}</div>
</div>
 
<div class="span9">

{PROJECTS_PTYPES}

		    <!-- IF {PHP.cot_plugins_active.paypro} -->
			<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.projectslimit} > 0 AND {PHP.cfg.plugin.paypro.projectslimit} <= {PHP.usr.id|cot_getcountprjofuser($this)} -->
			<div class="alert alert-warning">{PHP.L.paypro_warning_projectslimit_empty}</div>
			<!-- ENDIF -->
			<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.offerslimit} > 0 AND {PHP.cfg.plugin.paypro.offerslimit} <= {PHP.usr.id|cot_getcountoffersofuser($this)} -->
			<div class="alert alert-warning">{PHP.L.paypro_warning_offerslimit_empty}</div>
			<!-- ENDIF -->
		    <!-- ENDIF -->
{PROJECTS}
 


 </div>


</div>
            <!-- END: MAIN -->