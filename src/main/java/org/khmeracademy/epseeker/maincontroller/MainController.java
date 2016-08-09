package org.khmeracademy.epseeker.maincontroller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value={"/","/index"})
	public String index()
	{
		return "index";
	}
	@RequestMapping(value="/about")
	public String about()
	{
		return "about";
	}
	@RequestMapping(value="/contact")
	public String contact()
	{
		return "contact";
	}
	
	@RequestMapping(value="/login")
	public String lgoin()
	{
		return "login";
	}
	@RequestMapping(value="/signup")
	public String register()
	{
		return "signup";
	}
	@RequestMapping(value="/search")
	public String search()
	{
		return "search";
	}
	
	
	@RequestMapping(value="/rest/expert/content")
	public String expertContent(){
		return "expert/detail";
	}
	
	
	
	
	@RequestMapping(value="/rest/admin/dashboard")
	public String admin()
	{
		return "admin/index";
	}
	
	@RequestMapping(value="/rest/admin/expert/add")
	public String addExpert()
	{
		return "admin/expert/add/add-expert";
	}
	
	@RequestMapping(value="/rest/admin/expert/view")
	public String viewExpert()
	{
		return "admin/expert/view/view-expert";
	}
}
