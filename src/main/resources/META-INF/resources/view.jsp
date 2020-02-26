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

	
	
	
	<div class="cumple container-fluid" style="background-image: url('<%=request.getContextPath()+"/img/fondo-cumplecuervo.png"%>');">

  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-md-12 mb-4">

      <div class="container text-center my-3" style="
    margin-top: 6%!important;
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
               <!--<%=us++ %>-->
              <div class="carousel-item ">
              
              <%} %>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-3">
                 <div class="card mb-2">

            <img class="d-block img-fluid card-img-top"
                    src='<%= users23.getPortraitURL(themeDisplay23)%>'>
          <div class="card-body">
            <h4 class="card-title font-weight-bold"><%= users23.getFirstName()%></h4>
            <h4 class="card-title font-weight-bold"><%= users23.getLastName()%></h4>
            
           <p class="card-text"><span style="font-weight: 700;">Departamento: </span><%= users23.getExpandoBridge().getAttribute("Desc_Depto")%> </p>
            <%if (users23.getExpandoBridge().getAttribute("Tienda_localidad").equals("SFE")){ %>
             <div><i class="fas fa-map-marker-alt"></i> Santa Fe México </div>
              <% }else if (users23.getExpandoBridge().getAttribute("Tienda_localidad").equals("CMX")){%>
             
                <div><i class="fas fa-map-marker-alt"></i> CeDis México </div>
                <% }else if (users23.getExpandoBridge().getAttribute("Tienda_localidad").equals("EDI")){%>
             
                <div><i class="fas fa-map-marker-alt"></i> Edisa</div>
                 <% }else if (users23.getExpandoBridge().getAttribute("Tienda_localidad").equals("AGR")){%>
             
                <div><i class="fas fa-map-marker-alt"></i> Agricola</div>
                  <% }else if (users23.getExpandoBridge().getAttribute("Tienda_localidad").equals("CAM")){%>
             
                <div><i class="fas fa-map-marker-alt"></i> Camichines</div>
                <% }else if (users23.getExpandoBridge().getAttribute("Tienda_localidad").equals("ROJ")){%>
             
                <div><i class="fas fa-map-marker-alt"></i> Rojeña</div>
                   <% }else if (users23.getExpandoBridge().getAttribute("Tienda_localidad").equals("CGL")){%>
             
                <div><i class="fas fa-map-marker-alt"></i> Cedis GDL</div>
              <%}else{ %>
               <div><i class="fas fa-map-marker-alt"></i> <%= users23.getExpandoBridge().getAttribute("Tienda_localidad")%> </div>
              <%} %>
          </div>
        </div>
                  
                </div>
              </div>
              
             <%} %>
            
           
          </div><!-- carousel-inner w-100  -->
          
           <a class="carousel-control-prev" href="#recipeCarousel2" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#recipeCarousel2" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          
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
     font-size: 1.4rem;
}

.titulon1.text-center.mb-50 {
    margin-bottom: 20px !important;
    font-size: 50px;
}
#fecha {

    font-weight: 600;
    margin-bottom: 5%;
    text-shadow: 2px 2px 2px black;

}

img.d-block.img-fluid.card-img-top {
    border-radius: 50%;
    box-shadow: 2px 2px 6px 2px black;
   
}
.cumple.container-fluid {

   /* background-image: url("http://www.cuervo.consistent.com.mx:8080/documents/66428/66438/fondo-cumplecuervo.png/18b657db-18a8-39f5-794e-75686fa6fde4?t=1571509059573");
    */
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;

}
.carousel-control-prev, .carousel-control-next {
    position: absolute;
    top: 0;
    bottom: 0;
    z-index: 1;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 3%!important;
    color: #FFF;
    text-align: center;
    opacity: 1.5;
    transition: opacity 0.15s ease;
}

@media screen and (max-width: 414px) {
 .titulon1 {

    font-size: 45px!important;
   
    }
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
		      break;
		      
		    }

		    next.children(':first-child').clone().appendTo($(this));
		   
		    
		  }
		});
	</script>
	<script src='<%=request.getContextPath()+"/js/cumple.js" %>'></script>
	
	
	
	
	