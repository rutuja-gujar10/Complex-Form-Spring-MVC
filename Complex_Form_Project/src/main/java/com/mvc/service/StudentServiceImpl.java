package com.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.entity.Student;
import com.mvc.repository.StudentRepository;
import com.mvc.exception.InvalideDataCredentialException;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;

	@Override
	public void saveNewStudent(Student student) {

		if (student == null) {
			throw new InvalideDataCredentialException("Student data is null");
		}

		studentRepository.saveNewStudent(student);
	}

	@Override
	public List<Student> getAllStudentsData() {

		List<Student> list = studentRepository.getAllStudentsData();

		if (list == null || list.isEmpty()) {
			throw new InvalideDataCredentialException("No student data found");
		}

		return list;
	}

	@Override
	public Student getStudentById(int id) {

		Student student = studentRepository.getById(id);

		if (student == null) {
			throw new InvalideDataCredentialException("Student not found with id: " + id);
		}

		return student;
	}

	@Override
	public void deleteData(Student student) {

		if (student == null) {
			throw new InvalideDataCredentialException("Cannot delete. Student is null");
		}

		studentRepository.deleteData(student);
	}

	@Override
	public void updateData(Student student) {

		if (student == null) {
			throw new InvalideDataCredentialException("Cannot update. Student is null");
		}

		studentRepository.updateData(student);
	}

}