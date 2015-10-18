/*
Copyright (c) 2014, Алексей Коневец aka Dr2005alex
Dr2005alex@mail.ru, Dr2005alex@gmail.com
http://MyCotonti.ru
*/

/**
 * @file Code plugin.
 */

(function()
{
    var pluginName = 'spoiler';
    // Регистрируем имя плагина .
    CKEDITOR.plugins.add( pluginName,
    {
        lang: [ 'en', 'ru' ],    
        init : function( editor )
        {//Добавляем команду на нажатие кнопки
            editor.addCommand( pluginName,new CKEDITOR.dialogCommand( 'spoiler' ));
             //Указываем где скрипт окна диалога.
            CKEDITOR.dialog.add( pluginName, this.path + 'dialogs/spoiler.js' );
            // Добавляем кнопочку
            editor.ui.addButton( 'Spoiler',
            {
                label : editor.lang.spoiler.title,//Title кнопки
                command : pluginName,
                icon : this.path + 'logo.gif'//Путь к иконке
            });
        }
    });
})();