LUKEC_JS=js/luk.ec.js
TOOLS=setup.sh .htaccess env
RESOURCES=index.html spill-test.html css img js $(TOOLS)
JS=$(wildcard js/*)
JQUERY_URL=https://code.jquery.com/jquery-2.2.4.min.js
JQUERY=js/jquery.min.js
all: javascript

javascript: $(JS)
	cat js/app.js  			 > $(LUKEC_JS)

live: $(RESOURCES) javascript
	rsync -avz $(RESOURCES) dev:/var/www/luk.ec
