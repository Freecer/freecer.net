<!-- BEGIN: MAIN -->
  <div class="breadcrumb"><center><h3>{USERS_REGISTER_TITLE}</h3></center></div>

 <div class="row">

 <div class="span3 older"><center><img src="themes/{PHP.theme}/img/1etip.png"/><h3>1</h3><p>Выбрать категорию фрилансер или работодатель</p></center></div>
 <div class="span3 older"><center><img src="themes/{PHP.theme}/img/2etip.png"/><h3>2</h3><p>Заполнить краткую форму и получить письмо на E-mail</p></center></div>
 <div class="span3 older"><center><img src="themes/{PHP.theme}/img/3etip.png"/><h3>3</h3><p>Подтвердить указаный вами E-mail перейдя по ссылке</p></center></div>
 <div class="span3 older"><center><img src="themes/{PHP.theme}/img/4etip.png"/><h3>4</h3><p>Наслаждаться услугами и удобствами нашего сервиса!</p></center></div>
 </div>

</br>  

<center>
<div class="well">
<div class="input-prepend input-append">
<div class="btn-group">
<!-- BEGIN: USERGROUP_ROW -->
<a href="{USERGROUP_ROW_ALIAS|cot_url('users', 'm=register&usergroup='$this)}" class="btn btn-large span5<!-- IF {USERGROUP_ROW_ACTIVEID} --> active<!-- ENDIF -->"> <i class="fa fa-user"></i> {USERGROUP_ROW_TITLE}</a>
<!-- END: USERGROUP_ROW -->
</div>
</div>
</div>
</center>

<!-- END: MAIN -->