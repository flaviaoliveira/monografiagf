package client.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import client.Tabelas.Produtor;
import client.tabelasDAO.Login;
import client.tabelasDAO.ProdutorDAO;

@Controller
@RequestMapping(value="/GestorCafeeiro")
public class LoginController {


	@RequestMapping("loginForm")
	  public String loginForm() {
	    return "telas/login";
	  }
	
	@RequestMapping("efetuaLogin" )
	public String paginaprincipal(@Valid Login login, HttpSession session, BindingResult result) throws SQLException {
		ProdutorDAO p = new ProdutorDAO();
		if (result.hasErrors() && result.hasFieldErrors()) {
			return "redirect:loginForm";
		} else {
			Produtor usuario = p.find(login);
			
			if (usuario != null) {
				session.setAttribute("usuarioLogado", usuario);
				return "telas/page";
			}	
			return "redirect:loginForm";
		}
	}
	  @RequestMapping("logout")
	  public String logout(HttpSession session) {
	    session.invalidate();
	    return "redirect:loginForm";
	  }
   
	  @RequestMapping("inicio")
	  public String inicio() {
	    return "telas/page";
	  }
}
