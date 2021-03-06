a:1:{s:4:"MAIN";O:11:"Cotpl_block":2:{s:7:" * data";a:0:{}s:6:"blocks";a:1:{i:0;O:10:"Cotpl_data":1:{s:9:" * chunks";a:7:{i:0;s:766:"<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td><span class="preview"></span> </td>
        <td><p class="name">{%=file.name%}</p><strong class="error text-danger"></strong></td>
        <td><p class="size">Processing...</p>
        <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0">
        <div class="progress-bar progress-bar-success" style="width:0%;"></div>
        </div>
        </td>
        <td>
{% if (!i && !o.options.autoUpload) { %} <button class="btn start" disabled><i class="glyphicon glyphicon-upload"></i><span>";i:1;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:9:"att_start";}s:12:" * callbacks";N;}i:2;s:118:"</span></button>{% } %}
{% if (!i) { %}<button class="btn cancel"><i class="glyphicon glyphicon-ban-circle"></i><span>";i:3;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:6:"Cancel";}s:12:" * callbacks";N;}i:4;s:575:"</span></button>{% } %}
        </td>
    </tr>
    {% } %}
</script>


<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade" data-id="{%=file.id%}">
    <td> 
    <div style="position: relative">
    {% if (file.url) { %}<a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>{% } %}
    {% if (file.error) { %} <span class="label label-danger">";i:5;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:12:"att_err_type";}s:12:" * callbacks";N;}i:6;s:456:"</span>{% } %}
    </div>
    </td>
    <td> <span class="size">{%=o.formatFileSize(file.size)%}</span></td>
    <td>
    {% if (file.deleteUrl) { %}<i class="fa fa-trash-o btn delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"
    {% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}></i>
    {% } else { %}<i class="fa fa-trash-o btn cancel"></i> {% } %}
    </td>
    </tr>
    {% } %}
</script>";}}}}}