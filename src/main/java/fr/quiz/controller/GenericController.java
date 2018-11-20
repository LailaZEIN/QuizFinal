package fr.quiz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import fr.quiz.DAO.DaoInterfaceQuiz;
import fr.quiz.beans.Quiz;

@Controller
public class GenericController{
	
	@Autowired
	private DaoInterfaceQuiz<Quiz> dao;
	
	@GetMapping("")
	public String newQuiz() {
		
		return null;
		
	}
	
	@PostMapping("")
	public String createQuiz(Quiz quiz) {
		
		dao.createOrUpdate(quiz);
		
		return null;
	}
	
	
}
