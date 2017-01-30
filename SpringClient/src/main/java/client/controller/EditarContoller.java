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
public class EditarContoller {
	
	@RequestMapping("editarlavouras")
	 public String EditarLavoura(ModelMap model,HttpSession session) throws SQLException{
		
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();
		
		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);
		
		return "telas/editaLavoura";
	}
	@RequestMapping("editarpragas")
	 public String EditarPragas(ModelMap model,HttpSession session) throws SQLException{
		
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();
		
		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);
		
		return "telas/editaPragas";
	}

	@RequestMapping("editardespesas")
	 public String EditarDespesa(ModelMap model,HttpSession session) throws SQLException{
		
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();
		
		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);
		
		return "telas/editaDespesas";
	}
}
