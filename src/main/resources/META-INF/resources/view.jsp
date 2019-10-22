<%@page import="com.liferay.portal.kernel.util.WebKeys"%>
<%@page import="com.liferay.portal.kernel.theme.ThemeDisplay"%>
<%@page import="com.liferay.portal.kernel.model.Image"%>
<%@page import="com.liferay.portal.kernel.service.ImageLocalServiceUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.liferay.portal.kernel.model.User"%>
<%@ include file="/init.jsp" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


		<%ThemeDisplay themeDisplay23 =(ThemeDisplay) request.getAttribute(WebKeys.THEME_DISPLAY); 
List<User> users = (List<User>) request.getAttribute("Users");
%>

	
	
	
	<div class="cumple container-fluid">

  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-md-12 mb-4">

      <div class="container text-center my-3" style="
    margin-top: 15%!important;
">
      <h2 class="titulon1 text-center mb-50">Cumpleañeros</h2>
       
        <h3 class="texto-amarillo" id="fecha"></h3>
        <div class="row mx-auto my-auto">
          <div id="recipeCarousel2" class="carousel slide w-100 " data-ride="carousel">
            <div class="carousel-inner w-100 vv-3" role="listbox">
            <% int us=1; %>
            <%for(User users23:users ){ %>
              <% if (us++ <= 1) {%>
             <!--   <%=us++ %>-->
              <div class="carousel-item active">
              <% }else{%>
              <div class="carousel-item ">
               <!--<%=us++ %>-->
              <%} %>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                 <div class="card mb-2">

            <img class="d-block img-fluid card-img-top"
                    src='<%= users23.getPortraitURL(themeDisplay23)%>'>
          <div class="card-body">
            <h4 class="card-title font-weight-bold"><%= users23.getFullName()%></h4>
           <p class="card-text"><span style="font-weight: 700;">Departamento: </span><%= users23.getExpandoBridge().getAttribute("Departamento")%> </p>
             <div><i class="fas fa-map-marker-alt"></i> <%= users23.getExpandoBridge().getAttribute("LocalidadesAdmin")%> </div>
          </div>
        </div>
                  
                </div>
              </div>
              
             <%} %>
            
           
          </div><!-- carousel-inner w-100  -->
        </div><!-- recipeCarousel2 -->
       
      </div><!-- row mx-auto my-auto -->

    </div> <!-- container text-center my-3-->

  </div> <!-- Grid column -->

  
</div><!-- Grid row -->
</div><!-- cumple container-fluid -->
<style>
i.fas.fa-map-marker-alt {
    color: #CCB874;
}
.carousel-inner.vv-3 .carousel-item.active,
.carousel-inner.vv-3 .carousel-item-next,
.carousel-inner.vv-3 .carousel-item-prev {
  display: flex;
}

.carousel-inner.vv-3 .carousel-item-right.active,
.carousel-inner.vv-3 .carousel-item-next {
  transform: translateX(17%);
  opacity:0;
}

.carousel-inner.vv-3 .carousel-item-left.active,
.carousel-inner.vv-3 .carousel-item-prev {
  transform: translateX(-17%);
}

.carousel-inner.vv-3 .carousel-item-right,
.carousel-inner.vv-3 .carousel-item-left {
  transform: translateX(0);
}
h4.card-title.font-weight-bold {
    color: white;
}
.cumple > .card > .card-text{
color:black;
}

img.d-block.img-fluid.card-img-top {
    border-radius: 50%;
}
.card {
    background-color: transparent;
    border:none;
    }
    h4.card-title.font-weight-bold {
    color: white;
}
.cumple.container-fluid {
background-image: url("http://www.cuervo.consistent.com.mx:8080/documents/66428/66438/fondo-cumplecuervo.png/18b657db-18a8-39f5-794e-75686fa6fde4?t=1571509059573");
background-repeat: no-repeat;
background-size: cover;
}
    
</style>
	
	<script>
	$('.carousel .carousel-item').each(function () {
		  var next = $(this).next();
		  if (!next.length) {
		    next = $(this).siblings(':first');
		  }
		  next.children(':first-child').clone().appendTo($(this));

		  for (var i = 0; i < 4; i++) {
		    next = next.next();
		    if (!next.length) {
		      next = $(this).siblings(':first');
		      console.log(next);
		    }

		    next.children(':first-child').clone().appendTo($(this));
		  }
		});
	</script>
	<script>
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
</script>
	
	
	
	