package com;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.Student;
import dao.StudentDaoImp;

import org.springframework.ui.ModelMap;
@Controller
public class StudentController {
	@RequestMapping(value = "/student", method = RequestMethod.GET)
	public ModelAndView student() {
		return new ModelAndView("student", "command", new Student());
	}
	@RequestMapping(value = "/addStudent", method = RequestMethod.POST)
	public String addStudent(@ModelAttribute("JavaWebProject")Student student,ModelMap model){
		 @SuppressWarnings("resource")
		ApplicationContext ctx=new ClassPathXmlApplicationContext("com/Beans.xml");  
		 StudentDaoImp studentDaoImp = (StudentDaoImp)ctx.getBean("studentDaoImp");  
		 studentDaoImp.addstudent(student);
		
		model.addAttribute("id",student.getId());
		model.addAttribute("name",student.getName());
		model.addAttribute("age", student.getAge());
		model.addAttribute("fm", student.getFm());
		return "result";
	}
}
