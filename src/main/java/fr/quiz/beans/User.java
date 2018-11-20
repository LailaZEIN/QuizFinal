package fr.quiz.beans;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	
	@Id
	private Integer numeroUser;
	private Date dateNaissance;
	private boolean estAdmin;

	public User() {
		super();

	}

	public User(Integer numeroUser, Date dateNaissance, boolean estAdmin) {
		super();
		this.numeroUser = numeroUser;
		this.dateNaissance = dateNaissance;
		this.estAdmin = estAdmin;
	}

	public Integer getNumeroUser() {
		return numeroUser;
	}

	public void setNumeroUser(Integer numeroUser) {
		this.numeroUser = numeroUser;
	}

	public Date getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(Date dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public boolean isEstAdmin() {
		return estAdmin;
	}

	public void setEstAdmin(boolean estAdmin) {
		this.estAdmin = estAdmin;
	}

}
