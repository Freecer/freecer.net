<!-- BEGIN: MAIN -->
<div class="row top1">
<div class="span12 hidden-phone hidden-tablet">

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


<table class="span12">
<td class="width60"><!-- IF {PHP.c} -->{CATTITLE}<!-- ELSE --><p class="small">{PHP.L.market}</p><!-- ENDIF --></td>
</td>
<td class="floatright"><!-- IF {PHP.usr.auth_write} --><a class="btn btn-success " href="{PHP|cot_url('market', 'm=add')}">{PHP.L.market_add_product}</a><!-- ENDIF --> </td>

<td class="floatright">
<form action="{SEARCH_ACTION_URL}" method="get">
<input type="hidden" name="e" value="market" />
<input type="hidden" name="l" value="{PHP.lang}" />
<div class="span2">{SEARCH_SQ} </div> <button type="submit" name="search" class="btn " value="{PHP.L.Search}" />{PHP.L.Search}</buttom></a>	
</form>
</td>
</tr>	

</table>



<!-- IF {CATDESC} -->
<div class="wellbord">{CATDESC}</div>
<!-- ENDIF -->
<div class="span3">
<div class="becgraund">Категории товара</div>
<div class="wellbord">
</br>
<!-- IF {CATALOG} -->{CATALOG}<!-- ENDIF -->
</div></div>



<div class="span9 pull-right">
<div id="ajaxBlock">
<!-- BEGIN: PRD_ROWS -->
<table class="table">
<tr>
<td rowspan="3" class="width20">
    <a href="{PRD_ROW_URL}">
        <div class="thumbnail">
            <img src="{PRD_ROW_ID|cot_files_get_someone_image('shop', $this, 'logo', 'gallery')}"/>
        </div>
    </a>
</td>
<td colspan="2" class="mboxHrr width85"><b>
<!-- IF {PRD_ROW_COST} > 0 -->
<div class="cost reyl pull-right">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --><a href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a></b>
</td>
</tr>
<tr>
<td class="width60"><p class="owner">{PRD_ROW_OWNER_NAME}</p></td>
<td><span class="owner small pull-right">{PRD_ROW_DATE} {PRD_ROW_EDIT_URL}</span></td>
</tr>
<tr>
<td  colspan="2" class="width10"><p class="type"><a href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a>
<span class="pull-right">
<!-- IF {PRD_ROW_COST} > 0 AND {PRD_ROW_STATE} == 0 --> 
<!-- IF {PHP.cot_plugins_active.marketorders} AND {PHP|cot_auth('plug', 'marketorders', 'R')} -->
<!-- IF {PRD_ROW_ORDER_ID} -->
<a class="btn btn-small" href="{PRD_ROW_ORDER_URL}">{PHP.L.marketorders_title}</a>
<!-- IF {PRD_ROW_ORDER_DOWNLOAD} -->
<a class="btn btn-small" href="{PRD_ROW_ORDER_DOWNLOAD}">{PHP.L.marketorders_file_download}</a>
<!-- ELSE -->
{PRD_ROW_ORDER_LOCALSTATUS}
<!-- ENDIF -->  
<!-- ELSE -->
<a class="btn btn-success btn-small" href="{PRD_ROW_ID|cot_url('marketorders', 'm=neworder&pid='$this)}">{PHP.L.pocupca}</a>
<!-- ENDIF -->
<!-- ENDIF -->
<!-- ENDIF -->
</span></p>
</td>
</tr>

</table>
<!-- END: PRD_ROWS -->
</div>	
			
<!-- IF {PAGENAV_COUNT} > 0 -->	
<div class="pagination"><ul>{PAGENAV_PAGES}</ul></div>
<!-- ELSE -->
<center><br><img src="themes/{PHP.theme}/img/alert/icon1.png"/><h3 class="width40">{PHP.L.market_notfound}</h3></center>
<!-- ENDIF -->
</div>

</div>
<!-- END: MAIN -->