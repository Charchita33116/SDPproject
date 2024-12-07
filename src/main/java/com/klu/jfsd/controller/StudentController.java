package com.klu.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.jfsd.model.Student;
import com.klu.jfsd.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	@GetMapping("studentreg")
	public ModelAndView studentreg() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentreg");
		return mv;
	}
	@GetMapping("studenthome")
	public ModelAndView studenthome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studenthome");
		return mv;
	}
	@GetMapping("studentprofile")
	public ModelAndView studenprofile() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentprofile");
		return mv;
	}
	@PostMapping("/insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request) {
		String name=request.getParameter("sname");
		String gender = request.getParameter("sgender");
		String dob = request.getParameter("sdob");
		String email=request.getParameter("semail");
		String contact = request.getParameter("scontact");
		String password = request.getParameter("spwd");
		
		Student student = new Student();
		student.setName(name);
		student.setGender(gender);
		student.setDateofbirth(dob);
		student.setEmail(email);
		student.setContactno(contact);
		student.setPassword(password);
		
		String message = studentService.StudentRegistration(student);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("regsuccess");
		mv.addObject("message", message);
		return mv;
	}
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	 @GetMapping("viewstudents")
	    public ModelAndView viewAllStudents() {
	        List<Student> students = studentService.getAllStudents();
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("viewallstudents");
	        mv.addObject("studentlist", students);
	        return mv;
	    }

	 @PostMapping("checkstudentlogin")
	 public ModelAndView checkstudentlogin(HttpServletRequest request) {
	     ModelAndView mv = new ModelAndView();

	     // Retrieve form inputs
	     String semail = request.getParameter("semail");
	     String spwd = request.getParameter("spwd");
	     String userCaptcha = request.getParameter("captcha");

	     // Retrieve CAPTCHA from session
	     String sessionCaptcha = (String) request.getSession().getAttribute("captcha");

	     // Check student login
	     Student student = studentService.checkStudentLogin(semail, spwd);

	     // Validate student and CAPTCHA
	     if (student != null && sessionCaptcha != null && sessionCaptcha.equalsIgnoreCase(userCaptcha)) {
	         // Login and CAPTCHA validation successful
	         HttpSession session = request.getSession();
	         session.setAttribute("student", student);
	         mv.setViewName("studenthome");
	     } else {
	         // Either login failed or CAPTCHA mismatch
	         mv.setViewName("studentlogin");
	         mv.addObject("message", "Login Failed: Invalid credentials or CAPTCHA mismatch.");
	     }
	     return mv;
	 }


		@GetMapping("updateprofile")
		public  ModelAndView updateprofile() {
			ModelAndView mv = new ModelAndView("updateprofile");
			return mv;
		}
		
		@PostMapping("update")
		public ModelAndView update(HttpServletRequest request) {
			ModelAndView mv = new ModelAndView(" ");
			int id = Integer.parseInt(request.getParameter("sid"));
			String name=request.getParameter("sname");
			String gender = request.getParameter("sgender");
			String dob = request.getParameter("sdob");
			String contact = request.getParameter("scontact");
			String password = request.getParameter("spwd");
			
			Student student = new Student();
			student.setId(id);
			student.setName(name);
			student.setGender(gender);
			student.setDateofbirth(dob);
			student.setContactno(contact);
			student.setPassword(password);
			
			studentService.updateStudent(student);
			
			 //create new session variable for customer
			mv.setViewName("studentlogin");
			
			return mv;
		}
		@GetMapping("studentlogout")
		public ModelAndView studentlogout() {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("studentlogin");
			return mv;
		}


}
