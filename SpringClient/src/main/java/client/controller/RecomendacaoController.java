package client.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import client.Tabelas.Produtor;
import client.Tabelas.Propriedade;
import client.tabelasDAO.PropriedadeDAO;
import client.tabelasDAO.RecomendaLavouraProdutiva;
import client.tabelasDAO.RecomendaPlantio;
import client.tabelasDAO.RecomendaRecepa;


@Controller
@RequestMapping(value="/GestorCafeeiro")
public class RecomendacaoController {
	
	@RequestMapping("recomendacao")
	  public String recomendacao() {
	    return "telas/recomendacao";
	  }
			
	@RequestMapping("recomendacaoPlantio")
	  public String recomendacaoPlantiopublic(ModelMap model, HttpSession session) throws SQLException{
			Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
			List<Propriedade> prop = new ArrayList<Propriedade>();
			PropriedadeDAO p = new PropriedadeDAO();
			
			prop = p.findPropriedade(usuario.getId_produtor());
			model.addAttribute("lavouras", prop);
			
			RecomendaPlantio plantio = new RecomendaPlantio();
			plantio.setCalagem(0);
			plantio.setCalcario(0);
			plantio.setCobertura("0-0-0");
			plantio.setEsterco(0);
			plantio.setFte(20);
			plantio.setSuperfosfato(0);
			model.addAttribute("plantio", plantio);
		
	    return "telas/recomendacaoPlantio";
	  }
	
	  @RequestMapping(value = "insereAnalisePlantio", method = RequestMethod.POST)
	  public String insereAnalise (HttpServletRequest request) throws SQLException{
		 
//		  System.out.println("rp");
//			 if(result.hasErrors()){
//				 System.out.println("erro");
//				 return "redirect:recomendacaoPlantio";
//			 }
//			 RecomendacaoDAO rec = new RecomendacaoDAO();
//			 rec.insereRecomendacaoPlantio(rp);
			 
			  return "telas/recomendacao";
		 }
  
	@RequestMapping("recomendacaoLavouraProducao")
	  public String recomendacaoLavouraProducao(ModelMap model, HttpSession session) throws SQLException{
			Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
			List<Propriedade> prop = new ArrayList<Propriedade>();
			PropriedadeDAO p = new PropriedadeDAO();
			
			prop = p.findPropriedade(usuario.getId_produtor());
			model.addAttribute("lavouras", prop);
			
			RecomendaLavouraProdutiva lp = new RecomendaLavouraProdutiva();
			lp.setCalagem(0);
			lp.setN(0);
			lp.setPO(0);
			lp.setKO(0);
			lp.setDose1(0);
			lp.setDose2(0);
			lp.setDose3(0);
			lp.setApl1(0);
			lp.setApl2(0);
			lp.setApl3(0);
			lp.setF1("Superfosfato Simples");
			lp.setF2("0-0-0");
			lp.setF3("0-0-0");
			lp.setArea_calcario(0);
			lp.setArea_superfosfato(0);
			lp.setArea_formulado(0);
			lp.setHa_calcario(0);
			lp.setHa_formulado(0);
			lp.setHa_superfosfato(0);
			lp.setArea_talhao(0);
			lp.setPl_ha(0);
			
			model.addAttribute("producao", lp);
			
	    return "telas/recomendacaoLavouraProducao";
	  }
	
	@RequestMapping("recomendacaoLavouraRecepada")
	  public String recomendacaoLavouraRecepadapublic(ModelMap model, HttpSession session) throws SQLException{
			Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
			List<Propriedade> prop = new ArrayList<Propriedade>();
			PropriedadeDAO p = new PropriedadeDAO();
			
			prop = p.findPropriedade(usuario.getId_produtor());
			model.addAttribute("lavouras", prop);
			
			RecomendaRecepa rr = new RecomendaRecepa();
			rr.setDesbrota1(0);
			rr.setDesbrota2(30);
			rr.setApos30(30);
			rr.setApos70(50);
			rr.setApos120(80);
			rr.setFert1("Supersimples");
			rr.setFert2("FTE");
			rr.setFert3("0-0-0");
			rr.setCalagem(0);
			rr.setArea_talhao(0);
			rr.setArea_calcario(0);
			rr.setArea_formulado(0);
			rr.setArea_superfosfato(0);
			rr.setHa_calcario(0);
			rr.setHa_formulado(0);
			rr.setHa_superfosfato(0);
			
			model.addAttribute("recepa", rr);
					
	    return "telas/recomendacaoRecepa";
	  }
}
