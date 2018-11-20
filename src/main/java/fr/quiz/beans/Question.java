package fr.quiz.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Question {

	@Id
	private Integer numeroQuestion;
	private String enonce;
	private boolean estMultiple;
	private String imageQuestion;

	public Question() {
		super();

	}

	public Question(Integer numeroQuestion, String enonce, boolean estMultiple, String imageQuestion) {
		super();
		this.numeroQuestion = numeroQuestion;
		this.enonce = enonce;
		this.estMultiple = estMultiple;
		this.imageQuestion = imageQuestion;
	}

	@ManyToOne
	private Quiz quiz;
	
	public Quiz getQuiz() {
		return quiz;
	}

	public void setQuiz(Quiz quiz) {
		this.quiz = quiz;
	}

	public List<Reponse> getReponses() {
		return reponses;
	}

	public void setReponses(List<Reponse> reponses) {
		this.reponses = reponses;
	}

	@OneToMany
	private List<Reponse> reponses = new ArrayList<Reponse>(); 
	
	public Integer getNumeroQuestion() {
		return numeroQuestion;
	}

	public void setNumeroQuestion(Integer numeroQuestion) {
		this.numeroQuestion = numeroQuestion;
	}

	public String getEnonce() {
		return enonce;
	}

	public void setEnonce(String enonce) {
		this.enonce = enonce;
	}

	public boolean isEstMultiple() {
		return estMultiple;
	}

	public void setEstMultiple(boolean estMultiple) {
		this.estMultiple = estMultiple;
	}

	public String getImageQuestion() {
		return imageQuestion;
	}

	public void setImageQuestion(String imageQuestion) {
		this.imageQuestion = imageQuestion;
	}

}
