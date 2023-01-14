$('#setD input').click(function() {
	if (this.attr('checked', true)) {
		this.removeAttr("checked");
    }
});

var nil = null

var nume = nil
var prenume = nil
var varsta = nil
var nationalitate = nil
var gender = nil

window.addEventListener("message",function(event){
	if (event.data.toggled == true) {
		$(".main").fadeIn();
	}
})

function getFormData(){
	nume = document.getElementById("nume").value;
	prenume = document.getElementById("prenume").value;
	varsta = document.getElementById("varsta").value;
	nationalitate = document.getElementById("nationalitate").value;
	gender = $('#gender').val();
	if(nume!=nil && !$.isNumeric(nume) && !$.isNumeric(prenume) && !$.isNumeric(nationalitate) && prenume!=nil && varsta!=nil&& $.isNumeric(varsta) && varsta >=18 && varsta <=90 && nationalitate != nil){
		$.post('https://mm_login/action', JSON.stringify({
			action: "newchar",
			nume: nume,
			prenume: prenume,
			varsta: varsta,
			nationalitate: nationalitate,
			gender: gender,
		}));
		$(".main").fadeOut();
	}else{
		console.log("FALSE")
	}
	
}