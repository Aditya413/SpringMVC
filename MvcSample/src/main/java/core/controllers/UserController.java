package core.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import core.dao.UserDao;

import core.entities.UserDetailModel;

@Controller

public class UserController {
	
	@Autowired
	UserDao dao;
	
	@RequestMapping(value="/showUserPage")
	public String ShowUserPage(HttpServletRequest request,HttpServletResponse response){
		
		return "User";
	}
	
	@ResponseBody
	@RequestMapping(value="/showUserDetails",method=RequestMethod.GET)
	public List<UserDetailModel> getUserDetails(HttpServletRequest request,HttpServletResponse response){
		
		return dao.getUserData();
	}
	
	
	/*@ResponseBody
	@RequestMapping(value="/showUserandContact",method=RequestMethod.GET)
	public List<UserAndContactModel> getUserAndContact(HttpServletRequest request,HttpServletResponse response){
		
		return dao.getUserAndContact();
	}*/
}
