package com.util.www;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import com.jdbc.www.JDBConnect;

public class NoticeDAO extends JDBConnect {
	
	public NoticeDAO(ServletContext application) {
		super(application);
	}
	
	
	public int insert(NoticeDTO dto) {
		int result = 0;
		String sql;
		
		try {
			sql = "INSERT INTO NOTICE (TITLE,CONTENT) VALUES (?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			
		}
		return result;
	}
	
	public List<NoticeDTO> getList(Map<String, Object> map) {
		
		List<NoticeDTO> list = new ArrayList<NoticeDTO>();
		String sql = "SELECT * FROM NOTICE ORDER BY BNO";
		if(map.get("searchWord") != null) {
			sql = String.format("SELECT * FROM NOTICE WHERE TITLE LIKE '%%%s%%' ORDER BY BNO", map.get("searchWord"));
		}
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				NoticeDTO dto = new NoticeDTO();
				dto.setBno(rs.getInt("bno"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setRegDate(rs.getDate("regdate"));
				list.add(dto);
			}
		} catch (Exception e) {
			
		}
		return list;
	}
	public NoticeDTO read (int bno) {
		String sql = "SELECT * FROM NOTICE WHERE BNO = ?";
		NoticeDTO dto = new NoticeDTO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dto.setBno(rs.getInt("BNO"));
				dto.setTitle(rs.getString("TITLE"));
				dto.setContent(rs.getString("CONTENT"));
				dto.setRegDate(rs.getDate("REGDATE"));
			}
		} catch (SQLException e) {
			
		}
		return dto;
	}
	public int delete (int bno) {
		String sql = "DELETE FROM NOTICE WHERE BNO = ?";
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
		}
		return result;
	}
	public int modify (NoticeDTO dto) {
		int result = 0;
		String sql = "UPDATE NOTICE SET TITLE = ?, CONTENT = ? WHERE BNO = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getBno());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
		}
		return result;
	}
}
