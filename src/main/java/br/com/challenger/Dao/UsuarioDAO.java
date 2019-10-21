package br.com.challenger.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.challenger.Beans.Usuario;
import br.com.challenger.Conexao.Conexao;

public class UsuarioDAO {
	
	private Connection con;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	public UsuarioDAO() throws Exception{
		con = Conexao.Conectar();
	}
	
	public void Encerrar() throws Exception {
		con.close();
	}
	
	public int getUser(String email) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM CLGR_USUARIO WHERE EMAIL_USUARIO = ?");
		stmt.setString(1, email);
		return stmt.executeUpdate();
	}
	
	public int getUser(int id) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM CLGR_USUARIO WHERE ID_USUARIO = ?");
		stmt.setInt(1, id);
		return stmt.executeUpdate();
	}
	
	
	public Usuario authUser(String email, String senha) throws Exception {
		stmt = con.prepareStatement("SELECT * FROM CLGR_USUARIO WHERE EMAIL_USUARIO = ? and SENHA_USUARIO = ?");
		
		stmt.setString(1, email);
		stmt.setString(2, senha);
		
		
		rs = stmt.executeQuery();
		
		if(rs.next()) {
			return new Usuario(rs.getString("NOME_USUARIO"),
							   rs.getString("EMAIL_USUARIO"),
							   rs.getString("SENHA_USUARIO"));
		}
		
		return new Usuario();
		
	}
	
	public boolean deleteUser(int id) throws Exception {
		
		stmt = con.prepareStatement("DELETE FROM CLGR_USUARIO WHERE ID_USUARIO = ?");
		stmt.setInt(1, id);
		
		return stmt.executeUpdate() > 0 ? true : false;
		
	}
	
	
	public int insertUsuario(Usuario u) throws Exception {

		stmt = con.prepareStatement("INSERT INTO CLGR_USUARIO VALUES(id_user.nextval, ?, ?, ?, ?)");
		stmt.setString(1, u.getNome());
		stmt.setString(2, u.getEmail());
		stmt.setString(3, u.getSenha());
		stmt.setString(4, u.getData());
		
		return stmt.executeUpdate();
	}
	
	
	
	
}
