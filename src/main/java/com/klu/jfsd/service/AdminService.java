package com.klu.jfsd.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.klu.jfsd.model.Admin;
import com.klu.jfsd.model.Student;

public interface AdminService {
	public List<Student> viewAllStudents();
	public Admin checkAdminLogin(String uname, String pwd);
	public long studentcount();
	public String deleteStudent(int id);
	public Student displayStudentById(int id);
	String uploadFile(MultipartFile file);
	

}
