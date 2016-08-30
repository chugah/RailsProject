
function toggleDiv(divId) {
   $("#"+divId).fadeToggle("slow", "linear");
}

/*
function toggleAllDiv (divId) {
	if ($("#"+divId).is(':hidden')) {
		$(("#"+divId)).show();
	}
	else if ($(("#"+divId)).is(':visible')) {
		$(("#"+divId)).hide();
	}
	else
		return 0;
}
*/		