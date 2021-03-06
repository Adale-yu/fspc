<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>quill.js-强大的现代富文本编辑器插件|DEMO_jQuery之家-自由分享jQuery、html5、css3的插件库</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css">
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.6.0/katex.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.3.0/styles/monokai-sublime.min.css"/>
	<link href="css/themes/quill.snow.css" rel="stylesheet">
	<style type="text/css">
		#editor-container {
		  height: 500px;
		}
	</style>
	<!--[if IE]>
		<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="htmleaf-container">
		<div class="container">
			<div class="row">
				<div class="col-md-12 mt50">
					<div id="standalone-container">
					<div id="toolbar-container">
					<span class="ql-formats">
					<select class="ql-font"></select>
					<select class="ql-size"></select>
					</span>
					<span class="ql-formats">
					<button class="ql-bold"></button>
					<button class="ql-italic"></button>
					<button class="ql-underline"></button>
					<button class="ql-strike"></button>
					</span>
					<span class="ql-formats">
					<select class="ql-color"></select>
					<select class="ql-background"></select>
					</span>
					<span class="ql-formats">
					<button class="ql-script" value="sub"></button>
					<button class="ql-script" value="super"></button>
					</span>
					<span class="ql-formats">
					<button class="ql-header" value="1"></button>
					<button class="ql-header" value="2"></button>
					<button class="ql-blockquote"></button>
					<button class="ql-code-block"></button>
					</span>
					<span class="ql-formats">
					<button class="ql-list" value="ordered"></button>
					<button class="ql-list" value="bullet"></button>
					<button class="ql-indent" value="-1"></button>
					<button class="ql-indent" value="+1"></button>
					</span>
					<span class="ql-formats">
					<button class="ql-direction" value="rtl"></button>
					<select class="ql-align"></select>
					</span>
					<span class="ql-formats">
					<button class="ql-link"></button>
					<button class="ql-image"></button>
					<button class="ql-video"></button>
					<button class="ql-formula"></button>
					</span>
					<span class="ql-formats">
					<button class="ql-clean"></button>
					</span>
					</div>
					<div id="editor-container"></div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/KaTeX/0.6.0/katex.min.js"></script>
	<script  src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.3.0/highlight.min.js"></script>
	<script src="resources/inputText/dist/quill.js"></script>
	<!-- Initialize Quill editor -->
	<script>
		var quill = new Quill('#editor-container', {
		    modules: {
		      formula: true,
		      syntax: true,
		      toolbar: '#toolbar-container'
		    },
		    placeholder: 'Compose an epic...',
		    theme: 'snow'
		  });
	</script>
</body>
</html>
	
	