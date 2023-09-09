package com.controller.www;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.www.ProductDAO;
import com.util.www.ProductDTO;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("*.pro")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());

		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		String ctxPath = request.getContextPath();
		System.out.println("ctxPath : " + ctxPath);
		String cmd = uri.substring(ctxPath.length());
		System.out.println("cmd : " + cmd);

		if(cmd.equals("/product/list.pro")) {
			System.out.println("list");
			list(request, response);
		}
		if(cmd.equals("/product/read.pro")) {
			System.out.println("read");
			read(request, response);
		}
		if(cmd.equals("/product/insert.pro")) {
			System.out.println("insert");
			insert(request, response);
		}
		if(cmd.equals("/product/delete.pro")) {
			System.out.println("delete");
			delete(request, response);
		}
		if(cmd.equals("/product/category.pro")) {
			System.out.println("category");
			category(request, response);
		}
		if(cmd.equals("/product/detail.pro")) {
			System.out.println("detail");
			readDetail(request, response);
		}
		if(cmd.equals("/product/addCart.pro")) {
			System.out.println("addCart");
			addCart(request, response);
		}
		if(cmd.equals("/product/moveCart.pro")) {
			System.out.println("moveCart");
			moveCart(request, response);
		}
		if(cmd.equals("/product/removeItem.pro")) {
			System.out.println("removeItem");
			removeItem(request, response);
		}
		if(cmd.equals("/product/removeCart.pro")) {
			System.out.println("removeItem");
			removeCart(request, response);
		}
		if(cmd.equals("/product/search.pro")) {
			System.out.println("search");
			search(request, response);
		}
		if(cmd.equals("/product/getUpdateProduct.pro")) {
			System.out.println("getUpdateProduct");
			getUpdateProduct(request, response);
		}
		if(cmd.equals("/product/update.pro")) {
			System.out.println("update");
			update(request, response);
		}


	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}


	private void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		Map<String, Object> param = new HashMap<String, Object>();
		ProductDAO dao = new ProductDAO(application);
		String searchWord = request.getParameter("searchWord");
		if (searchWord != null) {
			param.put("searchWord", searchWord);
		}
		List<ProductDTO> list = dao.getList(param);
		dao.close();

		request.setAttribute("pList", list);
		request.getRequestDispatcher("/admin/product.jsp").forward(request, response);

	}

	private void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		ProductDAO dao = new ProductDAO(application);
		int pno = Integer.parseInt(request.getParameter("pno"));

		ProductDTO dto = dao.read(pno);

		request.setAttribute("product", dto);
		request.getRequestDispatcher("/admin/product/productDetail.jsp").forward(request, response);

	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		ProductDAO dao = new ProductDAO(application);
		ProductDTO dto = new ProductDTO();
		String path = application.getRealPath("/upload");
		int size = 20000000;
		MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		int fileIndex = 1; // 파일 인덱스 초기화

		while (files.hasMoreElements()) {
			String name = (String) files.nextElement();
			String fileName = multi.getFilesystemName(name);
			System.out.println(fileIndex + ":" + fileName);
			// 파일 이름을 dto의 해당 필드에 저장
			switch (fileIndex) {
			case 1:
				dto.setFileName2(fileName);
				break;
			case 2:
				dto.setFileName4(fileName);
				break;
			case 3:
				dto.setFileName3(fileName);
				break;
			case 4:
				dto.setFileName(fileName);
				break;
			default:
				break;
			}

			fileIndex++; // 파일 인덱스 증가
		}

		dto.setPno(Integer.parseInt(multi.getParameter("pno")));
		dto.setSku(multi.getParameter("sku"));
		dto.setpName(multi.getParameter("pName"));
		dto.setDescription(multi.getParameter("description"));
		dto.setDescription2(multi.getParameter("description2"));
		dto.setPrice(Integer.parseInt(multi.getParameter("price")));
		dto.setStock(Integer.parseInt(multi.getParameter("stock")));
		dto.setWeight(multi.getParameter("weight"));
		dto.setDimensions(multi.getParameter("dimensions"));
		dto.setShipping_price(Integer.parseInt(multi.getParameter("shipping_price")));
		dto.setCategory(multi.getParameter("category"));
		int result = dao.insert(dto);
		dao.close();

		if(result == 1) {
			response.sendRedirect(request.getContextPath() + "/product/list.pro");
		}

	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		ProductDAO dao = new ProductDAO(application);
		String pno = request.getParameter("pno");

		int result = dao.delete(pno);

		if(result == 1) {

			response.sendRedirect(request.getContextPath() + "/product/list.pro");
		}


	}

	private void category(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		ProductDAO dao = new ProductDAO(application);
		String category = request.getParameter("category");
		List<ProductDTO> list = dao.getList(category);
		dao.close();

		request.setAttribute("product", list);
		request.getRequestDispatcher("/category.jsp?category=" + category).forward(request, response);


	}
	private void readDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		ProductDAO dao = new ProductDAO(application);
		int pno = Integer.parseInt(request.getParameter("pno"));

		ProductDTO dto = dao.read(pno);

		request.setAttribute("detail", dto);
		request.getRequestDispatcher("/product.jsp").forward(request, response);

	}
	private void addCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		ProductDAO dao = new ProductDAO(application);
		HttpSession session = request.getSession();
		int index = Integer.parseInt(request.getParameter("index"));
		/* int quantity = Integer.parseInt(request.getParameter("count")); */
		int pno = Integer.parseInt(request.getParameter("pno"));
		ProductDTO selectedItem = dao.read(pno);
		List<ProductDTO> cartList = (ArrayList<ProductDTO>) session.getAttribute("cartList");
		String category = request.getParameter("category");
		if(cartList == null) {
			cartList = new ArrayList<ProductDTO>();
			session.setAttribute("cartId", session.getId());
			session.setAttribute("cartList", cartList);
		}
		int count = 0;
		ProductDTO cartItem = new ProductDTO();
		for(int i = 0; i < cartList.size(); i++) {
			cartItem = cartList.get(i);

			if(cartItem.getPno() == pno ) {
				count++;
				int cartQuantity = cartItem.getQuantity() + 1;
				cartItem.setQuantity(cartQuantity);
			}
		}
		if (count == 0) {
			selectedItem.setQuantity(1);
			cartList.add(selectedItem);
		}
		if(index == 1) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} else if (index == 2) {
			response.sendRedirect(request.getContextPath() + "/product/category.pro?category="+ category);
		} else if (index == 3) {
		response.sendRedirect(request.getContextPath() + "/product/detail.pro?pno=" + pno);
		} 

	}
	private void moveCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		ProductDAO dao = new ProductDAO(application);
		HttpSession session = request.getSession();

		/* int quantity = Integer.parseInt(request.getParameter("count")); */
		int pno = Integer.parseInt(request.getParameter("pno"));
		ProductDTO selectedItem = dao.read(pno);
		List<ProductDTO> cartList = (ArrayList<ProductDTO>) session.getAttribute("cartList");

		if(cartList == null) {
			cartList = new ArrayList<ProductDTO>();
			session.setAttribute("cartId", session.getId());
			session.setAttribute("cartList", cartList);
		}
		int count = 0;
		ProductDTO cartItem = new ProductDTO();
		for(int i = 0; i < cartList.size(); i++) {
			cartItem = cartList.get(i);

			if(cartItem.getPno() == pno ) {
				count++;
				int cartQuantity = cartItem.getQuantity() + 1;
				cartItem.setQuantity(cartQuantity);
			}
		}
		if (count == 0) {
			selectedItem.setQuantity(1);
			cartList.add(selectedItem);
		}

		response.sendRedirect(request.getContextPath() + "/cartList.jsp");


	}

	private void removeItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		int index = Integer.parseInt(request.getParameter("index"));
		int pno = Integer.parseInt(request.getParameter("pno"));
		List<ProductDTO> cartList = (ArrayList<ProductDTO>) session.getAttribute("cartList");
		ProductDTO selectedItem = new ProductDTO();
		for (int i = 0; i < cartList.size(); i++) {
			selectedItem = cartList.get(i);
			
			if(selectedItem.getPno() == pno) {
				cartList.remove(selectedItem);
			}
		}
		if(index == 1) {
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} else {
		response.sendRedirect(request.getContextPath() + "/cartList.jsp");
		}
	}
	private void removeCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		session.removeAttribute("cartList");
		response.sendRedirect(request.getContextPath() + "/cartList.jsp");
	}
	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ServletContext application = request.getServletContext();
		Map<String, Object> param = new HashMap<String, Object>();
		ProductDAO dao = new ProductDAO(application);
		String searchWord = request.getParameter("searchWord");
		if (searchWord != null) {
			param.put("searchWord", searchWord);
		}
		List<ProductDTO> list = dao.getList(param);
		dao.close();
		
		request.setAttribute("searchList", list);
		request.getRequestDispatcher("/searchResult.jsp").forward(request, response);

	}
	private void getUpdateProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = request.getServletContext();
		HttpSession session = request.getSession();
		int pno = Integer.parseInt(request.getParameter("pno"));
		ProductDAO dao = new ProductDAO(application);
		ProductDTO dto = dao.read(pno);
		dao.close();
		request.setAttribute("product", dto);
		request.getRequestDispatcher("/admin/product/update.jsp").forward(request, response);
		
		
	}
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ServletContext application = request.getServletContext();
		ProductDAO dao = new ProductDAO(application);
		ProductDTO dto = new ProductDTO();
		String path = application.getRealPath("/upload");
		int size = 20000000;
		MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());
		Enumeration files = multi.getFileNames();
		int fileIndex = 1; // 파일 인덱스 초기화
		while (files.hasMoreElements()) {
			String name = (String) files.nextElement();
			String fileName = multi.getFilesystemName(name);
			System.out.println(fileIndex + ":" + fileName);
			// 파일 이름을 dto의 해당 필드에 저장
			switch (fileIndex) {
			case 1:
				dto.setFileName2(fileName);
				break;
			case 2:
				dto.setFileName4(fileName);
				break;
			case 3:
				dto.setFileName3(fileName);
				break;
			case 4:
				dto.setFileName(fileName);
				break;
			default:
				break;
			}

			fileIndex++; // 파일 인덱스 증가
		}
		/*
		 * System.out.println(multi.getParameter("pno"));
		 * System.out.println(multi.getParameter("sku"));
		 * System.out.println(multi.getParameter("pName"));
		 * System.out.println(multi.getParameter("description"));
		 * System.out.println(multi.getParameter("description2"));
		 */
		dto.setPno(Integer.parseInt(multi.getParameter("pno")));
		dto.setSku(multi.getParameter("sku"));
		dto.setpName(multi.getParameter("pName"));
		dto.setDescription(multi.getParameter("description"));
		dto.setDescription2(multi.getParameter("description2"));
		dto.setPrice(Integer.parseInt(multi.getParameter("price")));
		dto.setStock(Integer.parseInt(multi.getParameter("stock")));
		dto.setWeight(multi.getParameter("weight"));
		dto.setDimensions(multi.getParameter("dimensions"));
		dto.setShipping_price(Integer.parseInt(multi.getParameter("shipping_price")));
		dto.setCategory(multi.getParameter("category"));
		
		int result = dao.update(dto);
		
		if(result == 1) {
			System.out.println("성공");
			response.sendRedirect(request.getContextPath() + "/product/list.pro");
		} else {
			System.out.println("오류");
		}
	}
}
