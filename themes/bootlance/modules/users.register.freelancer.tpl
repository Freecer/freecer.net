<!-- BEGIN: MAIN -->
 
    <div class="breadcrumb"><center><h5>Регистрация нового пользователя в категорию исполнителей</h5></center></div>
    <div class="well hidden" style="padding-left: 50px;">
        <div class="input-prepend input-append">
            <div class="btn-group">
                <!-- BEGIN: USERGROUP_ROW -->
                <a href="{USERGROUP_ROW_ALIAS|cot_url('users', 'm=register&usergroup='$this)}" class="btn btn-large span5<!-- IF {USERGROUP_ROW_ACTIVEID} --> active<!-- ENDIF -->"> <i class="fa fa-user"></i> {USERGROUP_ROW_TITLE}</a>
                <!-- END: USERGROUP_ROW -->
            </div>
        </div>
    </div>
   <div class="">
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <form name="login" action="{PHP.usergroup|cot_url('users', 'm=register&a=add&usergroup='$this)}" method="post" enctype="multipart/form-data">
            <input type="hidden" name="ruserusergroup" value="{PHP.usergroupid}" />
            <table class="table">
                <tr>
                    <td class="width40"><p><span class="date">{PHP.L.Username}:</span>(Ник, только латинскими буквами)</p></td>
                    <td class="width70">{USERS_REGISTER_USER} *</td>
                </tr>
                  <tr>
                    <td class="width40"><p><span class="date">{PHP.L.users_validemail}:</span>(Адрес почтового ящика)</p></td>
                    <td class="width70">{USERS_REGISTER_EMAIL} *</td>
                </tr>
                    <tr>
                        <td class="width40"><p><span class="date">{PHP.L.femily}:</span>(Ваша фамилия)</p></td>
                        <td class="width70">{USERS_REGISTER_FEMILY} *</td>
                    </tr>
                    <tr>
                        <td class="width40"><p><span class="date">{PHP.L.nime}:</span>(Ваше имя)</p></td>
                        <td class="width70">{USERS_REGISTER_NIME} *</td>
                    </tr>  
                     <!-- IF {PHP.cot_plugins_active.locationselector} -->
                <tr>
                    <td class="width40"><p><span class="date">{PHP.L.Country}:</span>(Выбрать из списка)</p></td>
                    <td class="width50">{USERS_REGISTER_COUNTRY}</td>
                </tr>
                <!-- ENDIF -->
                    <tr>
                        <td class="width40"><p><span class="date">{PHP.L.scipe}:</span>(Не более 30 символов)</p></td>
                        <td class="width70">{USERS_REGISTER_SKYPE}</td>
                    </tr> 
                    <tr>
                        <td class="width40"><p><span class="date">{PHP.L.telept}:</span>(ввод номера без знака " + ")</p></td>
                        <td class="width70">{USERS_REGISTER_TELEPT} *</td>
                    </tr> 
                      <tr>
                        <td class="width40"><p><span class="date">{USERS_REGISTER_SITES_TITLE}:</span>(Пример: <a href="www.freecer.net">www.freecer.net</a>)</p></td>
                        <td class="width70">{USERS_REGISTER_SITES}</td>
                    </tr>
                <tr>
                    <td class="width40"><p><span class="date">{PHP.L.Password}:</span>(Не мение 6 символов)</p></td>
                    <td class="width30">{USERS_REGISTER_PASSWORD} *</td>
                </tr>
                <tr>
                    <td class="width40"><p><span class="date">{PHP.L.users_confirmpass}:</span>(Введите пароль ещё раз)</p></td>
                    <td class="width30">{USERS_REGISTER_PASSWORDREPEAT} *</td>
                </tr>
                <tr>
                    <td class="width40"><p><span class="date">{USERS_REGISTER_VERIFYIMG}</span>(Введите в поле сумму чисел)</p></td>
                    <td class="width30">{USERS_REGISTER_VERIFYINPUT} *</td>
                </tr>
      
                <tr>   
                <td class="width40"> <!-- IF {USERS_REGISTER_USERAGREEMENT} --><label>{USERS_REGISTER_USERAGREEMENT} *</label> <!-- ENDIF --></td> 
                <td>
                <button class="btn btn-success">{PHP.L.dalee}</button>
                </td>
                </tr>
            </table>
        </form>
    </div>
 
<!-- END: MAIN -->