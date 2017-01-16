package client.interceptor;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

@Configuration
public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	  @Override
	  public boolean preHandle(HttpServletRequest request, 
	      HttpServletResponse response,
	      Object controller) throws Exception {
	      String uri = request.getRequestURI();
	      if(uri.endsWith("loginForm") ||
	          uri.endsWith("efetuaLogin") || 
	                   uri.contains("resources")){
	        return true;
	      }

	      if(request.getSession()
	          .getAttribute("usuarioLogado") != null) {
	        return true;
	      }

	      response.sendRedirect("loginForm");
	      return false;
	  }
	}

