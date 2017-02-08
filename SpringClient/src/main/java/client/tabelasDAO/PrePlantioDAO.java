package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.PrePlantio;



public class PrePlantioDAO {

	@PersistenceContext
	private static EntityManager manager;
	
	public void inserePrePlantio(PrePlantio pd) throws SQLException{
		
		  manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	
	 public List <PrePlantio> ListaPrePlantio()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<PrePlantio>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM PrePlantio p", 
	        	    PrePlantio.class);
	        	        
	         List<PrePlantio> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
	 
	 
	 public List <PrePlantio> ListaColheita(Integer id, Integer ano )throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<PrePlantio>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM PrePlantio p"+
	        	    "WHERE extract(year from data) = :ano "+
	        	    " AND p.id_propriedade = :id",
	        	    PrePlantio.class);
	        query.setParameter("ano", ano);
	        query.setParameter("id", id);
	        	        
	         List<PrePlantio> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
}
