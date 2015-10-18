<!-- BEGIN: MAIN -->
<style>
    .fileupload{
        margin-top: 10px;
        display: inline;
    }
    
    .fileupload .buttons{
        display: inline;
    }
    
    .fileupload .buttons .fileinput-button{
        background-color: rgb(2, 82, 115);
        border-radius: 2px;
        border: 1px solid rgb(2, 82, 115);
        border-collapse: collapse;
        color: rgb(255, 255, 255);
        cursor: pointer;
        display: inline-block;
        font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
        font-size: 12px;
        height: 20px;
        line-height: 20px;
        margin: 0;
        overflow: hidden;
        padding: 4px 12px;
        position: relative;
        text-align: center;
        vertical-align: middle;
        width: 110px;
    }
    
    .fileupload .filesTable{
        width: 900px;
    }
    
    .fileupload .files{
        width: 100%;
        text-align: center;
        padding: 10px 0;
    }
    
    .fileupload .filesTable:after ,.files:after{
        clear: both;
        content: "";
        display: table;
    }
    
    .fileupload .files .file{
        width: 200px;
        display:inline-block;
        border: 1px solid #bfbfbf;
        padding: 5px;
        overflow: hidden;
        margin: 5px;
    }
    
    .fileupload .files .file > div{
        width: 100%;
        float: left;
        overflow: hidden;
    }
    
    .fileupload .files .file .preview{
        height: 140px;
        border: 1px solid #bfbfbf;
    }
    
    .fileupload .files .file .preview a{
        line-height: 140px;
        vertical-align: middle;
    }
    
    .fileupload .files .file .name{
        width: 190px;
        height: 25px;
        margin-top: 4px;
        border: 1px solid #bfbfbf;
        overflow: hidden;
        padding: 0 5px;
    }
    
    .fileupload .files .file .name input{
        width: 100px;
        height: 20px;
        margin: 0;
        padding: 2px;
        border: none;
    }
    
    .fileupload .files .file .info{
        height: 23px;
        margin-top: 4px;
    }
    
    .fileupload .files .file .info > div{
        width: 49%;
        height: 20px;
        float: left;
        border: 1px solid #bfbfbf;
    }
    
    .fileupload .files .file .info > .size{
        width: 48%;
    }
    
    .fileupload .files .file .info > .delete button{
        background: none;
        border: none;
    }
</style>
<div class="fileupload" id="fileupload_{UPLOAD_SOURCE}_{UPLOAD_ITEM}_{UPLOAD_FIELD}" data-url="{UPLOAD_ACTION}">

    <div id="filesTable_" role="presentation" class="filesTable">
        <div class="files"></div>
    </div>

    <div class="buttons fileupload-buttonbar">
        <span class="load fileinput-button">
            <i class="glyphicon glyphicon-plus"></i>
            <span>{PHP.L.files_add}...</span>
            <input type="file" name="files[]" <!-- IF {UPLOAD_LIMIT} > 0 -->multiple<!-- ENDIF -->>
        </span>

        <span class="fileupload-process"></span>
    </div>

</div>

<!-- Cotonti config -->
<script type="text/javascript">
if (filesConfig === undefined) {
    var filesConfig = {
        exts: $.map('{UPLOAD_EXTS}'.split(','), $.trim),
        //accept: '{UPLOAD_ACCEPT}',
        maxsize: {UPLOAD_MAXSIZE},
        previewMaxWidth: {UPLOAD_THUMB_WIDTH},
        previewMaxHeight: {UPLOAD_THUMB_HEIGHT},
        autoUpload: {PHP.cfg.files.autoupload},
        sequential: {PHP.cfg.files.sequential},
        'x':    '{UPLOAD_X}'
    };
}
filesConfig.{UPLOAD_ID} = {
    source: '{UPLOAD_SOURCE}',
    item:   {UPLOAD_ITEM},
    field:  '{UPLOAD_FIELD}',
    limit:  {UPLOAD_LIMIT},
    chunk:  {UPLOAD_CHUNK},
    param:  '{UPLOAD_PARAM}'
};
</script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="js/cors/jquery.xdr-transport.js"></script>
<![endif]-->
<!-- END: MAIN -->