package client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/GestorCafeeiro")

public class RelatoriosController {
	
	@RequestMapping("relatorioEspecifico")
	  public String relatorioespecifico() {
	    return "telas/relatorioEspecifico";
	  }
	
	@RequestMapping("relatorioGeral")
	  public String relatoriogeral() {
	    return "telas/relatorioGeral";
	  }
}
