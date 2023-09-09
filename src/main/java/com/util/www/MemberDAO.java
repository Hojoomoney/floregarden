package com.util.www;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import com.jdbc.www.JDBConnect;


public class MemberDAO extends JDBConnect {
	
	public MemberDAO(ServletContext application) {
		super(application);
	}
	
	public ResultSet login(String userId) {
		
		String sql = "SELECT * FROM MEMBER WHERE USERID = ?";
		try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userId);
		rs = pstmt.executeQuery();
		

	} catch (SQLException e) {
		e.printStackTrace();
	} 
		return rs;
	}
	
	public int insert(MemberDTO dto) {
		int result = 0;
		String sql;
		try {
			result = 0;
			sql = "INSERT INTO MEMBER (USERID, USERPWD, USERNAME, EMAIL, TELEPHONE, ADDRESS) VALUES (?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,dto.getUserId());
			pstmt.setString(2,dto.getUserPwd());
			pstmt.setString(3,dto.getUserName());
			pstmt.setString(4,dto.getEmail());
			pstmt.setString(5,dto.getTelephone());
			pstmt.setString(6,dto.getAddress());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	public MemberDTO select(String userId) {
		String sql;
		MemberDTO dto = new MemberDTO();
		try {
			sql = "SELECT * FROM MEMBER WHERE USERID = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setUno(rs.getInt(1));
				dto.setUserId(rs.getString(2));
				dto.setUserPwd(rs.getString(3));
				dto.setUserName(rs.getString(4));
				dto.setEmail(rs.getString(5));
				dto.setTelephone(rs.getString(6));
				dto.setAddress(rs.getString(7));
				dto.setRegDate(rs.getDate(8));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	public int modify(MemberDTO dto) {
		int result = 0;
		String sql = "UPDATE MEMBER SET USERPWD = ?, USERNAME = ?, EMAIL = ?, TELEPHONE = ?, ADDRESS = ? WHERE UNO = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUserPwd());
			pstmt.setString(2, dto.getUserName());
			pstmt.setString(3, dto.getEmail());
			pstmt.setString(4, dto.getTelephone());
			pstmt.setString(5, dto.getAddress());
			pstmt.setInt(6, dto.getUno());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
		}
		return result;
		
	}
	public int delete(String userId) {
		int result = 0;
		String sql = "DELETE FROM MEMBER WHERE USERID = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			
		}
		return result;
	}
	public List<MemberDTO> getList() {
		String sql = "SELECT * FROM MEMBER ORDER BY UNO";
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setUno(rs.getInt(1));
				dto.setUserId(rs.getString(2));
				dto.setUserPwd(rs.getString(3));
				dto.setUserName(rs.getString(4));
				dto.setEmail(rs.getString(5));
				dto.setTelephone(rs.getString(6));
				dto.setAddress(rs.getString(7));
				dto.setRegDate(rs.getDate(8));
				list.add(dto);
			}
		} catch (Exception e) {
			
		}
		return list;
	}
	public MemberDTO read (int uno) {
		String sql = "SELECT * FROM MEMBER WHERE UNO = ?";
		MemberDTO dto = new MemberDTO();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, uno);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				dto.setUno(rs.getInt(1));
				dto.setUserId(rs.getString(2));
				dto.setUserPwd(rs.getString(3));
				dto.setUserName(rs.getString(4));
				dto.setEmail(rs.getString(5));
				dto.setTelephone(rs.getString(6));
				dto.setAddress(rs.getString(7));
				dto.setRegDate(rs.getDate(8));
			}
		} catch (SQLException e) {
			
		}
		return dto;
	}
}
