Copyright (c) 2015, Roffun | http://cowr.ru/blog/blog-internet/boxes-plugin-cotonti

Для того чтобы добавлять свои описания к слотам, добавьте в PHP файл вашего шаблона код:
- если шаблон называется "set" , то соответственно добавить в файл set.php в самый низ:

To add your own description to slots, add to PHP file of your template or code of the same name:
- If the pattern is called "set", then add a file, respectively set.php to the bottom:





    $L['style_my'] = ' style="color:blue"';
    /** ================================================
    СВОИ МЕТКИ ДЛЯ БЛОКОВ ВЫВОДИМЫХ ЧЕРЕЗ ПЛАГИН BOXES |
    More tags BLOCKS hatchability via plugins BOXES    | 
    ================================================== */
        
    //  Дополнительные блоки для любой части
    /** {PHP.box1}  */$L['box1_my'] = '';
    /** {PHP.box2}  */$L['box2_my'] = '';
    /** {PHP.box3}  */$L['box3_my'] = '';
    /** {PHP.box4}  */$L['box4_my'] = '';
    /** {PHP.box5}  */$L['box5_my'] = '';
    /** {PHP.box6}  */$L['box6_my'] = '';
    /** {PHP.box7}  */$L['box7_my'] = '';
    /** {PHP.box8}  */$L['box8_my'] = '';
    