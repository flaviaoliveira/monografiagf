package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.Beneficiamento;


public class BeneficiamentoDAO {
	
	@PersistenceContext
	 private static EntityManager manager;
	 
	 public void insereBeneficiamento(Beneficiamento pd) throws SQLException{	
		  manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public List <Beneficiamento> ListaBeneficiamento()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Beneficiamento>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM Beneficiamento p", 
	        	    Beneficiamento.class);
	        	        
	         List<Beneficiamento> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
	

}
