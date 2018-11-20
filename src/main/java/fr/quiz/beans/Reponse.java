package fr.quiz.beans;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Reponse {

	@Id
	private Integer numeroReponse;
	private String enonceReponse;
	private boolean correct;
	private String imageReponse;

	public Reponse() {
		super();
	}

	public Reponse(Integer numeroReponse, String enonceReponse, boolean correct,
			String imageReponse) {
		super();
		this.numeroReponse = numeroReponse;
		this.enonceReponse = enonceReponse;
		this.correct = correct;
		this.imageReponse = imageReponse;
	}
	
	@ManyToOne
	 private Question question; 
	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public Integer getNumeroReponse() {
		return numeroReponse;
	}

	public void setNumeroReponse(Integer numeroReponse) {
		this.numeroReponse = numeroReponse;
	}

	public String getEnonceReponse() {
		return enonceReponse;
	}

	public void setEnonceReponse(String enonceReponse) {
		this.enonceReponse = enonceReponse;
	}

	public boolean isCorrect() {
		return correct;
	}

	public void setCorrect(boolean correct) {
		this.correct = correct;
	}

	public String getImageReponse() {
		return imageReponse;
	}

	public void setImageReponse(String imageReponse) {
		this.imageReponse = imageReponse;
	}

	@Override
	public String toString() {
		return "Reponse [numeroReponse=" + numeroReponse + ", enonceReponse=" + enonceReponse + ", correct=" + correct
				+ ", imageReponse=" + imageReponse +"]";
	}

	
	
}
