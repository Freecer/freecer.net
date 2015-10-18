<!-- BEGIN: MAIN -->

		<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
			<div class="error clear">
				<h4>{PHP.L.users_maintenance1}</h4>
				<p>{PHP.L.users_maintenance2}</p>
			</div>
		<!-- END: USERS_AUTH_MAINTENANCE -->

		<div class="row">
			<div class="offset3 span6 form-signin">

				<form name="login" action="{USERS_AUTH_SEND}" method="post">
				<table class="table">
    <tr>
        <td colspan="2" class="mboxHD">{USERS_AUTH_TITLE}</td>
    </tr>
    <tr>
        <td>{PHP.L.users_nameormail}:</td>
        <td class="width70">{USERS_AUTH_USER}</td>
    </tr>
    <tr>
        <td>{PHP.L.Password}:</td>
        <td class="width70">{USERS_AUTH_PASSWORD}</td>
    </tr>
    <tr>
        <td class="small"><a href="{PHP|cot_url('users', 'm=passrecover')}" class="pull-left">{PHP.L.users_lostpass}</a>
        <p><label class="checkbox">{USERS_AUTH_REMEMBER}&nbsp; {PHP.L.users_rememberme}</label></p></td>
        <td><button type="submit" name="rlogin" class="btn btn-success width50" value="0">{PHP.L.Login}</button></td>
    </tr>
</table>
					</table>
				</form>
			</div>
		</div>

<!-- END: MAIN -->


