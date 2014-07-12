jQuery ->
	editor = ace.edit("editor");  



	$ -> 
		$("#submit").click ->
			$("#extract-code").val(editor.getValue())
