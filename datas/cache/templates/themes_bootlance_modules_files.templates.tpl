a:1:{s:4:"MAIN";O:11:"Cotpl_block":2:{s:7:" * data";a:0:{}s:6:"blocks";a:1:{i:0;O:10:"Cotpl_data":1:{s:9:" * chunks";a:15:{i:0;s:693:"<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr style="display: none;" class="template-upload fade">
        <td>
            <span class="preview"></span>
        </td>
        <td>
            <p class="name">{%=file.name%}</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
            <strong class="error text-danger"></strong>
        </td>
        <td class="hidden-xs">
            <p class="size">";i:1;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:16:"files_processing";}s:12:" * callbacks";N;}i:2;s:90:"...</p>
        </td>
        <td>
            <div class="visible-xs"><span class="size">";i:3;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:16:"files_processing";}s:12:" * callbacks";N;}i:4;s:223:"...</span></div>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>";i:5;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:11:"files_start";}s:12:" * callbacks";N;}i:6;s:231:"</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>";i:7;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:6:"Cancel";}s:12:" * callbacks";N;}i:8;s:1443:"</span>
                </button>
            {% } %}
        </td>
    </tr>
    {% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
        <div class="file template-download" id="file_{%=file.id%}" data-id="{%=file.id%}" 
            data-url="{%=file.url%}" data-thumbnail="{%=file.thumbnail%}" data-name="{%=file.name%}">
                    
            <div class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </div>
    
            <div class="name">
                {% if (file.error) { %}
                    <span class="label label-danger">Error</span> {%=file.error%}
                {% } else { %}

                    {% for (var j=0, element; element=file.editForm[j]; j++) { %}
                        {%#element.element%}
                    {% } %}

                {% } %}
            </div>
    
            <div class='info'>
                <div class='size'>
                     <span>{%=o.formatFileSize(file.size)%}</span>
                </div>
        
                <div class='delete'>
                    {% if (file.error) { %}
                        <button class="delete"><span>";i:9;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:6:"Delete";}s:12:" * callbacks";N;}i:10;s:381:"</span></button>
                    {% } else { %}
                        {% if (file.deleteUrl) { %}
                            <button class="delete" data-type="{%=file.deleteType%}" 
                                data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} 
                                data-xhr-fields='{"withCredentials":true}'{% } %} title="";i:11;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:6:"Delete";}s:12:" * callbacks";N;}i:12;s:170:"" 
                                data-toggle="tooltip">
                                <i class="glyphicon glyphicon-trash"></i>
                                <span>";i:13;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:6:"Delete";}s:12:" * callbacks";N;}i:14;s:206:"</span>
                            </button>
                        {% } %}
                    {% } %}
                </div>
            
            </div>
            
        </div>
{% } %}
</script>";}}}}}