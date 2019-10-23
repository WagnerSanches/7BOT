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
		stmt = con.prepareStatement("SELECT * FROM SETEBOT_ALUNO");
		rs = stmt.executeQuery();
		Usuario u = null;
		List<Usuario> listaUsuario = new ArrayList<Usuario>();
		
		if(rs.next()) {
			while(rs.next()) {
				u = new Usuario();
				System.out.println(rs.getString("ID_ALUNO"));
				u.setId(rs.getString("ID_ALUNO"));
				u.setNome(rs.getString("NOME"));
				u.setEmail(rs.getString("EMAIL"));
				u.setData(rs.getString("DATA_NASC"));
				listaUsuario.add(u);
			}
		}
		
		return listaUsuario;
		
	}
	
}
