package com.alikaraca.spring.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.alikaraca.spring.mvc.model.Admin;
@Component("kullanýcýDao")
public class KullanýcýDao {
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc=new NamedParameterJdbcTemplate(jdbc);
	}
	public List<Admin> getAdmin(){
		String sql="select * from admin";
		return jdbc.query(sql,new RowMapper<Admin>() {

			@Override
			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				Admin admin=new Admin();
				admin.setYonetici_Id(rs.getInt("Id_admin"));
				admin.setK_adi(rs.getString("kullaniciAd"));
				admin.setParola(rs.getString("parola"));
				admin.setEnabled(rs.getBoolean("enabled"));
				return admin;
			}
		});
	}

}
