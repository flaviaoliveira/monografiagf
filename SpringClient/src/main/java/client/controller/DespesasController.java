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

import client.Tabelas.Beneficiamento;
import client.Tabelas.Colheita;
import client.Tabelas.DespesaAdd;
import client.Tabelas.Insumos;
import client.Tabelas.ManutencaoEquipamento;
import client.Tabelas.ManutencaoLavoura;
import client.Tabelas.Plantio;
import client.Tabelas.PosColheita;
import client.Tabelas.PrePlantio;
import client.Tabelas.Produtor;
import client.Tabelas.Propriedade;
import client.tabelasDAO.BeneficiamentoDAO;
import client.tabelasDAO.ColheitaDAO;
import client.tabelasDAO.DespesasAddDAO;
import client.tabelasDAO.InsumoDAO;
import client.tabelasDAO.ManutencaoEquipamentosDAO;
import client.tabelasDAO.ManutencaoLavouraDAO;
import client.tabelasDAO.PlantioDAO;
import client.tabelasDAO.PosColheitaDAO;
import client.tabelasDAO.PrePlantioDAO;
import client.tabelasDAO.PropriedadeDAO;



@Controller
@RequestMapping(value="/GestorCafeeiro")
public class DespesasController {
	
	@RequestMapping("despesas")
	  public String despesa(ModelMap model, HttpSession session) throws SQLException{
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();
		
		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);

	    return "telas/despesas";
	  }
  
	// --------------------------------PREPLANTIO---------------------------------------------------
		@RequestMapping(value = "registraPrePlantio", method = RequestMethod.POST)
		  public String RegistraPrePlantio(@Valid PrePlantio p , BindingResult result,
				                           HttpSession session) throws SQLException{
			if(result.hasErrors()){
				return "redirect:despesas";
			}
			PrePlantioDAO pd = new PrePlantioDAO();
			pd.inserePrePlantio(p);
			
			return "redirect:inicio";	
		}
	
	
	// --------------------------------PLANTIO---------------------------------------------------
	@RequestMapping(value = "registraPlantio", method = RequestMethod.POST)
	  public String RegistraPlantio(@Valid Plantio p , BindingResult result,
			                           HttpSession session) throws SQLException{
		if(result.hasErrors()){
			return "redirect:despesas";
		}
		PlantioDAO pd = new PlantioDAO();
		pd.inserePlantio(p);
		
		return "redirect:inicio";	
	}
	
	
	// ----------------------------COLHEITA------------------------------------
	@RequestMapping(value = "registraColheita", method = RequestMethod.POST)
	  public String RegistraColheita(@Valid Colheita p , BindingResult result,
			                           HttpSession session) throws SQLException{
		if(result.hasErrors()){
			return "redirect:despesas";
		}
		ColheitaDAO pd = new ColheitaDAO();
		pd.insereColheita(p);
		
		return "redirect:inicio";	
	}
	
	// ----------------------------POSCOLHEITA------------------------------------
	@RequestMapping(value = "registraPosColheita", method = RequestMethod.POST)
	  public String RegistraPosColheita(@Valid PosColheita p , BindingResult result,
			                           HttpSession session) throws SQLException{
		if(result.hasErrors()){
			return "redirect:despesas";
		}
		PosColheitaDAO pd = new PosColheitaDAO();
		pd.inserePosColheita(p);
		
		return "redirect:inicio";	
	}
	
	// ----------------------------INSUMOS------------------------------------
		@RequestMapping(value = "registraInsumo", method = RequestMethod.POST)
		  public String RegistraInsumos(@Valid Insumos p , BindingResult result,
				                           HttpSession session) throws SQLException{
			if(result.hasErrors()){
				return "redirect:despesas";
			}
			InsumoDAO pd = new InsumoDAO();
			pd.insereInsumos(p);
			
			return "redirect:inicio";	
		}
		
		// ----------------------------BENEFICIAMENTO------------------------------------
		@RequestMapping(value = "registraBeneficiamento", method = RequestMethod.POST)
		  public String RegistraBeneficiamento(@Valid Beneficiamento p , BindingResult result,
				                           HttpSession session) throws SQLException{
			if(result.hasErrors()){
				return "redirect:despesas";
			}
			BeneficiamentoDAO pd = new BeneficiamentoDAO();
			pd.insereBeneficiamento(p);
			
			return "redirect:inicio";	
			
		}
		
		
		// ----------------------------Manutenção Lavoura ------------------------------------
		@RequestMapping(value = "registraManutencaoLavoura", method = RequestMethod.POST)
		  public String RegistraManutencaoLavoura(@Valid ManutencaoLavoura p , BindingResult result,
				                           HttpSession session) throws SQLException{
//			if(result.hasErrors()){
//				return "redirect:despesas";
//			}
			ManutencaoLavouraDAO pd = new ManutencaoLavouraDAO();
			pd.insereManutencaoLavoura(p);
			
			return "redirect:inicio";	
		}
		
		// ----------------------------Manutenção Equipamento ------------------------------------
				@RequestMapping(value = "registraManutencaoEquipamento", method = RequestMethod.POST)
				  public String RegistraManutencaoEquipamento(@Valid ManutencaoEquipamento p , BindingResult result,
						                           HttpSession session) throws SQLException{
					if(result.hasErrors()){
						return "redirect:despesas";
					}
					ManutencaoEquipamentosDAO pd = new ManutencaoEquipamentosDAO();
					pd.insereManutencaoEquipamento(p);
					
					return "redirect:inicio";	
				}
				
				
				// ----------------------------DESOESASADD------------------------------------
				@RequestMapping(value = "registraDespesasAdd", method = RequestMethod.POST)
				  public String RegistraDespesasAdd(@Valid DespesaAdd p , BindingResult result,
						                           HttpSession session) throws SQLException{
					if(result.hasErrors()){
						return "redirect:despesas";
					}
					DespesasAddDAO pd = new DespesasAddDAO();
					pd.insereDespesaAdd(p);
					
					return "redirect:inicio";	
				}
}





