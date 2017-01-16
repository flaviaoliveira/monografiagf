package client.BDManege;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public final class DBManager {

	private static DBManager dbManager = null;
	
	private static EntityManagerFactory factory;
	
	private DBManager() {
		factory = Persistence.createEntityManagerFactory("gestorcafeeirobd");
	}
	
	public static DBManager getInstance() {
		if (dbManager == null) {
			dbManager = new DBManager();
		}
		return dbManager;
	}

	public static EntityManager getEntityManager() {
		return factory.createEntityManager();
	}

	public static void close() {
		if (factory.isOpen()) {
			factory.close();
		}
	}
}