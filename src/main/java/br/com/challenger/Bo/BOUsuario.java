package br.com.challenger.Bo;

import br.com.challenger.Beans.Usuario;
import br.com.challenger.Dao.UsuarioDAO;

public class BOUsuario {
	
	public static String autenticarUsuario(String email, String senha) throws Exception{
		UsuarioDAO uDAO = new UsuarioDAO();
		
		if(email.equals("")) {
			return "Email em branco";
		}
		if(email.indexOf("@") < 1) {
			return "Email invalido: Não possui arroba ( @ )";
		}
		if(email.length() < 8) {
			return "Email invalido: poucos caracteres para ser um email";
		}
		
		if(senha.equals("")) {
			return "Senha em branco";
		}
		
		if(senha.length() < 8) {
			return "Senha é menor que 8 caracteres!";
		}
		
		Usuario autenticado = uDAO.authUser(email, senha);
		uDAO.Encerrar();
		
		if(autenticado.getNome() == null) {
			return "Senha ou/e Email não estão corretos!";
		}
		return autenticado.getNome() + ";" + autenticado.getEmail() + ";" + autenticado.getSenha();
		
		
	}
	
	public static String excluirUsuario(int codigo) throws Exception{
		UsuarioDAO uDAO = new UsuarioDAO();
		
		if(codigo < 1) 
			return "Codigo invalido!";
		
		if(uDAO.getUser(codigo) < 1) 
			return "Usuario não existe!";
		
		boolean excluido = uDAO.deleteUser(codigo);
		uDAO.Encerrar();
		
		if(!excluido)
			return "Erro em excluir!";
		
		return "ok";
	}
	
	public static String adicionarUsuario(Usuario objUsuario) throws Exception{
		
		UsuarioDAO uDAO = new UsuarioDAO();

		if(objUsuario.getNome().equals(""))
			return "Nome em branco";
			
		if(uDAO.getUser(objUsuario.getEmail()) > 0) 
			return "Email já cadastrado";
		
		if(objUsuario.getEmail().equals(""))
			return "Email em branco";
		
		if(objUsuario.getEmail().indexOf("@") < 1) 
			return "Email não possui arroba ( @ )";
		
		
		for(int c = 0; c <= 9; c++) {
			if(objUsuario.getNome().equals(c)) 
				return "O nome não pode possuir numeros!";
		}
		
		if(objUsuario.getSenha().length() < 8) 
			return "A senha não pode ter menos que 9 caracteres";
		
		
		int adicionado = uDAO.insertUsuario(objUsuario);
		uDAO.Encerrar();
		
		if(adicionado < 1) {
			return "Erro ao adicionar";
		}
		
		return "ok";
	}
	
}
