package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;

import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.Produtor;

public class ProdutorDAO {
	 @PersistenceContext
	 private static EntityManager manager;
	 
	 public void insereProdutor(Produtor produtor) throws SQLException{	
		 manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(produtor);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();
		
	 }

	public Produtor find(Login log)throws SQLException {
		
		manager = DBManager.getEntityManager();
        manager.getTransaction().begin();	
        TypedQuery<Produtor>  query = manager.createQuery(
        	    "SELECT p "+
        	    "FROM Produtor p "+
        	    "WHERE p.senha = :senha AND p.email = :email", 
        	Produtor.class);
        query.setParameter("email", log.getEmail());
        query.setParameter("senha", log.getSenha());
		        
         List<Produtor> results = query.getResultList();
		 manager.flush();
	     manager.clear();
	     manager.getTransaction().commit();
	     manager.close();
	     
	     if(results.size()==1)
	    	 return results.get(0);
		return null;
	}
}
