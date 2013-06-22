LUKEC_JS=js/luk.ec.js
TOOLS=setup.sh .htaccess env
RESOURCES=index.html css img js $(TOOLS)
JS=$(wildcard js/*)
all: javascript

javascript: $(JS)
	cat js/jquery.min.js  		>  $(LUKEC_JS)
	cat js/bootstrap.js  		>> $(LUKEC_JS)
	cat js/bootstrap-tooltip.js  	>> $(LUKEC_JS)
	cat js/app.js  			>> $(LUKEC_JS)

live: $(RESOURCES) javascript
	rsync -avz $(RESOURCES) td:web/lukec
