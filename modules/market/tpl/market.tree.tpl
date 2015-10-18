<!-- BEGIN: MAIN -->
<!-- IF {ROW_LEVEL} == 0 -->
    <form id='catalogForm' action='index.php?r=market&m=ajax' method='post' class='ajax'>
<!-- ENDIF -->
<ul class="nav nav-list">
    <!-- BEGIN: CATS -->
        <li<!-- IF {ROW_LEVEL} != 0 --> class='subsection' style='padding-left: 12px;'<!-- ENDIF -->>
        <a style='cursor: pointer;'>
            <label style='float: left; height: 12px; margin: 0 10px 0; width: 10px;'>
                <input class='checkbox' name="cat[]" value="{ROW_TPL}" type="checkbox">
                <!-- IF {ROW_LEVEL} == 0 -->
                    <i class="fa fa-circle-o"></i>
                <!-- ELSE -->
                    <i class="fa fa-square-o"></i>
                <!-- ENDIF -->
            </label>
            <span class='title<!-- IF {ROW_LEVEL} == 0 --> sub<!-- ENDIF -->'
                <!-- IF {ROW_LEVEL} != 0 --> onclick="toogleMyInput(this)"<!-- ENDIF -->>
                {ROW_TITLE}
            </span>
            <span class="pull-right">{ROW_COUNT}</span>
        </a>
        <!-- IF {ROW_SUBCAT} -->{ROW_SUBCAT}<!-- ENDIF -->
    </li>
    <!-- END: CATS -->
</ul>
<!-- IF {ROW_LEVEL} == 0 -->
</form>
<style>
    .checkbox:checked + .fa-square-o:before {
        content: "" !important;
    }
    
    form.ajax li{
        position: relative;
    }
    
    form.ajax .title{
        display: block;
        padding-left: 19px;
        width: 180px;
    } 
    
    form.ajax ul li ul{
        display: none;
    }
    
    form.ajax ul li ul .title{
        text-indent: -5px;
        padding-left: 27px;
        width: 160px;
        line-height: 12px;
        padding-top: 5px;
    }

    form.ajax li{
        font-family: FontAwesome;
        font-size: 14px;
    }

    form.ajax li.subsection{
        font-size: 12px;
        min-height: 20px;
        margin-bottom: 4px;
    }
    
    form.ajax .pull-right {
        position: absolute;
        right: 0;
        top: 0;
    }
</style>
<script>
    $(document).ready(function () {
        $("form.ajax li .title.sub").click(function(){
            var li = $(this).parent().parent();
            if( li.hasClass('opened') ){
                li.removeClass('opened');
                li.find('ul').slideUp();
            }else{
                li.addClass('opened');
                li.find('ul').slideDown();
            }
        });
        
    });
    
    $(document).on('change', 'form.ajax', function () {
        $(this).submit();
    });

    $(document).on('change', 'form.ajax input', function () {
        testNavElements(this);
        return false;
    });

    function testNavElements(input) {
        var li = $(input).parent().parent().parent();
        if (!li.hasClass('subsection')) {
            var state = input.checked;
            li.find('ul input').each(function (el) {
                this.checked = state;
            })
        } else {
            var state = true;
            li.parent().find('input').each(function () {
                if (state && !this.checked) {
                    state = false;
                }
            })
            li.parent().parent().find('input')[0].checked = state;
        }
        $('form.ajax').change();
    }

    function toogleMyInput(el) {
        var input = $(el).parent().find('input')[0];
        if (input.checked) {
            input.checked = false;
        } else {
            input.checked = true;
        }
        testNavElements(input);
    }
</script>
<!-- ENDIF -->
<!-- END: MAIN -->