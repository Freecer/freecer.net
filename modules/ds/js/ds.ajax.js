  /**
 * Dialog System
 *
 * @package DS
 * @copyright (c) Alexeev Vlad
 */
$(document).ready(function(){
    var scroll = $('#scroll')[0];  //получаем элемент прокрутки окна сообщений
    var chat = $('#formsg')[0];   //получаем ефблиу для записи новых сообщений
    var form = $('#dialogform');    //получаем форму    
    var chatid = $(form).attr('data-dialog-id');  // получаем id чаата
    
    //для отображения Уведомления в title
    var unfocus; 
    $(window).blur(function() {
      unfocus = 1;
    });
    $(window).focus(function() {
      unfocus = null;
    });
    //
                                                    
    // вешаем обработчик на отправку формы
    $('#dialogform').submit(function(e){
    var send_data = '&' + $('#dialogform').serialize();  //формируем данные для отправки
    var text = $(form).find('textarea[name="newpmtext"]');  //получаем текст
        e.preventDefault();      //отменяем действие кнопки
        $(form).find('input').attr("disabled", true);  //блокируем кнопку отправки во время отправки
        sendmsg(text);      //отправляем текст
        return false;       //обязательно

        
    function sendmsg(text) {
        var url = $(form).attr('action');
        $.ajax({
            type: 'POST',
            url: url,
            data: send_data,
            success: function (data) {
                if (data) {
                    if (text) {
                        $(chat).find('tr[id=error]').hide();   //скрываем ошибку(если до этого была неудачная отправка)
                				$(chat).append(data).find('tr:last-child').fadeIn('slow');
                        $(text).val('').focus();
                        $(scroll).scrollTop(scroll.scrollHeight);
                    }
                }
                $(form).find('input').attr("disabled", false);
            }
        })
    }
    });

    function updatemsg() {     //функция обновления сообщений
    var url = 'index.php?e=ds&m=ajax&a=update&chat=' + chatid;     
    $.ajax({
        type: 'GET',
        url: url,
        success: function (data) {
            if (data) {
                $(chat).append(data);
                $(scroll).scrollTop(scroll.scrollHeight);
                if (unfocus) {  //уведомление в title
                    getAttention(); 
                }
            }
            $(form).find('input').attr("disabled", false);
            update_timer();
        }
    })
    }
    
    var timer;                //таймер для обновления сообщений
    function update_timer() {
        if (timer)
            clearTimeout(timer);
        timer = setTimeout(function () {
            updatemsg();
        }, 5000);       //5000 = 5 сек заержки между запросом, это рекомендуемое значение.
    }
    update_timer();

    function getAttention() {            //при не активном окне, будем показывать в title что у вас новое сообщение
     var i = 0;
     var show = ['* У вас новое сообщение!', document.title];
     var focusTimer = setInterval(function() {
       document.title = show[i++ % 2];
     }, 1000);     
      $(window).bind('focus', function() {
        clearInterval(focusTimer);
        document.title = show[1];
        stop();
      });
    }
});   