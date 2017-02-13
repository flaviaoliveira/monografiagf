package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.Insumos;

public class InsumoDAO {
	
	 @PersistenceContext
	 private static EntityManager manager;
	 
	 public void insereInsumos(Insumos pd) throws SQLException{	
		  manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public List <Insumos> ListaInsumos()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Insumos>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM Insumos p", 
	        	    Insumos.class);
	        	        
	         List<Insumos> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
      
	 
	public List<Insumos> BuscaInsumos(Integer id, Integer ano )throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Insumos>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM Insumos p "+
	        	    "WHERE extract(year from data) = :ano "+
	        	    " AND p.id_propriedade = :id",
	        	   Insumos.class);
	        query.setParameter("ano", ano);
	        query.setParameter("id", id);
	        	        
	         List<Insumos> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}

}

