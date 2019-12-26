package com.consistent.cumpleanos.portlet;

import com.consistent.cumpleanos.constants.CumpleanosPortletKeys;
import com.consistent.cumpleanos.models.Cumpleanos;
import com.liferay.portal.kernel.dao.orm.QueryUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.model.Image;
import com.liferay.portal.kernel.model.User;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.service.ImageLocalServiceUtil;
import com.liferay.portal.kernel.service.UserLocalServiceUtil;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import org.osgi.service.component.annotations.Component;


/**
 * @author bernardohernadez
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=root//Cuervo//Intranet",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + CumpleanosPortletKeys.Cumpleanos,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class CumpleanosPortlet extends MVCPortlet {
	private static final Log log = LogFactoryUtil.getLog(CumpleanosPortlet.class);
	
	@Override
	public void render(RenderRequest renderRequest, RenderResponse renderResponse)
			throws IOException, PortletException {
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		List<User> usersFilter = new ArrayList<User>();
		List<User> users = UserLocalServiceUtil.getUsers(QueryUtil.ALL_POS, QueryUtil.ALL_POS);
		Cumpleanos cumpleanos;
		  for(User user: users) { 
				  try {
					 if(!user.isDefaultUser()) {
						 if(!user.getFullName().contains("Test")) {
							 
							 //Date fechaUser = user.getBirthday(); 
							 String fecha = (String) user.getExpandoBridge().getAttribute("Birthday");
							 if (!fecha.isEmpty()) {
							// log.info(fecha);
							 Date fechaUser=new SimpleDateFormat("yyyy-MM-dd").parse(fecha);
							  String todayAsString = df.format(fechaUser);
							  cumpleanos = new Cumpleanos(todayAsString, "America/Montreal", "yyyy-MM-dd");
							  if(cumpleanos.isBirthday()) {
								  try {
									  usersFilter.add(user);
									  long po = user.getPortraitId();
									  Image image = ImageLocalServiceUtil.getImage(po);
									//  log.info(image);
								} catch (Exception e) {
									// TODO: handle exception
									log.error(e.getCause());
								}
								  
							  }
							 }  
							  
						 }
					 }
			      
			  	  }catch (ParseException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} 
		  }
		  renderRequest.setAttribute("Users", usersFilter);
		 
		super.render(renderRequest, renderResponse);
	}
}