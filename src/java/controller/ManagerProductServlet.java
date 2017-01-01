/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
/**
 *
 * @author Khang
 */
public class ManagerProductServlet extends HttpServlet {
    ProductDAO productDAO = new ProductDAO();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ManagerProductServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManagerProductServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String product_id = request.getParameter("product_id");
        String url = "";
        try {
            switch (command) {
                case "delete":
                    productDAO.delete(Long.parseLong(product_id));
                    url = "/Admin/manager_category.jsp";
                    break;
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String product_name = request.getParameter("product_name");
        String product_image = request.getParameter("product_image");
        String product_color = request.getParameter("product_color");
        String product_content = request.getParameter("product_content");
        String product_metatitle = request.getParameter("product_metatitle");
        String product_metakeywords = request.getParameter("product_metakeywords");
        String product_metadescription = request.getParameter("product_metadescription");
        String product_cpudetail = request.getParameter("product_cpudetail");
        String product_ramdetail = request.getParameter("product_ramdetail");
        String product_storagedetail = request.getParameter("product_storagedetail");
        String product_screen = request.getParameter("product_screen");
        String product_screendetail = request.getParameter("product_screendetail");
        String product_vga = request.getParameter("product_vga");
        String product_sound = request.getParameter("product_sound");
        String product_dvd = request.getParameter("product_dvd");
        String product_connect = request.getParameter("product_connect");
        String product_lan = request.getParameter("product_lan");
        String product_wifi = request.getParameter("product_wifi");
        String product_wireless = request.getParameter("product_wireless");
        String product_cardreader = request.getParameter("product_cardreader");
        String product_webcam = request.getParameter("product_webcam");
        String product_pin = request.getParameter("product_pin");
        String product_os = request.getParameter("product_os");
        String product_size = request.getParameter("product_size");
        String product_weight = request.getParameter("product_weight");
        String product_material = request.getParameter("product_material");
        int product_price = request.getParameter("product_price");
        String  = request.getParameter("");
        String  = request.getParameter("");
        String  = request.getParameter("");
        String  = request.getParameter("");
        String  = request.getParameter("");
        String  = request.getParameter("");
        String url = "", error = "";
        if (tenDanhMuc.equals("")) {
            error = "Vui lòng nhập tên danh mục!";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                        categoryDAO.insert(new Category(new Date().getTime()%1000, tenDanhMuc, mt, mk, md));
                        url = "/Admin/manager_category.jsp";
                        break;
                    case "update":
                        categoryDAO.update(new Category(Long.parseLong(request.getParameter("category_id")),tenDanhMuc, mt, mk, md));
                        url = "/Admin/manager_category.jsp";
                        break;
                }
            } else {
                url = "/Admin/insert_category.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

}
