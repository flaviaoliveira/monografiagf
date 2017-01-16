package client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/GestorCafeeiro")

public class RelatoriosController {
	
	@RequestMapping("relatorios")
	  public String cadastro() {
	    return "telas/relatorio";
	  }

}
