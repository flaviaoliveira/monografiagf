package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.Plantio;



public class PlantioDAO {

	@PersistenceContext
	private static EntityManager manager;
	
	public void inserePlantio(Plantio pd) throws SQLException{
		
		  manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	
	 public List <Plantio> ListaPlantio()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Plantio>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM Plantio p", 
	        	    Plantio.class);
	        	        
	         List<Plantio> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
}
