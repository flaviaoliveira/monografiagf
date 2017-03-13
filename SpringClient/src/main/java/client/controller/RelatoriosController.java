package client.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

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
import client.tabelasDAO.Pesquisa;
import client.tabelasDAO.PlantioDAO;
import client.tabelasDAO.PosColheitaDAO;
import client.tabelasDAO.PrePlantioDAO;
import client.tabelasDAO.PropriedadeDAO;

@Controller
@RequestMapping(value = "/GestorCafeeiro")

public class RelatoriosController {

	@RequestMapping("relatorioEspecifico")
	public String relatorioespecifico(ModelMap model, HttpSession session) throws SQLException {
		System.out.println("entrou1");
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();

		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);

		return "telas/relatorioEspecifico";
	}

	@RequestMapping("pesquisarelatorioEspecifico")
	public String pesquisarelatorioespecifico(@Valid Pesquisa pesquisa, ModelMap model, HttpSession session)
			throws SQLException {
		System.out.println("entrou");
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();
		
		System.out.println(pesquisa.getAno());
		System.out.println(pesquisa.getId());
		
		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);
       
		PrePlantioDAO pp = new PrePlantioDAO();
		List<PrePlantio> preplantio = new ArrayList<PrePlantio>();
		preplantio = pp.BuscaPrePlantio(pesquisa.getId(), pesquisa.getAno());
		if (preplantio.size() > 0) {
			
			model.addAttribute("preplantio", preplantio);
		}

		PlantioDAO pl = new PlantioDAO();
		List<Plantio> plantio = new ArrayList<Plantio>();
		plantio = pl.BuscaPlantio(pesquisa.getId(), pesquisa.getAno());
		if (plantio.size() > 0) {
			
			model.addAttribute("plantio", plantio);
		}

		ColheitaDAO c = new ColheitaDAO();
		List<Colheita> colheita = new ArrayList<Colheita>();
		colheita = c.BuscaColheita(pesquisa.getId(), pesquisa.getAno());
		if (colheita.size() > 0) {
			
			model.addAttribute("colheita", colheita);
		}

		PosColheitaDAO pc = new PosColheitaDAO();
		
		List<PosColheita> poscolheita = new ArrayList<PosColheita>();
		poscolheita = pc.BuscaPosColheita(pesquisa.getId(), pesquisa.getAno());
		if (poscolheita.size() > 0) {
			
			model.addAttribute("poscolheita", poscolheita);
		}

		BeneficiamentoDAO b = new BeneficiamentoDAO();
		List<Beneficiamento> beneficiamento = new ArrayList<Beneficiamento>();
		beneficiamento = b.BuscaBeneficiamento(pesquisa.getId(), pesquisa.getAno());
		if (beneficiamento.size() > 0) {
			
			model.addAttribute("beneficiamento", beneficiamento);
		}

		InsumoDAO is = new InsumoDAO();
		List<Insumos> insumo = new ArrayList<Insumos>();
		insumo = is.BuscaInsumos(pesquisa.getId(), pesquisa.getAno());
		if (insumo.size() > 0) {
			
			model.addAttribute("insumo", insumo);
		}

		ManutencaoEquipamentosDAO me = new ManutencaoEquipamentosDAO();
		List<ManutencaoEquipamento> manuequipamento = new ArrayList<ManutencaoEquipamento>();
		manuequipamento = me.BuscaManutencaoEquipamento(pesquisa.getAno());
		if (manuequipamento.size() > 0) {
			
			model.addAttribute("manuequipamento", manuequipamento);
		}

		ManutencaoLavouraDAO ml = new ManutencaoLavouraDAO();
		List<ManutencaoLavoura> manulavoura = new ArrayList<ManutencaoLavoura>();
		manulavoura = ml.ListaManutencaoLavoura(pesquisa.getId(), pesquisa.getAno());
		if (manulavoura.size() > 0) {
			
			model.addAttribute("manulavoura", manulavoura);
		}

		DespesasAddDAO da = new DespesasAddDAO();
		List<DespesaAdd> despesaadd = new ArrayList<DespesaAdd>();
		despesaadd = da.BuscaDespesaAdd(pesquisa.getId(), pesquisa.getAno());
		if (despesaadd.size() > 0) {
			model.addAttribute("despesaaadd", despesaadd);
		}
		
		// Quntidade total de sacos colhido
		float total_cafe = 0;
		for (int i = 0; i < colheita.size(); i++) {
			total_cafe = total_cafe + colheita.get(i).getQnt_sacas();
		}
		model.addAttribute("total_cafe", total_cafe);

		// Quantidade final de sacas
		float total_cafe_final = 0;
		
		// Preço medio do saco vendido;
		float precomedio_saca = 0;
		
		// Valor obtido com a venda do café
		float venda_cafe = 0;
		
		for (int i = 0; i < beneficiamento.size(); i++) {
			total_cafe_final = total_cafe_final + beneficiamento.get(i).getQnt_sacas();
			precomedio_saca = precomedio_saca + beneficiamento.get(i).getValor_saca();

			venda_cafe = venda_cafe + beneficiamento.get(i).getQnt_sacas() * beneficiamento.get(i).getValor_saca();
		}
		model.addAttribute("total_cafe_final", total_cafe_final);
		model.addAttribute("precomedio_saca", (precomedio_saca / beneficiamento.size()));
		model.addAttribute("venda_cafe", venda_cafe);
		

		// Despesa com mão de obra
		float despesa_maodeobra = 0;
		for (int i = 0; i < preplantio.size(); i++) {
			despesa_maodeobra = (float) (despesa_maodeobra + preplantio.get(i).getDespesa_func());
		}
		for (int i = 0; i < plantio.size(); i++) {
			despesa_maodeobra = (float) (despesa_maodeobra + plantio.get(i).getDespesa_func());
		}
		for (int i = 0; i < poscolheita.size(); i++) {
			despesa_maodeobra = (float) (despesa_maodeobra + poscolheita.get(i).getDespesa_func());
		}
		for (int i = 0; i < beneficiamento.size(); i++) {
			despesa_maodeobra = (float) (despesa_maodeobra + beneficiamento.get(i).getDespesa_func());
		}
		for (int i = 0; i < insumo.size(); i++) {
			despesa_maodeobra = (float) (despesa_maodeobra + insumo.get(i).getDespesa_func());
		}
		model.addAttribute("despesa_maodeobra", despesa_maodeobra);

		// Despesa total
		float despesa_total = 0;
		float despesa_total_preplantio = 0;
		float despesa_total_plantio = 0;
		float despesa_total_colheita = 0;
		float despesa_total_poscolheita = 0;
		float despesa_total_beneficiamento = 0;
		float despesa_total_insumos = 0;
		float despesa_total_manutencao = 0;
		float despesa_total_despesaadd = 0;
		

		for (int i = 0; i < preplantio.size(); i++) {
			despesa_total_preplantio = (float) (despesa_total_preplantio + preplantio.get(i).getDespesa_adubo()
					+ preplantio.get(i).getDespesa_calcario() + preplantio.get(i).getDespesa_herbicida()
					+ preplantio.get(i).getDespesa_outro());
			
		}
		for (int i = 0; i < plantio.size(); i++) {
			despesa_total_plantio = (despesa_total_plantio + plantio.get(i).getDespesa_muda()
					+ plantio.get(i).getDespesa_outro());
		}
		for (int i = 0; i < colheita.size(); i++) {
			despesa_total_colheita = (despesa_total_colheita + colheita.get(i).getDespesa_viagens()+
					colheita.get(i).getDespesa_saca()+colheita.get(i).getDespesa_outro());			
		}
		for (int i = 0; i < poscolheita.size(); i++) {
			despesa_total_poscolheita = (despesa_total_poscolheita + poscolheita.get(i).getDespesa_func()
					+ poscolheita.get(i).getDespesa_secador() + poscolheita.get(i).getDespesa_outro());
		}
		for (int i = 0; i < beneficiamento.size(); i++) {
			despesa_total_beneficiamento =  (despesa_total_beneficiamento + beneficiamento.get(i).getDespesa_func()
					+ beneficiamento.get(i).getDespesa_maquina() + beneficiamento.get(i).getDespesa_outro());
		}
		for (int i = 0; i < insumo.size(); i++) {
			despesa_total_insumos = (despesa_total_insumos + insumo.get(i).getDespesa_func());
		}
		
		for (int i = 0; i < manulavoura.size(); i++) {
			despesa_total_manutencao =  (despesa_total_manutencao + manulavoura.get(i).getDespesa_func());
		}

		for (int i = 0; i < manuequipamento.size(); i++) {
			despesa_total_manutencao =  (despesa_total_manutencao + manuequipamento.get(i).getDespesa());
		}
		for (int i = 0; i < despesaadd.size(); i++) {
			despesa_total_despesaadd = (despesa_total_despesaadd + despesaadd.get(i).getDespesa());
		}
		
		despesa_total = despesa_total_preplantio + despesa_total_plantio+ despesa_total_colheita + despesa_total_poscolheita
				+ despesa_total_beneficiamento +despesa_total_insumos +despesa_total_manutencao;
		
		model.addAttribute("despesa_total", despesa_total);
		model.addAttribute("despesa_total_preplantio",despesa_total_preplantio);
		model.addAttribute("despesa_total_plantio", despesa_total_plantio);
		model.addAttribute("despesa_total_colheita", despesa_total_colheita);
		model.addAttribute("despesa_total_poscolheita", despesa_total_poscolheita);
		model.addAttribute("despesa_total_beneficiamento", despesa_total_beneficiamento);
		model.addAttribute("despesa_total_insumos", despesa_total_insumos);
		model.addAttribute("despesa_total_manutencao", despesa_total_manutencao);
		model.addAttribute("despesa_total_despesaadd", despesa_total_despesaadd);
	    
		// Custo para produzir uma saca de café
		float custo_saca = despesa_total / total_cafe_final;
		model.addAttribute("custo_saca", custo_saca);
		
		
		//Ganho final
		float ganho_final = venda_cafe - despesa_total;
		model.addAttribute("ganho_final", ganho_final);

		return "telas/relatorioEspecifico";
	}

	@RequestMapping("relatorioGeral")
	public String relatoriogeral(ModelMap model, HttpSession session) throws SQLException {
		
		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();

		prop = p.findPropriedade(usuario.getId_produtor());
		
		for (int i = 0; i < prop.size(); i++) {
			// Achar uma forma de achar o ano inicial e final para pesquisa	
		}
		
		return "telas/relatorioGeral";
	}
}
