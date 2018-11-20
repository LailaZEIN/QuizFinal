package fr.quiz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fr.quiz.DAO.DaoInterfaceQuiz;
import fr.quiz.beans.Quiz;

@Controller
@RequestMapping("/quiz")
public class QuizController {

	@Autowired
	private DaoInterfaceQuiz<Quiz> dao;

	
	public DaoInterfaceQuiz<Quiz> getDao() {
		return dao;
	}

	public void setDao(DaoInterfaceQuiz<Quiz> dao) {
		this.dao = dao;
	}

	@GetMapping("/new")
	public String newQuiz() {
		return "newQuiz";
	}

	@PostMapping("/new")
	public String createOrUpdateQuiz( Model model, Quiz quiz) {
		
		//System.out.println(quiz);
		dao.createOrUpdate(quiz);
		
		return afficheQuiz(model, "Quiz ajouté", quiz);
						
	}

	@PostMapping("/delete")
	public String deleteQuiz(Model model, @RequestParam Long id) {
	
			Quiz quiz = dao.findById(Quiz.class, id);
					
			return "createQuiz";
		
	}
	
	public String  afficheQuiz(Model model ,String message, Quiz quiz ) {
		
		model.addAttribute("ListeQuiz", dao.findAll(Quiz.class));
		model.addAttribute("msg", message);
		
	return "createQuiz";
		
	}
	
}
	

