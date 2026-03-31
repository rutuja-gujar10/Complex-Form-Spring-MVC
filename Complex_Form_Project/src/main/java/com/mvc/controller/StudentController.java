
package com.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mvc.entity.Student;
import com.mvc.exception.InvalideDataCredentialException;
import com.mvc.service.StudentService;
 
@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;



    // Home page
    @RequestMapping({"/", "/index"})
    public String getIndexPage() {
        return "index";
    }



    // Add form
    @RequestMapping("/addStudent")
    public String getAddStudentForm() {
        return "addStudent";
    }



    // Save student
    @RequestMapping(path = "/addSuccess", method = RequestMethod.POST)
    public String addStudentSuccess(@ModelAttribute Student student, Model model) {

        if (student == null) {
            throw new InvalideDataCredentialException("Student data is null");
        }

        studentService.saveNewStudent(student);

        List<Student> listOfStudent = studentService.getAllStudentsData();

        model.addAttribute("listOfStudent", listOfStudent);

        return "display";
    }



    // Display all students
    @RequestMapping("/display")
    public String getAllData(Model model) {

        List<Student> listOfStudent = studentService.getAllStudentsData();

        if (listOfStudent == null) {
            throw new InvalideDataCredentialException("No student data found");
        }

        model.addAttribute("listOfStudent", listOfStudent);

        return "display";
    }



    // Delete student
    @RequestMapping("/delete/{id}")
    public String deleteDataById(@PathVariable int id, Model model) {

        Student student = studentService.getStudentById(id);

        if (student == null) {
            throw new InvalideDataCredentialException("Student not found with id: " + id);
        }

        studentService.deleteData(student);

        List<Student> listOfStudent = studentService.getAllStudentsData();

        model.addAttribute("listOfStudent", listOfStudent);

        return "display";
    }



    // Open update form
    @RequestMapping("/update/{id}")
    public String updateDataById(@PathVariable int id, Model model) {

        Student s = studentService.getStudentById(id);

        if (s == null) {
            throw new InvalideDataCredentialException("Student not found with id: " + id);
        }

        model.addAttribute("s", s);

        return "updateForm";
    }



    // Update student
    @RequestMapping(path = "/updateSuccess", method = RequestMethod.POST)
    public String updateSuccess(@ModelAttribute Student student, Model model) {

        if (student == null) {
            throw new InvalideDataCredentialException("Update failed. Student is null");
        }

        studentService.updateData(student);

        List<Student> listOfStudent = studentService.getAllStudentsData();

        model.addAttribute("listOfStudent", listOfStudent);

        return "display";
    }

}
