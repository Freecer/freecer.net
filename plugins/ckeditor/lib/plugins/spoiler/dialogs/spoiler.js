/*
Copyright (c) 2014, Алексей Коневец aka Dr2005alex
Dr2005alex@mail.ru, Dr2005alex@gmail.com
http://MyCotonti.ru
*/
CKEDITOR.dialog.add( 'spoiler', function( editor )
{
    return {
    title : 'Spoiler',
    minWidth : 400,
    minHeight : 300,
    contents : [
        {
        id : 'tab1',
        label : 'First Tab',
        title : 'First Tab',
        elements :[
        {
            id : 'input1',
            type : 'text',
            style : 'width:140px;',
            label : editor.lang.spoiler.button_label,
            validate : function()
            {
            CKEDITOR.config.text_val= this.getValue();
            if ( !this.getValue() )
            {alert( editor.lang.spoiler.empty_button_text ); return false;}
            }
          },
            {
                type : 'html',
                id : 'content',
                html :'<textarea style="' + 'width:406px;' + 'height:170px;' + 'resize: none;' + 'border:1px solid black;' + 'background-color:white">' +'</textarea>',
                validate : function()
                { if ( !this.getValue() )
                {alert( editor.lang.spoiler.empty_text );
                return false;}
                var element = editor.document.createElement( 'div' ).setAttribute( 'class', 'spoilerblock' );
                    element.setHtml("<div class='spoilerbtn'><input type='button' class='sp-mplus' value='+' >"+ CKEDITOR.config.text_val + "</div>");
                var element2= editor.document.createElement( 'div' ).setAttribute( "class", "spoilertext-none");
                    element2.setText(this.getValue());
                    element2.appendTo( element );
                    editor.insertElement( element );
                return true;
                }

            },{
                type : 'html',
                id : 'pasteMsg',
                html : '<div style="white-space:normal;width:340px;">'+editor.lang.spoiler.helptxt+'</div>'
               }

                ]
            }
        ]
    };
});