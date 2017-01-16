package client.controller;

import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import client.Tabelas.Produtor;
import client.Tabelas.Propriedade;
import client.Tabelas.Propriedade_Produtor;
import client.tabelasDAO.PropriedadeDAO;


@Controller
@RequestMapping(value="/GestorCafeeiro")
public class CasdastroLavouraController {
	
	 public Integer id;
	
	  @RequestMapping("cadastralavoura")
	  public String cadastralavoura() {
	    return "telas/cadastro_lavoura";
	  }
	    
	  @RequestMapping(value = "validaLavoura", method = RequestMethod.POST)
	  public String validaLaloura(@Valid Propriedade prop, HttpServletRequest request,
			                       BindingResult result,HttpSession session) throws SQLException{
		 
		 if(result.hasErrors()){
			 return "redirect:validaLavoura";
		 }
		 
		 //insere produtor
		 PropriedadeDAO propriedadeDAO = new PropriedadeDAO();
		 propriedadeDAO.inserePropriedade(prop);
		 
		 //associa produtor a propriedade
		 Propriedade_Produtor pp = new Propriedade_Produtor();
		 Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		 
		 //pega o id da propriedade criada 
		 id = propriedadeDAO.idPropriedade(prop.getNome());
		 
		 pp.setId_propriedade(id);
		 pp.setId_produtor(usuario.getId_produtor());
		 propriedadeDAO.inserePropriedadeProdutor(pp);
		 	 
		 return "redirect:inicio";
	  }	  
}
