package aelp_test.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import aepl_test.dto.Aepl_User_Registartion;



public class Aelp_Test_Dao {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();
	
	
	public String insert(Aepl_User_Registartion reg,String email) {
		Aepl_User_Registartion mail=em.find(Aepl_User_Registartion.class,email);
		
		if(mail== null) {
		et.begin();
		em.persist(reg);
		et.commit();
		return "User Registred Sucessfully";
		}
		else { 
			return "User is Already exist...";
		}
	}

	
}
