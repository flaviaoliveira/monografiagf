package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.ManutencaoEquipamento;;

public class ManutencaoEquipamentosDAO {
	 @PersistenceContext
	 private static EntityManager manager;
	 
	 public void insereManutencaoEquipamento(ManutencaoEquipamento pd) throws SQLException{	
		  
		  manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public List <ManutencaoEquipamento> ListaManutencaoEquipamento()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<ManutencaoEquipamento>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM ManutencaoEquipamento p", 
	        	    ManutencaoEquipamento.class);
	        	        
	         List<ManutencaoEquipamento> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}

}
