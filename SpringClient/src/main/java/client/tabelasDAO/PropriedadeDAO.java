package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.Propriedade;
import client.Tabelas.Propriedade_Produtor;

public class PropriedadeDAO {

	
	 @PersistenceContext
	 private static EntityManager manager;
	 
	 public void inserePropriedade(Propriedade propriedade) throws SQLException{	
		 manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(propriedade);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public void inserePropriedadeProdutor(Propriedade_Produtor propriedade) throws SQLException{	
		 manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(propriedade);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 
	 public List<Propriedade> findPropriedade(Integer id_produtor)throws SQLException {
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();
	              		 
	        TypedQuery<Propriedade>  query = manager.createQuery(
	        	    "SELECT p "+
	        	    "FROM Propriedade p  "+
	        	    "WHERE p.id_propriedade IN "+
	        	    "(SELECT pp.id_propriedade "+
	        	    "FROM Propriedade_Produtor pp " +
	        	    "WHERE pp.id_produtor = :id_prod) ", 
	        	    Propriedade.class);
	        query.setParameter("id_prod", id_produtor);
			      
	        
	         List<Propriedade> results = query.getResultList();
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		     
			return results;
		}
	 
	 public Integer idPropriedade(String nome)throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Propriedade>  query = manager.createQuery(
	        	    "SELECT p "+
	        	    "FROM Propriedade p "+
	        	    "WHERE p.nome = :nome ", 
	        	    Propriedade.class);
	        query.setParameter("nome", nome);
			        
	         List<Propriedade> results = query.getResultList();
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		     
		     if(results.size()>0){
		    	 return results.get(0).getId_propriedade(); 
		     }
			return null;
		}
}
