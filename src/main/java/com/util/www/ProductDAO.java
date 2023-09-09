package com.util.www;

import java.sql.SQLException;
import java.util.*;

import javax.servlet.ServletContext;

import com.jdbc.www.JDBConnect;

public class ProductDAO extends JDBConnect {

	public ProductDAO(ServletContext application) {
		super(application);
	}


	public List<ProductDTO> getList(Map<String, Object> map) {

		List<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM PRODUCT ";
		if(map.get("searchWord") != null) {
			sql = String.format("SELECT * FROM PRODUCT WHERE PNAME LIKE '%%%s%%' ORDER BY PNO", map.get("searchWord"));
		}

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {

				ProductDTO dto = new ProductDTO();
				dto.setPno(rs.getInt(1));
				dto.setSku(rs.getString(2));
				dto.setpName(rs.getString(3));
				dto.setDescription(rs.getString(4));
				dto.setDescription2(rs.getString(5));
				dto.setPrice(rs.getInt(6));
				dto.setStock(rs.getInt(7));
				dto.setWeight(rs.getString(8));
				dto.setDimensions(rs.getString(9));
				dto.setShipping_price(rs.getInt(10));
				dto.setCategory(rs.getString(11));
				dto.setFileName(rs.getString(12));
				dto.setFileName2(rs.getString(13));
				dto.setFileName3(rs.getString(14));
				dto.setFileName4(rs.getString(15));
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public ProductDTO read(int pno) {

		String sql = "SELECT * FROM PRODUCT WHERE PNO = ?";
		ProductDTO dto = new ProductDTO();

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rs = pstmt.executeQuery();

			if(rs.next()) {

				dto.setPno(rs.getInt(1));
				dto.setSku(rs.getString(2));
				dto.setpName(rs.getString(3));
				dto.setDescription(rs.getString(4));
				dto.setDescription2(rs.getString(5));
				dto.setPrice(rs.getInt(6));
				dto.setStock(rs.getInt(7));
				dto.setWeight(rs.getString(8));
				dto.setDimensions(rs.getString(9));
				dto.setShipping_price(rs.getInt(10));
				dto.setCategory(rs.getString(11));
				dto.setFileName(rs.getString(12));
				dto.setFileName2(rs.getString(13));
				dto.setFileName3(rs.getString(14));
				dto.setFileName4(rs.getString(15));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public int insert(ProductDTO dto) {

		int result = 0;
		String sql = "INSERT INTO PRODUCT VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getPno());
			pstmt.setString(2, dto.getSku());
			pstmt.setString(3, dto.getpName());
			pstmt.setString(4, dto.getDescription());
			pstmt.setString(5, dto.getDescription2());
			pstmt.setInt(6, dto.getPrice());
			pstmt.setInt(7, dto.getStock());
			pstmt.setString(8, dto.getWeight());
			pstmt.setString(9, dto.getDimensions());
			pstmt.setInt(10, dto.getShipping_price());
			pstmt.setString(11, dto.getCategory());
			pstmt.setString(12, dto.getFileName());
			pstmt.setString(13, dto.getFileName2());
			pstmt.setString(14, dto.getFileName3());
			pstmt.setString(15, dto.getFileName4());
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int delete(String pno) {

		int result = 0;
		String sql = "DELETE FROM PRODUCT WHERE PNO = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	public List<ProductDTO> getList(String category) {

		List<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM PRODUCT ";

		switch (category) {
		case "flowers":
			sql = sql + "WHERE CATEGORY LIKE 'Flowers_%'";
			break;
		case "bouquet":
			sql = sql + "WHERE CATEGORY = 'Flowers_Bouquet'";
			break;
		case "basket":
			sql = sql + "WHERE CATEGORY = 'Flowers_Basket'";
			break;
		case "box":
			sql = sql + "WHERE CATEGORY = 'Flowers_Box'";
			break;
		case "plants":
			sql = sql + "WHERE CATEGORY LIKE 'Plants_%'";
			break;
		case "cactus":
			sql = sql + "WHERE CATEGORY = 'Plants_Cactus'";
			break;
		case "air":
			sql = sql + "WHERE CATEGORY = 'Plants_Air'";
			break;
		case "orchid":
			sql = sql + "WHERE CATEGORY = 'Plants_Orchid'";
			break;
		case "special":
			sql = sql + "WHERE CATEGORY LIKE 'Special_Day_%'";
			break;
		case "mothersday":
			sql = sql + "WHERE CATEGORY = 'Special_Day_mothersday'";
			break;
		case "gradu":
			sql = sql + "WHERE CATEGORY = 'Special_Day_gradu'";
			break;
		case "christ":
			sql = sql + "WHERE CATEGORY = 'Special_Day_christ'";
			break;
		case "etc":
			sql = sql + "WHERE CATEGORY = 'etc'";
			break;
		}

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {

				ProductDTO dto = new ProductDTO();
				dto.setPno(rs.getInt(1));
				dto.setSku(rs.getString(2));
				dto.setpName(rs.getString(3));
				dto.setDescription(rs.getString(4));
				dto.setDescription2(rs.getString(5));
				dto.setPrice(rs.getInt(6));
				dto.setStock(rs.getInt(7));
				dto.setWeight(rs.getString(8));
				dto.setDimensions(rs.getString(9));
				dto.setShipping_price(rs.getInt(10));
				dto.setCategory(rs.getString(11));
				dto.setFileName(rs.getString(12));
				dto.setFileName2(rs.getString(13));
				dto.setFileName3(rs.getString(14));
				dto.setFileName4(rs.getString(15));
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<ProductDTO> getNewList() {

		List<ProductDTO> list = new ArrayList<ProductDTO>();
		String sql = "SELECT * FROM (SELECT * FROM PRODUCT ORDER BY PNO DESC) PRODUCT WHERE ROWNUM <= 6";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {

				ProductDTO dto = new ProductDTO();
				dto.setPno(rs.getInt(1));
				dto.setSku(rs.getString(2));
				dto.setpName(rs.getString(3));
				dto.setDescription(rs.getString(4));
				dto.setDescription2(rs.getString(5));
				dto.setPrice(rs.getInt(6));
				dto.setStock(rs.getInt(7));
				dto.setWeight(rs.getString(8));
				dto.setDimensions(rs.getString(9));
				dto.setShipping_price(rs.getInt(10));
				dto.setCategory(rs.getString(11));
				dto.setFileName(rs.getString(12));
				dto.setFileName2(rs.getString(13));
				dto.setFileName3(rs.getString(14));
				dto.setFileName4(rs.getString(15));
				list.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public int update(ProductDTO dto) {
		
		String sql = "UPDATE PRODUCT SET SKU = ?, PNAME = ?, DESCRIPTION = ?, DESCRIPTION2 = ?, PRICE = ?, STOCK = ?, WEIGHT = ?, DIMENSIONS = ?, CATEGORY = ?, FILENAME = ?, FILENAME2 = ?, FILENAME3 = ?, FILENAME4 = ? WHERE PNO = ?";
		int result = 0;
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSku());
			pstmt.setString(2, dto.getpName());
			pstmt.setString(3, dto.getDescription());
			pstmt.setString(4, dto.getDescription2());
			pstmt.setInt(5, dto.getPrice());
			pstmt.setInt(6, dto.getStock());
			pstmt.setString(7, dto.getWeight());
			pstmt.setString(8, dto.getDimensions());
			pstmt.setString(9, dto.getCategory());
			pstmt.setString(10, dto.getFileName());
			pstmt.setString(11, dto.getFileName2());
			pstmt.setString(12, dto.getFileName3());
			pstmt.setString(13, dto.getFileName4());
			pstmt.setInt(14, dto.getPno());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
