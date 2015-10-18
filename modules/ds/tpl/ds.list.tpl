<!-- BEGIN: MAIN -->
 <center><div class="breadcrumb"><b>{DS_PAGETITLE}</b></div> </center> 


   	
	
			<div class="block" >

			<table class="table" style="margin: 0px auto; max-width: 70%;">
			<thead>
			<tr>
            <th class="width30 text-center small">Контакты</th>
			<th class="width70 text-center small">Последние сообщения</th>
			</tr>
			</thead>
			<tbody>
	
<!-- BEGIN: DS_ROW -->	

			<tr class="dialoghover">
			<td>
            <span class="ds_avatar"><a href="{DS_OPPONENT_DETAILSLINK}">{DS_OPPONENT_AVATAR}</a></span>
			<span ><img src="themes/{PHP.theme}/img/online{DS_OPPONENT_ONLINE}.png" />  {DS_OPPONENT_NAME}</span>
			</td>
            <td class="dialog_body" href="{DS_DIAOG_URL}">
            <div class="ds_avatar marginright10" style="float: left;">{DS_FROM_USER_AVATAR}</div>
			<div class="paddingright10 dialogmsg<!-- IF {DS_STATUS} --> unreadmsg<!-- ENDIF -->">{DS_FROM_USER_NAME}
            <small class="pull-right">{DS_TIME_AGO}</small>
            <br />
			<small>{DS_TEXT}</small></div>
			</td>
			</tr>

<!-- END: DS_ROW -->
	
			</tbody>
			</table>

			</div>


	
		

<!-- END: MAIN -->