<!-- BEGIN: MAIN -->
<!-- The template to display files available for upload -->
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
            <p class="size">{PHP.L.files_processing}...</p>
        </td>
        <td>
            <div class="visible-xs"><span class="size">{PHP.L.files_processing}...</span></div>
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>{PHP.L.files_start}</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>{PHP.L.Cancel}</span>
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
                        <button class="delete"><span>{PHP.L.Delete}</span></button>
                    {% } else { %}
                        {% if (file.deleteUrl) { %}
                            <button class="delete" data-type="{%=file.deleteType%}" 
                                data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} 
                                data-xhr-fields='{"withCredentials":true}'{% } %} title="{PHP.L.Delete}" 
                                data-toggle="tooltip">
                                <i class="glyphicon glyphicon-trash"></i>
                                <span>{PHP.L.Delete}</span>
                            </button>
                        {% } %}
                    {% } %}
                </div>
            
            </div>
            
        </div>
{% } %}
</script>
<!-- END: MAIN -->