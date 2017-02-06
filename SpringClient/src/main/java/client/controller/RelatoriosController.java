package client.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import client.Tabelas.Produtor;
import client.Tabelas.Propriedade;
import client.tabelasDAO.PropriedadeDAO;

@Controller
@RequestMapping(value="/GestorCafeeiro")

public class RelatoriosController {
	
	@RequestMapping("relatorioEspecifico")
	  public String relatorioespecifico(ModelMap model,HttpSession session) throws SQLException {
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();
		
		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);
		
		
	    return "telas/relatorioEspecifico";
	  }
	
	@RequestMapping("relatorioGeral")
	  public String relatoriogeral() {
	    return "telas/relatorioGeral";
	  }
}
