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
	 public void deletaBeneficiamento(Integer id)throws SQLException{
		 manager = DBManager.getEntityManager();
	     manager.getTransaction().begin();
	     Beneficiamento b = manager.find(Beneficiamento.class, id);
	     if(b!=null){
	        manager.remove(b);
	     } 
	      manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }
	 public void editaBeneficiamento(Beneficiamento b)throws SQLException{
		 manager = DBManager.getEntityManager();
	     manager.getTransaction().begin();
	     Beneficiamento bn = manager.find(Beneficiamento.class, b.getId_beneficiamento());
	     if(b!=null){
	    	 bn.setData(b.getData());
	    	 bn.setDescricao(b.getDescricao());
	    	 bn.setDespesa_func(b.getDespesa_func());
	    	 bn.setDespesa_maquina(b.getDespesa_maquina());
	    	 bn.setDespesa_outro(b.getDespesa_outro());
	    	 bn.setHrs_maquina(b.getHrs_maquina());
	    	 bn.setId_propriedade(b.getId_propriedade());
	    	 bn.setQnt_bags(b.getQnt_bags());
	    	 bn.setQnt_func(b.getQnt_func());
	     }
	     manager.flush();
		 manager.clear();
	     manager.getTransaction().commit();
	     manager.close();	
		 
	 }
	 
	 public List <Beneficiamento> BuscaBeneficiamento(Integer id, Integer ano )throws SQLException {
			
			manager = DBManager.getEntityManager();
	        manager.getTransaction().begin();	
	        TypedQuery<Beneficiamento>  query = manager.createQuery(
	        	    "SELECT p "+ 
	        	    "FROM Beneficiamento p "+
	        	    "WHERE extract(year from data) = :ano "+
	        	    " AND p.id_propriedade = :id",
	        	    Beneficiamento.class);
	        query.setParameter("ano", ano);
	        query.setParameter("id", id);
	        	        
	         List<Beneficiamento> results = query.getResultList();
	   
			 manager.flush();
		     manager.clear();
		     manager.getTransaction().commit();
		     manager.close();
		        
			return results;
		}
	

}
