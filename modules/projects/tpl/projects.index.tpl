<!-- BEGIN: PTYPES -->

	<ul class="nav nav-tabs">
		<li class="active"><a href="{PTYPE_ALL_URL}">{PHP.L.All}</a></li>
		<!-- BEGIN: PTYPES_ROWS -->
		<li<!-- IF {PTYPE_ROW_ACT} --> class="active"<!-- ENDIF -->><a href="{PTYPE_ROW_URL}">{PTYPE_ROW_TITLE}</a></li>
		<!-- END: PTYPES_ROWS -->
		<!-- IF {PHP.cot_plugins_active.paypro} -->
		<li><a href="{FORPRO_URL}"><span class="label label-important">{PHP.L.paypro_forpro}</span></a></li>
		<!-- ENDIF -->
		<!-- IF {PHP.usr.auth_write} --><!-- IF  {PHP.usr.id} == {USERS_DETAILS_ID} OR {PHP.usr.maingrp} == '7' OR {PHP.usr.maingrp} == '5' -->
		<li class="pull-right"><noindex><a rel="nofollow" class="btn btn-success" href="{PHP|cot_url('projects', 'm=add')}" title="{PHP.L.projects_add_to_catalog}"><i class="fa fa-plus"></i> {PHP.L.projects_add_to_catalog}</a></noindex></li>
		<!-- ENDIF --><!-- ENDIF -->
	</ul>	
	<!-- END: PTYPES -->
<!-- BEGIN: SEARCH -->
<script>
jQuery(document).ready(function($) {
    var $all = $('#selectAllButton input[type="radio"]').change(function () {
        $sectionchecks.prop('checked', true).trigger('change');
        $none.closest('label').removeClass('c_on');
    });
    var $none = $('#selectNoneButton input[type="radio"]').change(function () {
        $sectionchecks.prop('checked', false).trigger('change');
        $all.closest('label').removeClass('c_on');
    });

    $('.section .section_label input').click(function () {
        $(this).closest('.section').find('.subsection input[type="checkbox"]').prop('checked', this.checked).trigger('change')
		$(this).closest('form').submit();
    });

    $('.section .subsection input').change(function () {
        var $section = $(this).closest('.section');
        var $childs = $section.find('.subsection input[type="checkbox"]');
        $section.find('.section_label input[type="checkbox"]').prop('checked', $childs.not(':checked').length == 0).trigger('change')
    });
	$('.section .subsection input').click(function () {
	    $(this).closest('form').submit();
	});

    var $sectionchecks = $('.section').find('input[type="checkbox"]');
    $sectionchecks.add($none).add($all).change(function(){
        $(this).closest('label').toggleClass('c_on', this.checked);
    })
	$('.ajonsubmit').change(function() {   
   $(this).closest('form').submit();
});
$('#filterRegion #locselectcountry').change(function() {   
   $(this).closest('form').submit();
});
});
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $(".sub > a").click(function() {
            var ul = $(this).next(),
                    clone = ul.clone().css({"height":"auto"}).appendTo(".mini-menu"),
                    height = ul.css("height") === "0px" ? ul[0].scrollHeight + "px" : "0px";
            clone.remove();
            ul.animate({"height":height});
            return false;
        });
           $('.mini-menu > ul > li > a').click(function(){
			   if ( jQuery(this).parent('li').hasClass("opened") ) {
           jQuery(this).parent('li').removeClass('opened');
			   } else {
           jQuery(this).parent('li').addClass('opened');
			   }
        }),
           $('.sub ul li a').click(function(){
           jQuery(this).parent('li').removeClass('active');
           jQuery(this).parent('li').addClass('active');
        });
    });
	
</script>

    <form id="filterform" action="{SEARCH_ACTION_URL}" method="post" class="ajax">
    <input type="hidden" name="e" value="projects" />
	<input type="hidden" name="type" value="{PHP.type}" />
	<input type="hidden" name="l" value="{PHP.lang}" />
    <input type="hidden" name="aj" value="1" />
    {SEARCH_CAT_MULTI}

    <div class="panel-group niz_search" id="accordion">

    <div id="filterPrice">  
    <div class="panel panel-default">
    <div class="panel-heading"><a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><b>Цена:</b><span class="pull-right"><i class="fa fa-chevron-down"></i></span></a></div>
    <div id="collapseTwo" class="panel-collapse collapse">
    <div class="panel-body">{SEARCH_PFROM} {SEARCH_PFTO} {PHP.cfg.payments.valuta}</div>
    </div>
    </div>
    </div>

    <div id="filterRegion">
    <div class="panel panel-default">
    <div class="panel-heading"><a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><b>Регион:</b><span class="pull-right"><i class="fa fa-chevron-down"></i></span></a></div>
    <div id="collapseThree" class="panel-collapse collapse">
    <div class="panel-body">{SEARCH_LOCATION}</div>
    </div>
    </div>
    </div>

    </div> 
    </form>
    <!-- END: SEARCH -->




        <!-- BEGIN: PROJECTS -->
        <div id="ajaxBlock">
        <div id="listprojects">
        <!-- BEGIN: PRJ_ROWS -->
<div class="media<!-- IF {PRJ_ROW_ISBOLD} --> well prjbold<!-- ENDIF --><!-- IF {PRJ_ROW_ISTOP} --> well prjtop<!-- ENDIF -->">
<table class="table">
<tr class="mboxHrr">
<td colspan="3"class="width80"><a class="textprojekt" href="{PRJ_ROW_URL}"><b>{PRJ_ROW_SHORTTITLE}</b></a></td>
<td class="width20"><b><!-- IF {PRJ_ROW_COST} > 0 --><div class="pull-right ">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</div><!-- ENDIF --></b></td>
</tr>
<tr>
<td class="width40"><p class="owner small"><!-- IF {PRJ_ROW_TYPE} --><i class="fa fa-anchor"></i> {PRJ_ROW_TYPE} <!-- ENDIF --><a href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a></p></td>
<td class="width20" aligh="center"><p class="owner small"><span class="otstup"><i class="fa fa-clock-o"></i> </span>
<span class="date">{PRJ_ROW_DATE_STAMP|cot_build_timeago($this) {PHP.L.data_today}</span></p></td>

<td class="width20" aligh="center"><p class="owner small"><span class="region otstup"> {PRJ_ROW_EDIT_URL}</span></p></td>
<td class="width20" aligh="center"><p class="owner small"><span class="pull-right offers"><a href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">
<i class="fa fa-comments-o"></i> {PHP.L.offers_add_offer}</a> {PRJ_ROW_OFFERS_COUNT}</span></p> </p></td>
</tr>
<tr class="hidden">
<td colspan="4"><p class="owner small">{PRJ_ROW_SHORTTEXT}</p></td>
</tr>
</table></div>
        <!-- END: PRJ_ROWS -->
        </div>    
       
        </div>
        <!-- END: PROJECTS -->