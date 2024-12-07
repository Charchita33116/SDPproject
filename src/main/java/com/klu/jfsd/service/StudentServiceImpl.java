package com.klu.jfsd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.jfsd.model.Student;
import com.klu.jfsd.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentRepository studentRepository;
    

    @Override
    public String StudentRegistration(Student student) {
        studentRepository.save(student);
        return "Student Registered Successfully";
    }

    @Override
    public Student checkStudentLogin(String email, String password) {
        return studentRepository.checkStudentLogin(email, password);
    }

    @Override
    public List<Student> getAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public String updateStudent(Student student) {
        Optional<Student> existingStudentOpt = studentRepository.findById(student.getId());
        if (existingStudentOpt.isPresent()) {
            Student existingStudent = existingStudentOpt.get();
            existingStudent.setContactno(student.getContactno());
            existingStudent.setDateofbirth(student.getDateofbirth());
            existingStudent.setGender(student.getGender());
            existingStudent.setName(student.getName());
            existingStudent.setPassword(student.getPassword());

            studentRepository.save(existingStudent);
            return "Student updated Successfully!";
        } else {
            return "Student not found!";
        }
    }

}
