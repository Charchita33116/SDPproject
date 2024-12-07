package com.klu.jfsd.service;

import java.util.List;

import com.klu.jfsd.model.Student;

public interface StudentService {
    String StudentRegistration(Student student);
    Student checkStudentLogin(String email, String password);
    List<Student> getAllStudents();
    String updateStudent(Student student);

}