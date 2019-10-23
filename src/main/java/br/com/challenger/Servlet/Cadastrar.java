package br.com.challenger.Servlet;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.challenger.Beans.Usuario;
import br.com.challenger.Bo.BOUsuario;



public class Cadastrar implements Tarefa {

	@Override
	public String processarRequest(HttpServletRequest req, HttpServletResponse resp) {
	
		String user = "";
		String nome = req.getParameter("nome");
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");
		String data = req.getParameter("data");
		Usuario u = new Usuario(nome, email, senha, data);
		try {
			user = BOUsuario.adicionarUsuario(u);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		if(user.equals("ok"))
			return "index.html?cadastrado=true";

		return "index.html?cadastro&erro=" + user;
	}
}

