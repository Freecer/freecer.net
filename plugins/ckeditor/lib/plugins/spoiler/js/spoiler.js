/*
Copyright (c) 2014, Алексей Коневец aka Dr2005alex
Dr2005alex@mail.ru, Dr2005alex@gmail.com
http://MyCotonti.ru
*/

/* скрипт для spoiler */
$(window).load(function() {

    $('.spoilerbtn').click(function(){

        if($(this).next("div").attr("class") === 'spoilertext' ){
            $(this).next("div").attr("class",'spoilertext-none'); 
            $(this).children().attr('value','+').attr('class','sp-mplus');
        }else{
            $(this).next("div").attr("class",'spoilertext');
            $(this).children().attr('value','-').attr('class','sp-mplus-push');
        }
        return false;

    });

});
