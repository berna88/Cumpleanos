var today = new Date();
var dia = String(today.getDate()).padStart(2, '0');
var mm = String(today.getMonth() + 1).padStart(2, '0');
var ano = today.getFullYear();

var mes = getMes(mm);

today =  dia + ' - ' + mes ;
document.getElementById('fecha').innerHTML = today;
function getMes(mes){
	switch (mes) {
	case "01": 
		return "Enero";
	break;
	case "02": 
		return "Febrero";
	break;
	case "03": 
		return "Marzo";
	break;
	case "04": 
		return "Abril";
	break;
	case "05": 
		return "Mayo";
	break;
	case "06": 
		return "Junio";
	break;
	case "07": 
		return "Julio";
	break;
	case "08": 
		return "Agosto";
	break;
	case "09": 
		return "Septiembre";
	break;
	case "10": 
		return "Octubre";
	break;
	case "11": 
		return "Noviembre";
	break;
	case "12": 
		return "Diciembre";
	break;
}
}