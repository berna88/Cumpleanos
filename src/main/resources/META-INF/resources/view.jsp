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

	
	
	
	<div class="cumple container-fluid mt-5">

  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-md-12 mb-4">

      <div class="container text-center my-3">
        <h2>Cumpleaños</h2>
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
                <div class=" col-sm-12 col-md-12 col-lg-3">
                 <div class="card mb-2">

            <img class="d-block img-fluid card-img-top"
                    src='<%= users23.getPortraitURL(themeDisplay23)%>'>
          <div class="card-body">
            <h4 class="card-title font-weight-bold"><%= users23.getFullName()%></h4>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
              card's content.</p>
            
          </div>
        </div>
                  
                </div>
              </div>
              
             <%} %>
            </div>
             
            <a class="carousel-control-prev" href="#recipeCarousel2" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#recipeCarousel2" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
            
          </div>
        </div>
       
      </div>

    </div>
    <!-- Grid column -->

  </div>
  <!-- Grid row -->
  
</div>
</div>
<style>

.carousel-inner.vv-3 .carousel-item.active,
.carousel-inner.vv-3 .carousel-item-next,
.carousel-inner.vv-3 .carousel-item-prev {
  display: flex;
}

.carousel-inner.vv-3 .carousel-item-right.active,
.carousel-inner.vv-3 .carousel-item-next {
  transform: translateX(7%);
}

.carousel-inner.vv-3 .carousel-item-left.active,
.carousel-inner.vv-3 .carousel-item-prev {
  transform: translateX(-7%);
}

.carousel-inner.vv-3 .carousel-item-right,
.carousel-inner.vv-3 .carousel-item-left {
  transform: translateX(0);
}
h4.card-title.font-weight-bold {
    color: black;
}
.cumple > .card > .card-text{
color:black;
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
	
	
	
	