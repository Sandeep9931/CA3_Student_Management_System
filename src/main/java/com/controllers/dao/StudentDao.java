package com.controllers.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.controllers.model.Student;


@Component
public class StudentDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//creating new Student
	@Transactional
	public void createStudent(Student student) {
		this.hibernateTemplate.saveOrUpdate(student);
	}
	
	// get all project
	public List<Student> getStudents(){
		List<Student> students=this.hibernateTemplate.loadAll(Student.class);
		return students;
	}
	
	// delete the single Student
	@Transactional
	public void deleteStudent(int sid) {
		Student p=this.hibernateTemplate.load(Student.class, sid);
		this.hibernateTemplate.delete(p);
	}
	// get the single student
	public Student getStudent(int sid) {
		return this.hibernateTemplate.get(Student.class, sid);
	}
}
