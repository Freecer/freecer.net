<!-- BEGIN: MAIN -->
<!-- BEGIN: FILES_ROW -->
    <table class="wellbord table" >
        <!-- IF {FILES_ROW_IMG} == 1 -->
            <tr>
                <td>
                   <center> <img src="{FILES_ROW_ID|cot_files_thumb($this)}" alt="{FILES_ROW_TITLE}" /></center>
                </td>
            </tr>
        <!-- ELSE -->
            <!-- IF {FILES_ROW_EXT} == swf -->
                <tr>
                    <td>
                       <center>  <object style=' max-width:{PHP|getFileConfParametr('thumb_width')}px; 
                                max-height:{PHP|getFileConfParametr('thumb_height')}px;'
                                type="application/x-shockwave-flash" data="{FILES_ROW_PATH}">
                            <param name="movie" value="{FILES_ROW_PATH}">
                        </object></center>
                    </td>
                </tr>
            <!-- ELSE --> 
                <tr>
                    <td align="center" rowspan="2" class="width30" >
                        <a href="{FILES_ROW_URL}" title="{FILES_ROW_TITLE}">
                            <img src="{FILES_ROW_ICON}" alt="{FILES_ROW_EXT}" />
                        </a>
                    </td>
                    <td>
                        <p class="terwtabl width100">
                            <a href="{FILES_ROW_URL}" title="{FILES_ROW_TITLE}">
                                <!-- IF {FILES_ROW_TITLE} -->
                                    {FILES_ROW_TITLE}
                                <!-- ELSE -->
                                    {FILES_ROW_NAME}
                                <!-- ENDIF -->
                            </a>
                        </p>
                    </td>
                </tr>
                <tr>
                    <td class="terwtabl">{PHP.L.files_downloads}: {FILES_ROW_COUNT}</td>
                </tr>
            <!-- ENDIF -->
        <!-- ENDIF -->
    </table>
<!-- END: FILES_ROW -->
<!-- END: MAIN -->
