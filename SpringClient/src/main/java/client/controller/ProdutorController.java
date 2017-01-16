package client.controller;
import java.sql.SQLException;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import client.Tabelas.Produtor;
import client.tabelasDAO.ProdutorDAO;

@Controller
@RequestMapping(value="/GestorCafeeiro")
public class ProdutorController {
	//Controller cadastro 
			@RequestMapping(value ="cadastraProdutor", method = RequestMethod.POST)
			public String cadastroProdutor(@Valid Produtor prop, BindingResult result) throws SQLException{
				ProdutorDAO prod = new ProdutorDAO();
				prod.insereProdutor(prop);
				if(result.hasErrors()){
					return "redirect:cadastro";
				}
				return "redirect:loginForm";
			}
			 @RequestMapping("cadastro")
			  public String cadastro() {
			    return "telas/cadastro";
			  }

}
