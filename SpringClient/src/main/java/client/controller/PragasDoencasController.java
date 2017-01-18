package client.controller;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import client.Tabelas.PragasDoencas;
import client.Tabelas.Produtor;
import client.Tabelas.Propriedade;
import client.Tabelas.Tipos_Pragas;
import client.tabelasDAO.PragaDoencaDAO;
import client.tabelasDAO.PropriedadeDAO;

@Controller
@RequestMapping(value="/GestorCafeeiro")
public class PragasDoencasController {
	
	@RequestMapping("pragasdoencas")
	  public String pragasdoencas(ModelMap model,HttpSession session) throws SQLException {
		
		if(session.getAttribute("usuarioLogado")==null){
			return "loginForm";
		}
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();
		
		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);
		
		PragaDoencaDAO pd = new PragaDoencaDAO();
		List<Tipos_Pragas> tipos = new ArrayList<Tipos_Pragas>();
		tipos  = pd.ListaPD();
		model.addAttribute("tipos_pd", tipos);
		
	   		
	    return "telas/registropraga";
	  }

	@RequestMapping(value = "registrapragasdoencas", method = RequestMethod.POST)
	  public String RegistraOcorrencia(@Valid PragasDoencas pragasdoencas , BindingResult result,
			                           HttpSession session) throws SQLException{
		if(result.hasErrors()){
			return "redirect:pragasdoencas";
		}
		PragaDoencaDAO pd = new PragaDoencaDAO();
		pd.inserePragasDoencas(pragasdoencas);
		
		return "redirect:inicio";	
	}
}

