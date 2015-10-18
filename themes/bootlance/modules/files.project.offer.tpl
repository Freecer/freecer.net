<!-- BEGIN: MAIN -->

  <div style="clear:both;"></div>
  <!-- BEGIN: FILES_ROW -->

<table class="table wellbordse file{FILES_ROW_ID}">
<tr><td>
<a href="{FILES_ROW_URL}" title="{FILES_ROW_TITLE}" ><!-- IF {FILES_ROW_IMG} -->
<img src="{FILES_ROW_PATH}" class="typw"><!-- ELSE --><img src="{FILES_ROW_ICON}" alt="{FILES_ROW_EXT}" class="typwy"/><!-- ENDIF --></a>
</td></tr>
<tr><td >
<div style='height: 20px; width: 160px; overflow: hidden; word-wrap: normal;' class="vertfer"><a  href="{FILES_ROW_URL}"  title="{FILES_ROW_TITLE}"><!-- IF {FILES_ROW_TITLE} -->{FILES_ROW_TITLE}<!-- ELSE -->{FILES_ROW_NAME}<!-- ENDIF --></a></div>
</td></tr>
<tr>
    <td>
        {PHP.L.files_downloads}: {FILES_ROW_COUNT}
        <!-- IF {FILES_ROW_USER} == {CUR_USER} -->
        <!-- BEGIN Кнопка удалить -->
        <button onClick='deleteFile{FILES_ROW_ID}()' class="delete" data="{FILES_ROW_ID}" title="Удалить" 
                style='background: none; border: none; float: right;'>
            <i class="glyphicon glyphicon-trash"></i>
            <span>{PHP.L.Delete}</span>
        </button>
        <script>
            function deleteFile{FILES_ROW_ID}(){
                url = "/index.php?e=files&m=upload&id={FILES_ROW_ID}&_method=DELETE&x={UPLOAD_X}";
                $.post(url, {}, function(res){
                    if(json = JSON.parse(res)){
                        if(json['success'] == true){
                            $('.file{FILES_ROW_ID}').remove();
                        }
                    }
                });
                return false;
            }
        </script>
        <!-- END Кнопка удалить -->
        <!-- ENDIF -->
    </td>
</tr>
</table>
<!-- END: FILES_ROW -->
<!-- END: MAIN -->


