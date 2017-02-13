package client.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import client.Tabelas.Beneficiamento;
import client.Tabelas.Colheita;
import client.Tabelas.DespesaAdd;
import client.Tabelas.Insumos;
import client.Tabelas.ManutencaoEquipamento;
import client.Tabelas.ManutencaoLavoura;
import client.Tabelas.Plantio;
import client.Tabelas.PosColheita;
import client.Tabelas.PragasDoencas;
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
import client.tabelasDAO.PragaDoencaDAO;
import client.tabelasDAO.PrePlantioDAO;
import client.tabelasDAO.PropriedadeDAO;

@Controller
@RequestMapping(value = "/GestorCafeeiro")
public class EditarContoller {

	
	
	@RequestMapping("editarlavouras")
	public String EditarLavoura(ModelMap model, HttpSession session) throws SQLException {

		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();

		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);

		return "telas/editaLavoura";
	}
	
	@RequestMapping("deletalavouras")
	public String delete(@RequestParam("id") String id) {
	   
	    System.out.println(id);
	    return "redirect:editaLavoura";
	}
	public String edita(@RequestParam("id") String id) {
		   
	    System.out.println(id);
	    return "redirect:editaLavoura";
	}

	 
	/////////////////////////////Pragas e doenças/////////////////////////////////////
	@RequestMapping("editarpragas")
	public String EditarPragas(Pesquisa pesquisa, ModelMap model, HttpSession session) throws SQLException {

		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();

		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);

		return "telas/editaPragas";
	}

	@RequestMapping("buscapd")
	public String pesquisaPragas(Pesquisa pesquisa, ModelMap model, HttpSession session) throws SQLException {

		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();

		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);

		PragaDoencaDAO pd = new PragaDoencaDAO();
		List<PragasDoencas> pp = new ArrayList<PragasDoencas>();
		pp = pd.pesquisaPragaDoencas(pesquisa.getId(), pesquisa.getAno());
		model.addAttribute("listapd", pp);

		return "telas/editaPragas";
	}


	///////////////////////////////// Despesas////////////////////////////////////
	@RequestMapping("editardespesas")
	public String EditarDespesa(ModelMap model, HttpSession session) throws SQLException {

		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();

		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);

		return "telas/editaDespesas";
	}

	@RequestMapping("BuscaDespesa")
	public String pesquisaDespesa(Pesquisa pesquisa, ModelMap model, HttpSession session) throws SQLException {

		Produtor usuario = (Produtor) session.getAttribute("usuarioLogado");
		List<Propriedade> prop = new ArrayList<Propriedade>();
		PropriedadeDAO p = new PropriedadeDAO();
		prop = p.findPropriedade(usuario.getId_produtor());
		model.addAttribute("lavouras", prop);

		if (pesquisa.getDespesa().equals("pre-plantio")) {

			PrePlantioDAO pp = new PrePlantioDAO();
			List<PrePlantio> list = new ArrayList<PrePlantio>();
			list = pp.BuscaPrePlantio(pesquisa.getId(), pesquisa.getAno());
			if (list.size() > 0) {
				model.addAttribute("preplantio", list);
			}

		} else {
			if (pesquisa.getDespesa().equals("plantio")) {
				PlantioDAO pl = new PlantioDAO();
				List<Plantio> list = new ArrayList<Plantio>();
				list = pl.BuscaPlantio(pesquisa.getId(), pesquisa.getAno());
				if (list.size() > 0) {
					model.addAttribute("plantio", list);
				}
			} else {
				if (pesquisa.getDespesa().equals("colheita")) {
					ColheitaDAO pl = new ColheitaDAO();
					List<Colheita> list = new ArrayList<Colheita>();
					list = pl.BuscaColheita(pesquisa.getId(), pesquisa.getAno());
					if (list.size() > 0) {
						model.addAttribute("colheita", list);
					}
				} else {
					if (pesquisa.getDespesa().equals("pos-colheita")) {
						PosColheitaDAO pl = new PosColheitaDAO();
						List<PosColheita> list = new ArrayList<PosColheita>();
						list = pl.BuscaPosColheita(pesquisa.getId(), pesquisa.getAno());
						if (list.size() > 0) {
							model.addAttribute("poscolheita", list);
						}
					} else {
						if (pesquisa.getDespesa().equals("beneficiamento")) {
							BeneficiamentoDAO pl = new BeneficiamentoDAO();
							List<Beneficiamento> list = new ArrayList<Beneficiamento>();
							list = pl.BuscaBeneficiamento(pesquisa.getId(), pesquisa.getAno());
							if (list.size() > 0) {
								model.addAttribute("beneficiamento", list);
							}
						} else {
							if (pesquisa.getDespesa().equals("aplicação de insumos")) {
								InsumoDAO pl = new InsumoDAO();
								List<Insumos> list = new ArrayList<Insumos>();
								list = pl.BuscaInsumos(pesquisa.getId(), pesquisa.getAno());
								if (list.size() > 0) {
									model.addAttribute("insumo", list);
								}
							} else {
								if (pesquisa.getDespesa().equals("manutenção")) {
									ManutencaoEquipamentosDAO pl = new ManutencaoEquipamentosDAO();
									List<ManutencaoEquipamento> list = new ArrayList<ManutencaoEquipamento>();
									list = pl.BuscaManutencaoEquipamento(pesquisa.getAno());
									if (list.size() > 0) {
										model.addAttribute("manuequipamento", list);
									}

									ManutencaoLavouraDAO ml = new ManutencaoLavouraDAO();
									List<ManutencaoLavoura> list2 = new ArrayList<ManutencaoLavoura>();
									list2 = ml.ListaManutencaoLavoura(pesquisa.getId(), pesquisa.getAno());
									if (list2.size() > 0) {
										model.addAttribute("manulavoura", list2);
									}
								} else {
									if (pesquisa.getDespesa().equals("despesas adicionais")) {
										DespesasAddDAO pl = new DespesasAddDAO();
										List<DespesaAdd> list = new ArrayList<DespesaAdd>();
										list = pl.BuscaDespesaAdd(pesquisa.getId(), pesquisa.getAno());
										if(list.size()>0){
											model.addAttribute("despesaaadd", list);
										}
									}
								}
							}

						}
					}

				}
			}
		}

		return "telas/editaDespesas";
	}

}
