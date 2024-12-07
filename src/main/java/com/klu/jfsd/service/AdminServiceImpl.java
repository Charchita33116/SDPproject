package com.klu.jfsd.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klu.jfsd.model.Admin;
import com.klu.jfsd.model.FileEntity;
import com.klu.jfsd.model.Student;
import com.klu.jfsd.repository.AdminRepository;
import com.klu.jfsd.repository.FileRepository;
import com.klu.jfsd.repository.StudentRepository;

@Service

public class AdminServiceImpl implements AdminService{
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private AdminRepository adminRepository;
	@Autowired
	private FileRepository fileRepository;

	@Override
	public List<Student> viewAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Admin checkAdminLogin(String uname, String pwd) {
		return adminRepository.checkAdminLogin(uname, pwd);
		
	}

	@Override
	public long studentcount() {
		return studentRepository.count();
		}

	@Override
	public String deleteStudent(int id) {
		studentRepository.deleteById(id);
		return "Student deleted Successfully";
	}

	@Override
	public Student displayStudentById(int id) {
		return studentRepository.findById(id).get();
	}

	 @Override
	    public String uploadFile(MultipartFile file) {
	        try {
	            // Create a FileEntity object to store the file details
	            FileEntity fileEntity = new FileEntity();
	            fileEntity.setName(file.getOriginalFilename());
	            fileEntity.setType(file.getContentType());
	            fileEntity.setData(file.getBytes());

	            // Save the file entity to the database
	            fileRepository.save(fileEntity);

	            return "File uploaded successfully: " + file.getOriginalFilename();
	        } catch (IOException e) {
	            // Handle the exception and throw a runtime error
	            throw new RuntimeException("Error storing file: " + e.getMessage());
	        }
	    }
	

}
