$().ready(function() {
 
    $('.nav-list > li ul')
        .click(function(event){
            event.stopPropagation();
        })
        .hide();
 
    $('.active').parent().addClass('active');
     
    $('.active').parent().show();
    $('.active').parent().parent().show();
     
    $('.well-small>ul>li>a, .well-small>ul>li>ul>li>a').click(function(event){
        var ulelement = $(this).parent('li').children('ul').is('ul');
        if(ulelement)
        {
            event.preventDefault();
        }
    });
 
 
    $('.nav-list > li, .nav-list > li > ul > li').click(function(){
        var selfClick = $(this).find('ul:first').is(':visible');
        if(!selfClick) {
            $(this)
                .parent()
                .find('> li ul:visible')
                .slideToggle();
        }
 
        if($(this).hasClass('active')){
            $(this).removeClass('active');
        }
        else{
            $('.well-small>ul>li').removeClass('active');
        }
 
        $(this)
            .find('ul:first')
            .stop(true, true)
            .slideToggle();
    });
     
});