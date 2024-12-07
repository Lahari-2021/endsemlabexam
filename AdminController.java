package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.EmployeeService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		
		long count=adminService.empcount();
		mv.addObject("count",count);
		
		return mv;
	}
	
	
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("viewallemps")
	  public ModelAndView viewallemps() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Employee> emplist = adminService.ViewAllEmployees();
	    mv.setViewName("viewallemps");
	    mv.addObject("emplist", emplist);
	    return mv;
	  }
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname =request.getParameter("auname");
		String apwd =request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null) 
		{
			
			mv.setViewName("adminhome");
			long count=adminService.empcount();
			mv.addObject("count",count);
			
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message","LoginFailed");
		}
		return mv;
		
	}
	
	@GetMapping("deleteemp")
	  public ModelAndView deleteemp() 
	  {
	    ModelAndView mv = new ModelAndView();
	    List<Employee> emplist = adminService.ViewAllEmployees();
	    mv.setViewName("deleteemp");
	    mv.addObject("emplist", emplist);
	    return mv;
	  }
	@GetMapping("delete")
	public String delete(@RequestParam("id") int eid)
	{
		adminService.deleteemp(eid);
		return "redirect:/deleteemp";
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout() 
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	

}
