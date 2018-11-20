package fr.quiz.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Quiz {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Integer numeroQuiz;
	private String titreQuiz;
	private Integer score =0;
	private Integer nbQuestions;
	private Integer compteARebours = 0;

	public Quiz() {
		super();

	}

	public Quiz(Integer numeroQuiz, String titreQuiz, Integer score, Integer nbQuestions, Integer compteARebours) {
		super();
		this.numeroQuiz = numeroQuiz;
		this.titreQuiz = titreQuiz;
		this.score = score;
		this.nbQuestions = nbQuestions;
		this.compteARebours = compteARebours;
	}
	
	@OneToMany
	private List<Question> questions = new ArrayList<Question>();
	
	public List<Question> getQuestions() {
		return questions;
	}

	public void setQuestions(List<Question> questions) {
		this.questions = questions;
	}

	public Integer getNumeroQuiz() {
		return numeroQuiz;
	}

	public void setNumeroQuiz(Integer numeroQuiz) {
		this.numeroQuiz = numeroQuiz;
	}

	public String getTitreQuiz() {
		return titreQuiz;
	}

	public void setTitreQuiz(String titreQuiz) {
		this.titreQuiz = titreQuiz;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public Integer getNbQuestions() {
		return nbQuestions;
	}

	public void setNbQuestions(Integer nbQuestions) {
		this.nbQuestions = nbQuestions;
	}

	public Integer getCompteARebours() {
		return compteARebours;
	}

	public void setCompteARebours(Integer compteARebours) {
		this.compteARebours = compteARebours;
	}

}
