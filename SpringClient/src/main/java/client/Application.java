package client;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import client.BDManege.DBManager;



//A anotação abaixo adiciona algumas outras anotações automaticamente.
//No tutorial disponível em "https://spring.io/guides/gs/serving-web-content/"
//há uma boa explicação sobre esta parte.
//A principal anotação adicionada é:
//	@ComponentScan: Faz com que o Spring busque por componentes, configurações
//	e serviços no mesmo pacote.
@SpringBootApplication
public class Application {

	public static void main(String[] args) {
//		Método do Spring usado para começar a rodar a aplicação.
		SpringApplication.run(Application.class, args);
		 DBManager.getInstance();
		
	}
}
