package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.PosColheita;

public class PosColheitaDAO {
	@PersistenceContext
	 private static EntityManager manager;
	 
	 public void inserePosColheita(PosColheita pd) throws SQLException{	
		  manager = DBManager.getEntityManager();
        manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public List <PosColheita> ListaPosColheita()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<PosColheita>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM PosColheita p", 
	        	    PosColheita.class);
	        	        
	         List<PosColheita> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}

}
