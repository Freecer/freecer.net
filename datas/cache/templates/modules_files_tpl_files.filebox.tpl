a:1:{s:4:"MAIN";O:11:"Cotpl_block":2:{s:7:" * data";a:0:{}s:6:"blocks";a:3:{i:0;O:10:"Cotpl_data":1:{s:9:" * chunks";a:11:{i:0;s:573:"<!-- CSS adjustments for browsers with JavaScript disabled -->
<noscript><link rel="stylesheet" href="css/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="css/jquery.fileupload-ui-noscript.css"></noscript>

<!-- Shim to make HTML5 elements usable in older Internet Explorer versions -->
<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

<div class="row">
    <!-- The file upload form used as target for the file upload widget -->
    <div class="col-xs-12 fileupload" id="fileupload_";i:1;O:9:"Cotpl_var":3:{s:7:" * name";s:13:"UPLOAD_SOURCE";s:7:" * keys";N;s:12:" * callbacks";N;}i:2;s:1:"_";i:3;O:9:"Cotpl_var":3:{s:7:" * name";s:11:"UPLOAD_ITEM";s:7:" * keys";N;s:12:" * callbacks";N;}i:4;s:1:"_";i:5;O:9:"Cotpl_var":3:{s:7:" * name";s:12:"UPLOAD_FIELD";s:7:" * keys";N;s:12:" * callbacks";N;}i:6;s:12:"" data-url="";i:7;O:9:"Cotpl_var":3:{s:7:" * name";s:13:"UPLOAD_ACTION";s:7:" * keys";N;s:12:" * callbacks";N;}i:8;s:443:"">
        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
        <div class="row fileupload-buttonbar">
            <div class="col-xs-12">
                <!-- The fileinput-button span is used to style the file input field as button -->
                <span class="btn btn-success fileinput-button">
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>";i:9;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:9:"files_add";}s:12:" * callbacks";N;}i:10;s:65:"...</span>
                    <input type="file" name="files[]" ";}}i:1;O:13:"Cotpl_logical":3:{s:7:" * expr";O:10:"Cotpl_expr":1:{s:9:" * tokens";a:3:{i:0;a:2:{s:3:"var";O:9:"Cotpl_var":3:{s:7:" * name";s:12:"UPLOAD_LIMIT";s:7:" * keys";N;s:12:" * callbacks";N;}s:4:"prec";i:0;}i:1;a:2:{s:3:"var";d:0;s:4:"prec";i:0;}i:2;a:2:{s:2:"op";i:24;s:4:"prec";i:4;}}}s:7:" * data";a:0:{}s:6:"blocks";a:1:{i:0;a:1:{i:0;O:10:"Cotpl_data":1:{s:9:" * chunks";a:1:{i:0;s:8:"multiple";}}}}}i:2;O:10:"Cotpl_data":1:{s:9:" * chunks";a:39:{i:0;s:184:">
                </span>
                <button type="submit" class="btn btn-primary start">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>";i:1;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:18:"files_start_upload";}s:12:" * callbacks";N;}i:2;s:196:"</span>
                </button>
                <button type="reset" class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>";i:3;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:12:"files_cancel";}s:12:" * callbacks";N;}i:4;s:191:"</span>
                </button>
                <button type="button" class="btn btn-danger delete">
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>";i:5;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:6:"Delete";}s:12:" * callbacks";N;}i:6;s:416:"</span>
                </button>
                <input type="checkbox" class="toggle">
                <!-- The global file processing state -->
                <span class="fileupload-process"></span>
            </div>

            <div class="col-xs-12">
                <div id="dropzone" class="dropzone fade well">

                    <div class="hidden-xs"><span class="glyphicon glyphicon-import"></span> ";i:7;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:2:{i:0;s:1:"L";i:1;s:14:"files_draghere";}s:12:" * callbacks";N;}i:8;s:1026:"</div>

                    <!-- The global progress state -->
                    <div class="fileupload-progress fade">
                        <!-- The global progress bar -->
                        <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                            <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                        </div>
                        <!-- The extended global progress state -->
                        <div class="progress-extended hidden-xs">&nbsp;</div>
                    </div>
                </div>
            </div>
        </div>

        <!-- The table listing the files available for upload/download -->
        <table id="filesTable_" role="presentation" class="table table-striped filesTable"><tbody class="files"></tbody></table>
    </div>
</div>

<!-- Cotonti config -->
<script type="text/javascript">
if (filesConfig === undefined) {
    var filesConfig = {
        exts: $.map('";i:9;O:9:"Cotpl_var":3:{s:7:" * name";s:11:"UPLOAD_EXTS";s:7:" * keys";N;s:12:" * callbacks";N;}i:10;s:42:"'.split(','), $.trim),
        //accept: '";i:11;O:9:"Cotpl_var":3:{s:7:" * name";s:13:"UPLOAD_ACCEPT";s:7:" * keys";N;s:12:" * callbacks";N;}i:12;s:20:"',
        maxsize: ";i:13;O:9:"Cotpl_var":3:{s:7:" * name";s:14:"UPLOAD_MAXSIZE";s:7:" * keys";N;s:12:" * callbacks";N;}i:14;s:27:",
        previewMaxWidth: ";i:15;O:9:"Cotpl_var":3:{s:7:" * name";s:18:"UPLOAD_THUMB_WIDTH";s:7:" * keys";N;s:12:" * callbacks";N;}i:16;s:28:",
        previewMaxHeight: ";i:17;O:9:"Cotpl_var":3:{s:7:" * name";s:19:"UPLOAD_THUMB_HEIGHT";s:7:" * keys";N;s:12:" * callbacks";N;}i:18;s:22:",
        autoUpload: ";i:19;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:3:{i:0;s:3:"cfg";i:1;s:5:"files";i:2;s:10:"autoupload";}s:12:" * callbacks";N;}i:20;s:22:",
        sequential: ";i:21;O:9:"Cotpl_var":3:{s:7:" * name";s:3:"PHP";s:7:" * keys";a:3:{i:0;s:3:"cfg";i:1;s:5:"files";i:2;s:10:"sequential";}s:12:" * callbacks";N;}i:22;s:19:",
        'x':    '";i:23;O:9:"Cotpl_var":3:{s:7:" * name";s:8:"UPLOAD_X";s:7:" * keys";N;s:12:" * callbacks";N;}i:24;s:23:"'
    };
}
filesConfig.";i:25;O:9:"Cotpl_var":3:{s:7:" * name";s:9:"UPLOAD_ID";s:7:" * keys";N;s:12:" * callbacks";N;}i:26;s:18:" = {
    source: '";i:27;O:9:"Cotpl_var":3:{s:7:" * name";s:13:"UPLOAD_SOURCE";s:7:" * keys";N;s:12:" * callbacks";N;}i:28;s:15:"',
    item:   ";i:29;O:9:"Cotpl_var":3:{s:7:" * name";s:11:"UPLOAD_ITEM";s:7:" * keys";N;s:12:" * callbacks";N;}i:30;s:15:",
    field:  '";i:31;O:9:"Cotpl_var":3:{s:7:" * name";s:12:"UPLOAD_FIELD";s:7:" * keys";N;s:12:" * callbacks";N;}i:32;s:15:"',
    limit:  ";i:33;O:9:"Cotpl_var":3:{s:7:" * name";s:12:"UPLOAD_LIMIT";s:7:" * keys";N;s:12:" * callbacks";N;}i:34;s:14:",
    chunk:  ";i:35;O:9:"Cotpl_var":3:{s:7:" * name";s:12:"UPLOAD_CHUNK";s:7:" * keys";N;s:12:" * callbacks";N;}i:36;s:15:",
    param:  '";i:37;O:9:"Cotpl_var":3:{s:7:" * name";s:12:"UPLOAD_PARAM";s:7:" * keys";N;s:12:" * callbacks";N;}i:38;s:214:"'
};
</script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
<script src="js/cors/jquery.xdr-transport.js"></script>
<![endif]-->";}}}}}