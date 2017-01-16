package client.tabelasDAO;

import java.sql.SQLException;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import client.BDManege.DBManager;
import client.Tabelas.RecomendacaoPlantio;


public class RecomendacaoDAO {
	@PersistenceContext
	 private static EntityManager manager;
	 
	 public void insereRecomendacaoPlantio(RecomendacaoPlantio rp) throws SQLException{	
		  manager = DBManager.getEntityManager();
         manager.getTransaction().begin();		     
		  manager.persist(rp);
		  manager.flush();
		  manager.clear();
		  manager.getTransaction().commit();
		  manager.close();	
	 }

}
