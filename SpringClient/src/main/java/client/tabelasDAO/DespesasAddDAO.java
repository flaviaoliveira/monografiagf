package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.DespesaAdd;


public class DespesasAddDAO {
	
	@PersistenceContext
	 private static EntityManager manager;
	 
	 public void insereDespesaAdd(DespesaAdd pd) throws SQLException{	
		  manager = DBManager.getEntityManager();
       manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public List <DespesaAdd> ListaDespesaAdd()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<DespesaAdd>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM PosColheita p", 
	        	    DespesaAdd.class);
	        	        
	         List<DespesaAdd> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}

}
