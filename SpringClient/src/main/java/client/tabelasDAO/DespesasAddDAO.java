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
	        	    "FROM DespesaAdd p", 
	        	    DespesaAdd.class);
	        	        
	         List<DespesaAdd> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
	 
	 public List <DespesaAdd> BuscaDespesaAdd(Integer id, Integer ano )throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<DespesaAdd>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM DespesaAdd p "+
	        	    "WHERE extract(year from data) = :ano "+
	        	    " AND p.id_propriedade = :id",
	        	    DespesaAdd.class);
	        query.setParameter("ano", ano);
	        query.setParameter("id", id);
	        	        
	         List<DespesaAdd> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}

}
