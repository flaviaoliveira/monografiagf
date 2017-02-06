package client.tabelasDAO;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import client.BDManege.DBManager;
import client.Tabelas.PragasDoencas;
import client.Tabelas.Tipos_Pragas;


public class PragaDoencaDAO {
	
	@PersistenceContext
	 private static EntityManager manager;
	 
	 public void inserePragasDoencas(PragasDoencas pd) throws SQLException{	
		  manager = DBManager.getEntityManager();
          manager.getTransaction().begin();		     
		  manager.persist(pd);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 public void deletaPragaDoenca(Integer id){
		  manager = DBManager.getEntityManager();
          manager.getTransaction().begin();
          PragasDoencas pd = manager.find(PragasDoencas.class, id);
		  if(pd!=null){
			  manager.remove(pd);
		  }
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 
	 public void editaPragaDoença(PragasDoencas pd){
		 manager = DBManager.getEntityManager();
         manager.getTransaction().begin();
         PragasDoencas p = manager.find(PragasDoencas.class,pd.getId_pragas());
         if(p!=null){
        	 p.setData_fim(pd.getData_fim());
        	 p.setData_inicio(pd.getData_inicio());
        	 p.setId_propriedade(pd.getId_propriedade());
         }
         manager.flush();
		 manager.clear();
		 manager.getTransaction().commit();
		 manager.close();	
		 
	 }
	 public List <Tipos_Pragas> ListaPD()throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Tipos_Pragas>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM Tipos_Pragas p", 
	        	    Tipos_Pragas.class);
	        	        
	         List<Tipos_Pragas> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
	 
}
