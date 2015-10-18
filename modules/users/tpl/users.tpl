<!-- BEGIN: MAIN -->
 <center><div class="breadcrumb"><h5>{USERS_TITLE}</h5></div></center>



	<div class="row">
		<div class="span3">
		<div class="becgraund">Фильтр категорий</div>
			<div class="well well-small"><div class="mini-menu">{USERCATEGORIES_CATALOG}</div>
			<div id="accordion" class="panel-group niz_search">

    <div id="filterRegion">
    <div class="panel panel-default">
    <div class="panel-heading">
    <a href="#collapseThree" data-parent="#accordion" data-toggle="collapse"><b>Регион:</b><span class="pull-right"><i class="fa fa-chevron-down"></i></span></a></div>
    <div class="panel-collapse collapse" id="collapseThree">
    <div class="panel-body">
                    <form action="{SEARCH_ACTION_URL}" method="get">
					<input type="hidden" name="f" value="search" />
					<input type="hidden" name="e" value="users" />
					<input type="hidden" name="group" value="{PHP.group}" />
					<input type="hidden" name="cat" value="{PHP.cat}" />
					<input type="hidden" name="l" value="{PHP.lang}" />
					<!-- IF {PHP.cot_plugins_active.locationselector} --><span class="locselect" id="searchCountry">{SEARCH_LOCATION}
					<button type="submit" name="search" class="btn btn-link" /><i class="fa fa-search"></i></button></td></span><!-- ENDIF -->
	               </form>
				</div>
    </div>
    </div>
    </div>

    </div>
			</div>
		</div>
		<div class="span9">
		
		
			
			<script type="text/javascript">
			
			function clikLab(but,str){
			var input =  $('#'+but).is( ":checked" );
			
			if(input == true){
			  $('.'+str).html('<i class="fa fa-square-o"></i>');
            }else{
              $('.'+str).html('<i class="fa fa-check-square-o"></i>');
            }
			}
			
			function clickLabel(str,but,butis){
			var input =  $('#'+but).is( ":checked" );
			
			if(input == true){
			  $('#'+str+' #getChack').html('<i class="fa fa-square-o"></i>');
			  $('.'+butis).html('<i class="fa fa-circle-o"></i>');
            }else{
              $('#'+str+' #getChack').html('<i class="fa fa-check-square-o"></i>');
              $('.'+butis).html('<i class="fa fa-check-circle"></i>');
            }
			
			}
			
			function clickCategory(id){
			
			$('#freelancer').append('<span style="position:absolute; left:' + ($('#freelancer').width()/2 - 110) + 'px;top:' + ($('#freelancer').height()/2 - 9) + 'px;" class="loading" id="loading"><img src="./images/spinner.gif" alt="loading"/></span>').css('position', 'relative');
			
			$("#freelancer").load("/modules/users/ajax/freelancer.php", {c:id});
			}
			</script>
			
			 <script>
			 function checkCat(){
             var cat_id = $('[id*="checkbox"]:checked').map(function() { return $(this).val().toString(); } ).get().join(",");
clickCategory(cat_id);
              }
              
              function cheackBox (st,but){
 
              var input =  $('#'+but).is( ":checked" );
              
              if(input == true){
              $('#'+st+' :checkbox').attr('checked',true);
              }else{
              $('#'+st+' :checkbox').attr('checked',false);
              }
              
              var cat_id = $('[id*="checkbox"]:checked').map(function() { return $(this).val().toString(); } ).get().join(",");
clickCategory(cat_id);

			  }
			  
			  function showCat (st,but){
			  $('#'+st).slideToggle(500);
			  }
			  
              </script>
			
			



			
			<div id="freelancer">
			<!-- BEGIN: USERS_ROW -->
 <table class="table">
    <tr>
    <td>{USERS_ROW_AVATAR}</td>
    <td>
    <p><span class="u_rating" title="Рейтинг - {USERS_ROW_USERPOINTS}"><span class="cur_rat" style="width: {USERS_ROW_USERPOINTS}%;"> </span></span>
    <!-- IF {USERS_ROW_ISPRO} --> <span class="pull-right">Профи</span><!-- ENDIF --></p>
    <p>{USERS_ROW_COUNTRY} {USERS_ROW_COUNTRYFLAG}</p>
    <p></p>
    </td>
    <td rowspan="2"class="width75 " >{USERS_ROW_ID|cot_getfoliolist('deret', 5, 'item_userid='$this, "item_date DESC")}</td>
    </tr>
    <tr >
    <td colspan="2" ><strong>{USERS_ROW_NAME}</strong></td>
    </tr>
</table>	

	
			<!-- END: USERS_ROW -->
			</div>

			<!-- IF {USERS_TOP_TOTALUSERS} > 0 -->
			<div class="pagination"><ul>{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}</ul></div>
			<!-- ELSE -->
			<div class="alert">{PHP.L.Noitemsfound}</div>
			<!-- ENDIF -->
		</div>
	</div>
		

<!-- END: MAIN -->