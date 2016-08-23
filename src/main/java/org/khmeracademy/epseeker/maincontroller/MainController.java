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
	
	
	@RequestMapping(value="/detail")
	public String expertContent(){
		return "expert/detail";
	}
	/*Access-denied page*/
	@RequestMapping(value="/access-denied")
	public String accessDenied(){
		return "error/access-denied";
	}
	//Admin
	
	
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
	
	@RequestMapping(value="/rest/admin/university/view")
	public String viewUniversity(){
		return "admin/university/view/view-university";
	}
	
	@RequestMapping(value="/rest/admin/major/view")
	public String viewMajor(){
		return "admin/major/view/view-major";
	}
	
	@RequestMapping(value="/rest/admin/mainskill/view")
	public String viewMainSkill(){
		return "admin/mainSkill/view/view-main-skill";
	}
	
	@RequestMapping(value="/rest/admin/skill/view")
	public String viewSkill(){
		return "admin/skill/view/view-skill";
	}

	@RequestMapping(value="/rest/admin/language/view")
	public String viewLanguage(){
		return "admin/language/view-language";
	}
	
	@RequestMapping(value="/rest/expert/content")
	public String viewExpertDetail(){
		return "expert/detail";
	}
	
}

