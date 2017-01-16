package client.tabelasDAO;

import java.sql.SQLException;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.ManutencaoLavoura;


public class ManutencaoLavouraDAO {
	 @PersistenceContext
	 private static EntityManager manager;
	 
	 public void insereManutencaoLavoura(ManutencaoLavoura pd) throws SQLException{	
		  manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public List <ManutencaoLavoura> ListaManutencaoLavoura()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<ManutencaoLavoura>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM ManutencaoLavoura p", 
	        	    ManutencaoLavoura.class);
	        	        
	         List<ManutencaoLavoura> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}

}
