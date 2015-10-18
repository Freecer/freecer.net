  /**
 * Dialog System
 *
 * @package DS
 * @copyright (c) Alexeev Vlad
 */
 
$(document).ready(function(){
    //по клику на ячейку в диалогах переходим по ссылке на сам диалог
    $(".dialog_body").on('click',function(){
        window.location=$(this).attr("href"); return false;
    });

    // при нажатии на enter отправляем сообщение
    $('textarea[name="newpmtext"]').keydown(function (e) {
        if (e.keyCode == 13) {
            e.preventDefault();
            $('input[type="submit"]').click();
        }
    }); 
}); 