<%@page import="com.liferay.portal.kernel.model.Image"%>
<%@page import="com.liferay.portal.kernel.service.ImageLocalServiceUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.liferay.portal.kernel.model.User"%>
<%@ include file="/init.jsp" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<style>
	.body-cumple {
		box-sizing: border-box;
	}

	.body-cumple {
		background: #333;
		height: 250px;
    	width: 100%;
    	display: block;
    	margin: auto;
	}

	.body-cumple > ul {
		position: relative;
		width: 100%;
    	height: 100%;
    	left: auto;
	}
 
	.body-cumple ul > li {
		width: 25%;
		list-style-type: none;
		position: absolute;
		top: 0;
		padding: 20px;
		height: 200px; 
		opacity: 0;
		padding-top: 40px;
		text-align: center;
		transition: 1s opacity; 
	}

	.active {
		opacity: 1;
	}
  
	.body-cumple p {
		font-family: sans-serif;
		font-size: 13px;
    	color: #646566;
		line-height: 1.5em;
	}

	 .body-cumple strong { 
    color: #fff;
    font-weight: 700;
		font-size: 60px; 
    line-height: 100px; 
	}
</style>
<div class="body-cumple">
<ul id="c"> 
		
		<li class="perfil"><p><strong>1</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>2</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>3</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>4</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>

		<li class="perfil"><p><strong>5</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>6</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>7</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>8</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li> 

		<li class="perfil"><p><strong>9</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>10</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>11</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li>
		<li class="perfil"><p><strong>12</strong></p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p></li> 

	</ul>
</div>	
<% List<User> users = (List<User>) request.getAttribute("Users"); 
for(User userst : users){
%>
<%long portraitId = userst.getPortraitId();
Image image = ImageLocalServiceUtil.getImage(portraitId);

%>

<% }%>	


	
	<script>
	var timer = 4000;

	var i = 0;
	var max = $('.body-cumple > #c > li').length;
	console.log(max);
	 
		$(".body-cumple #c > li").eq(i).addClass('active').css('left','0');
		$(".body-cumple #c > li").eq(i + 1).addClass('active').css('left','25%');
		$(".body-cumple #c > li").eq(i + 2).addClass('active').css('left','50%');
		$(".body-cumple #c > li").eq(i + 3).addClass('active').css('left','75%');
	 

		setInterval(function(){ 

			$(".body-cumple #c > li").removeClass('active');

			$(".body-cumple #c > li").eq(i).css('transition-delay','0.25s');
			$(".body-cumple #c > li").eq(i + 1).css('transition-delay','0.5s');
			$(".body-cumple #c > li").eq(i + 2).css('transition-delay','0.75s');
			$(".body-cumple #c > li").eq(i + 3).css('transition-delay','1s');

			if (i < max-4) {
				i = i+4; 
			}

			else { 
				i = 0; 
			}  

			$(".body-cumple #c > li").eq(i).css('left','0').addClass('active').css('transition-delay','1.25s');
			$(".body-cumple #c > li").eq(i + 1).css('left','25%').addClass('active').css('transition-delay','1.5s');
			$(".body-cumple #c > li").eq(i + 2).css('left','50%').addClass('active').css('transition-delay','1.75s');
			$(".body-cumple #c > li").eq(i + 3).css('left','75%').addClass('active').css('transition-delay','2s');
		
		}, timer);
	 
	
	</script>