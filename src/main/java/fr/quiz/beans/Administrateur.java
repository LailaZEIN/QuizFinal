package fr.quiz.beans;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Administrateur { 


	@Id
	private String matricule;

	public Administrateur() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Administrateur(String matricule) {
		super();
		this.matricule = matricule;
	}

	public String getMatricule() {
		return matricule;
	}

	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}

}
