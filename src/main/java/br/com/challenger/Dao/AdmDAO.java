package br.com.challenger.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import br.com.challenger.Beans.Usuario;
import br.com.challenger.Conexao.Conexao;

public class AdmDAO {

	
	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	public AdmDAO() throws Exception{
		con = Conexao.Conectar();
	}
	
	public void Encerrar() throws Exception {
		con.close();
	}
	
	public List<Usuario> criarLista() throws Exception {
		stmt = con.prepareStatement("SELECT * FROM CLGR_USUARIO");
		rs = stmt.executeQuery();
		Usuario u = null;
		List<Usuario> listaUsuario = new ArrayList<Usuario>();
		
		if(rs.next()) {
			while(rs.next()) {
				u = new Usuario();
				u.setId(rs.getString("ID_USUARIO"));
				u.setNome(rs.getString("NOME_USUARIO"));
				u.setEmail(rs.getString("EMAIL_USUARIO"));
				u.setSenha(rs.getString("SENHA_USUARIO"));
				u.setCriacao(rs.getString("CRIACAO_USUARIO"));
				listaUsuario.add(u);
			}
		}
		
		return listaUsuario;
		
	}
	
}
