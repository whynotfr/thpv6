 //Gestion du process d'inscritpion.
jQuery(document).ready(function(){
//première partie avec acceptation CGV
$("#bouton-cgv").click(function(){
    $("#inscription-initial").fadeOut("slow");
    	$("#bouton-cgv").fadeOut("slow");
        	$("#paiement").css("display", "block");
            	$(window).scrollTop(0);
});
//c'est redirigé vers create.htl.erb
});