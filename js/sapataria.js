
$(document).ready( function() {
	$("#btn_calcular").click(function () {
		var rpm = $("#RPM").val();

		alert("O valor do RPM: " + rpm);
		
		$("#resposta").val(rpm);
		
		event.preventDefault();
	});
});

/*mt=71620*(N/rpm) formula
	mt resposta em kgf e 1 Kgf = 9.8 N
	N = potencia pode ser em 1 cv=735 Watts ou 1 hp=746watts então -> cv = 0,9863 hp = 735,5 W	*/