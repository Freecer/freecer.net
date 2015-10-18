<!-- BEGIN: MAIN -->
		    <center>
            <div class="breadcrumb"><h3>{PASSRECOVER_TITLE}</h3></div>
			<!-- IF {PHP.msg} == 'request' --><p>{PHP.L.pasrec_mailsent}</p><!-- ENDIF -->
			<!-- IF {PHP.msg} == 'auth' --><p>{PHP.L.pasrec_mailsent2}</p><!-- ENDIF -->
			<!-- IF !{PHP.msg} -->
			<img src="themes/{PHP.theme}/img/alert/icon1.png"/>
			<b><p><br>Введите ваш E-mail</p>
			<p>Получив письмо - воспользуйтесь ссылкой для смены пароля</p></b>
		    <p class="small">Система сгенерирует пароль, случайным образом, который будет отправлен на указаный E-mail</p>
			<form name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post">
            <input type="text"  name="email" value="" size="20" class="width30" maxlength="64" />
            <p><button class="btn btn-success width10" type="submit">{PHP.L.pasrec_request}</button></p>
			</form>
			<!-- ENDIF -->
	        </center>
            <!-- END: MAIN -->



