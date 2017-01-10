package controller;

import dao.AdminDAO;
import helpers.encrypt;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Admin;
public class AdminServlet extends HttpServlet {
    AdminDAO adminDAO = new AdminDAO();
    encrypt encrypt = new encrypt();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");        
        String url = "";
        Admin admin = new Admin();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":
                admin.setAdminID(new java.util.Date().getTime());
                admin.setAdminfullName(request.getParameter("fullname"));
                admin.setAdminAvatar(request.getParameter("avataar"));
                admin.setAdminEmail(request.getParameter("email"));
                admin.setAdminPass(encrypt.hashmd5(request.getParameter("email"), request.getParameter("password")));
                admin.setPqID(new java.util.Date().getTime());
                adminDAO.insertAdmin(admin);
                url = "/login.jsp";
                break;
            case "login":
                session.setAttribute("error", "");
                admin = adminDAO.login(request.getParameter("email"), encrypt.hashmd5(request.getParameter("email"), request.getParameter("password")));
                {
                    try { 
                        for (Admin ds : adminDAO.getAdminByEmail(request.getParameter("email")))
                        {
                            session.setAttribute("id", ds.getAdminID());
                            session.setAttribute("name", ds.getAdminfullName());
                            session.setAttribute("address", ds.getAdminEmail());
                            session.setAttribute("phone", ds.getPqID());
                        }
                    } catch (SQLException ex) {
                        Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                if (admin != null) {
                    session.setAttribute("admin", admin);
                    url = "../Admin/index.jsp";
                    break;
                }else{
                    session.setAttribute("error", "Email hoặc mật khẩu không đúng.!");
                    url = "../Admin/login.jsp";
                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
