package com.util.www;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import com.jdbc.www.JDBConnect;

public class FaqDAO extends JDBConnect {
	
	public FaqDAO(ServletContext application) {
		super(application);
	}
	
	
	public int insert(FaqDTO dto) {
		int result = 0;
		String sql;
		
		try {
			sql = "INSERT INTO FAQ (TITLE,CONTENT) VALUES (?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public List<FaqDTO> getList(Map<String, Object> map) {
		
		List<FaqDTO> list = new ArrayList<FaqDTO>();
		String sql = "SELECT * FROM FAQ ORDER BY faqno";
		if(map.get("searchWord") != null) {
			sql = String.format("SELECT * FROM FAQ WHERE TITLE LIKE '%%%s%%' ORDER BY faqno", map.get("searchWord"));
		}
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				FaqDTO dto = new FaqDTO();
				dto.setFaqno(rs.getInt("faqno"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegDate(rs.getDate("regdate"));
				list.add(dto);
			}
		} catch (Exception e) {
			
		}
		return list;
	}
	public FaqDTO read (int faqno) {
		String sql = "SELECT * FROM FAQ WHERE faqno = ?";
		FaqDTO dto = new FaqDTO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqno);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dto.setFaqno(rs.getInt("FAQNO"));
				dto.setTitle(rs.getString("TITLE"));
				dto.setContent(rs.getString("CONTENT"));
				dto.setRegDate(rs.getDate("REGDATE"));
			}
		} catch (SQLException e) {
			
		}
		return dto;
	}
	public int delete (int faqno) {
		String sql = "DELETE FROM FAQ WHERE faqno = ?";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, faqno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
		}
		return result;
	}
	public int modify (FaqDTO dto) {
		int result = 0;
		String sql = "UPDATE FAQ SET TITLE = ?, CONTENT = ? WHERE faqno = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getFaqno());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
		}
		return result;
	}
}
