$(window).on("hashchange", function(){
	if(location.hash.slice(1)=="registrar"){
		$(".card").addClass("extend");
		$("#ingresar").removeClass("seleccionado");
		$("#registrar").addClass("seleccionado");
	} else {
		$(".card").removeClass("extend");
		$("#ingresar").addClass("seleccionado");
		$("#registrar").removeClass("seleccionado");
	}
});
$(window).trigger("hashchange");

