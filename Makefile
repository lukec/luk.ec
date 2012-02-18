LUKEC_JS=js/luk.ec.js
all:
	cat js/jquery.min.js  		>  $(LUKEC_JS)
	cat js/bootstrap.js  		>> $(LUKEC_JS)
	cat js/bootstrap-tooltip.js  	>> $(LUKEC_JS)
	cat js/app.js  			>> $(LUKEC_JS)
