/* CKEditor toolbar sets for Cotonti */

CKEDITOR.editorConfig = function( config )
{
	config.toolbar = 'Full';
	config.extraPlugins = 'more,oembed,syntaxhighlight,codemirror,spoiler';

	config.allowedContent = true; // disable ACF

	config.toolbar_Full =
		[
			['Source'],
			['Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
			['Undo','Redo','-','Find','Replace','-','SelectAll','RemoveFormat'],
			['Image','oembed','Table','HorizontalRule','Smiley','SpecialChar','PageBreak'],
			['Maximize', 'ShowBlocks','-','About'],
			'/',
			['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
			['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
			['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			['Link','Unlink','Anchor','More','Syntaxhighlight'],
			['Styles','Format'],
			['TextColor','BGColor']
		];

	config.toolbar_Medium = [
		['Bold','Italic','TextColor'],
		['NumberedList','Spoiler'],
		['Image','oembed','Link'],
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
		['Undo','Redo'],

	];

	config.toolbar_Basic =
		[
			['Bold', 'Italic','NumberedList', 'BulletedList', 'Link', 'Unlink']
		];

config.filebrowserUploadUrl = 'http://freecer.net/plugins/ckeditor/lib/plugins/imgupload.php';};
