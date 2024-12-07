package com.klu.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Admin;
import com.klu.jfsd.model.Student;
import com.klu.jfsd.service.AdminService;
import com.klu.jfsd.service.CourseService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CourseService courseService;
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkAdminLogin(auname, apwd);
		if(admin!=null) {
			mv.setViewName("adminhome");
			long count = adminService.studentcount();
			mv.addObject("count", count);
		}else {
			mv.setViewName("adminloginfail");
			mv.addObject("message","Login Failed");
		}
		return mv;
		
	}
	@GetMapping("viewallstudents")
	public ModelAndView viewallstudents() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallstudents");
		long count = adminService.studentcount();
		mv.addObject("count", count);
		List<Student> students= adminService.viewAllStudents();
		mv.addObject("studentlist", students);
		return mv;
	}
	@GetMapping("deletestudent")
	public ModelAndView deletestudent() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deletestudent");
		List<Student> students= adminService.viewAllStudents();
		mv.addObject("studentlist", students);
		return mv;
	}
	@GetMapping("delete")
	public String delete(@RequestParam int id) {
		adminService.deleteStudent(id);
		return "redirect:/deletestudent";
		
	}
	@GetMapping("viewstudentbyid")
	public ModelAndView viewstudentbyid() {
		ModelAndView mv = new ModelAndView();
		
		List<Student> students= adminService.viewAllStudents();
		mv.addObject("studentlist", students);
		
		mv.setViewName("viewstudentbyid");
		return mv;
	}
	@PostMapping("displaystudent")
	public ModelAndView displaystudent(HttpServletRequest request) 
	{
		int id = Integer.parseInt(request.getParameter("id"));
		Student student = adminService.displayStudentById(id);
		ModelAndView mv = new ModelAndView("displaystudent");
		mv.addObject("s", student);
		return mv;
	}
	@GetMapping("courses")
    public ModelAndView courseManagement() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("courses");  // This should match the name of your JSP file
        return mv;
    }
	 @GetMapping("uploadfile")
	    public String showUploadForm() {
	        return "uploadfile"; // Ensure this matches the name of your view (e.g., a JSP or HTML page)
	    }

	    @PostMapping("uploadfile")
	    public String uploadFile(@RequestParam("file") MultipartFile file) {
	        String message = adminService.uploadFile(file);
	        return "fileUploadSuccess"; // Return a view name to show success or an appropriate response
	    }



}