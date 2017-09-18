package com.alikaraca.spring.mvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import com.alikaraca.spring.mvc.model.Musteri;
@Component("musteriDao")
public class MusteriDao {
	private NamedParameterJdbcTemplate jdbc;
	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc=new NamedParameterJdbcTemplate(jdbc);
	}
	public boolean musteriEkle(Musteri musteri) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("MusteriId",musteri.getMusteriId());
		params.addValue("MusteriAd",musteri.getMusteriAd());
		params.addValue("MusteriSoyad",musteri.getMusteriSoyad());
		params.addValue("MusteriNo",musteri.getMusteriNo());
		params.addValue("MusteriAdres", musteri.getMusteriAdres());
		params.addValue("MusteriEmail", musteri.getMusteriEmail());
		String sql="insert into musteri(MusteriId,MusteriAd,MusteriSoyad,MusteriNo,MusteriAdres,MusteriEmail)"
				+ " values(:MusteriId,:MusteriAd,:MusteriSoyad,:MusteriNo,:MusteriAdres,:MusteriEmail)";
		return jdbc.update(sql, params)==1;
	}
	public List<Musteri> getMusteri(){
		String sql="Select * from musteri";
		return jdbc.query(sql, new RowMapper<Musteri>() {
			@Override
			public Musteri mapRow(ResultSet rs, int rowNum) throws SQLException {
				Musteri musteri=new Musteri();
				musteri.setMusteriId(rs.getInt("MusteriId"));
				musteri.setMusteriAd(rs.getString("MusteriAd"));
				musteri.setMusteriSoyad(rs.getString("MusteriSoyad"));
				musteri.setMusteriNo(rs.getString("MusteriNo"));
				musteri.setMusteriAdres(rs.getString("MusteriAdres"));
				musteri.setMusteriEmail(rs.getString("MusteriEmail"));
				return musteri;
			}
		});
	}
	public boolean delete(Integer musteriId) {
		String sql="delete from musteri where MusteriId=:MusteriId";
		MapSqlParameterSource map=new MapSqlParameterSource("MusteriId",Integer.valueOf(musteriId));
		return jdbc.update(sql,map)==1;
	}
	public boolean update(Musteri musteri) {
		BeanPropertySqlParameterSource param=new BeanPropertySqlParameterSource(musteri);
		String sql="update musteri set MusteriId=:MusteriId, MusteriAd=:MusteriAd, MusteriSoyad=:MusteriSoyad, "
				+ "MusteriNo=:MusteriNo, MusteriAdres=:MusteriAdres, MusteriEmail=:MusteriEmail where MusteriId=:MusteriId";
		return jdbc.update(sql, param)==1; 
	}
	
}
