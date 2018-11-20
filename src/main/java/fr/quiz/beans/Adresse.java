package fr.quiz.beans;

import javax.persistence.Embeddable;

@Embeddable
public class Adresse {

	private String ville;
	private String codePostal;
	private String pays;

	public Adresse() {
		super();

	}

	public Adresse(String ville, String codePostal, String pays) {
		super();
		this.ville = ville;
		this.codePostal = codePostal;
		this.pays = pays;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	public String getPays() {
		return pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

}
