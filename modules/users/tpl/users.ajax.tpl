<!-- BEGIN: USERS_ROW -->
<table class="table">
    <tr>
        <td><img class="avatar" alt="Аватар" src="{USERS_ROW_AVATAR}"></td>
        <td>
            <p class="owner small">
                <span class="u_rating" title="Рейтинг - {USERS_ROW_USERPOINTS}">
                    <span class="cur_rat" style="width: {USERS_ROW_USERPOINTS}%;"> </span>
                </span>
                <span class="pull-right"><img src="themes/{PHP.theme}/img/online{USERS_ROW_ONLINE}.png" /></span>
            </p>
            <p class="owner small">
                <!-- IF {USERS_ROW_COUNTRY} != '' -->
                    {USERS_ROW_COUNTRY} 
                     <a href='index.php?e=users&amp;f=country_{USERS_ROW_COUNTRYFLAG}' title='{USERS_ROW_COUNTRY}'>
                     <img class='flag' src='images/flags/{USERS_ROW_COUNTRYFLAG}.png' alt='{USERS_ROW_COUNTRY}'></a>
                <!-- ENDIF -->
            </p>
            <p class="owner small">
                Отзывы:<a class=" pull-right"href="
                          {USERS_ROW_DETAILSLINK|cot_url('users', 'm=details&id='$this'&tab=reviews')}">
                    <span class="reyl">{USERS_ROW_REVIEWS_POZITIVE_SUMM}</span> /
                    <span class="red">{USERS_ROW_REVIEWS_NEGATIVE_SUMM}</span>
                </a> </p>
        </td>
        <td rowspan="2"class="width75 " >
            {USERS_ROW_ID|cot_getfoliolist('deret', 5, 'item_userid='$this, "item_date DESC")}
        </td>
    </tr>
    <tr >
        <td colspan="2" >
            <p class="owner small">
                <a href='http://freecer.net/index.php?e=users&m=details&id={USERS_ROW_ID}'>
                <strong>{USERS_ROW_NAME}</strong>
                </a>
            </p>
        </td>
    </tr>
</table>	
<!-- END: USERS_ROW -->

<!-- BEGIN: USERS_ROW_EMPTY -->
<div class="alert">Исполнители не найдены</div>
<!-- END: USERS_ROW_EMPTY -->
