package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.Colheita;

public class ColheitaDAO {
	
	@PersistenceContext
	 private static EntityManager manager;
	 
	 public void insereColheita(Colheita pd) throws SQLException{	
		  manager = DBManager.getEntityManager();
         manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public List <Colheita> ListaColheita()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Colheita>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM Colheita p", 
	        	    Colheita.class);
	        	        
	         List<Colheita> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
	 
	 
	 public List <Colheita> BuscaColheita(Integer id, Integer ano )throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Colheita>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM Colheita p "+
	        	    "WHERE extract(year from data) = :ano "+
	        	    " AND p.id_propriedade = :id",
	        	    Colheita.class);
	        query.setParameter("ano", ano);
	        query.setParameter("id", id);
	        	        
	         List<Colheita> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}

}
