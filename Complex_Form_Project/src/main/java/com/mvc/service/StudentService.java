
package com.mvc.service;

import java.util.List;

import com.mvc.entity.Student;

public interface StudentService {
	
	
	public void saveNewStudent(Student student);
	
	public List<Student> getAllStudentsData();
	
	public Student getStudentById(int id);
	
	public void deleteData(Student student);
	
	public void updateData(Student student);

}
