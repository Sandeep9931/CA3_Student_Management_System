package com.controllers.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.controllers.dao.StudentDao;
import com.controllers.model.Student;

@Controller
public class MainController {
	
	@Autowired
	private StudentDao studentDao;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/addstudent")
	public String addStudent(Model m) {
		m.addAttribute("title", "Add Student");
		return "addStudent";
	}
	
	@RequestMapping(value="/students", method=RequestMethod.POST)
	public RedirectView studentadded(@ModelAttribute Student student, HttpServletRequest request) {
		
		System.out.println(student);
		studentDao.createStudent(student);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	
	@RequestMapping(value="/students", method=RequestMethod.GET)
	public String getStudents(Model model) {
	
		List<Student> students = studentDao.getStudents();
		
		model.addAttribute("students", students);
		
		return "students/students";
		
	}
	

	@RequestMapping(value="update/{id}")
	public String updateStudent(@PathVariable ("id") int id, Model model ) {
		
		Student student=this.studentDao.getStudent(id);
		model.addAttribute("student", student);
		
		return "students/editStudent";
	}
	

	@RequestMapping(value="remove/{id}")
	public RedirectView removeStudent(@PathVariable ("id") int id, HttpServletRequest request ) {
		
		this.studentDao.deleteStudent(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/students");
		
		return redirectView;
	}
}
