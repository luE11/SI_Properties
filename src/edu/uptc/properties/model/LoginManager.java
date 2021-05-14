package edu.uptc.properties.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import edu.uptc.properties.entity.Administrator;
import edu.uptc.properties.entity.Owner;

public class LoginManager {
	private EntityManager em;   
    private EntityManagerFactory emf;
    
    public LoginManager() {
		try {
			emf= Persistence.createEntityManagerFactory("SI_Properties");
	    	em=emf.createEntityManager();
		}catch(Exception e) {
    		System.err.println(e.getLocalizedMessage());
    	}
	}
    
    public String findAdminPK(String userName) {
		String adminpwd = "";
		try {
	        Query query = em.createQuery("SELECT a.adminPwd FROM Administrator a WHERE ADMIN_USER = ?1");
	        query.setParameter(1, userName);
	        adminpwd = query.getSingleResult().toString();
	    }catch (Exception e) {
	    	System.err.println(e.getLocalizedMessage());
		}
		return adminpwd;
    }
    
    public Owner findOwnerPK(String userName) {
		Owner owner = null;
		try {
	        Query query = em.createQuery("SELECT o FROM Owner o WHERE OWNER_USER = ?1");
	        query.setParameter(1, userName);
	        owner = (Owner) query.getSingleResult();
	    }catch (NoResultException e) {
	    	System.err.println(e.getLocalizedMessage());
	    	e.printStackTrace();
		}
		return owner;
    }
}
