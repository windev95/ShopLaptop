package controller;

import dao.UsersDAO;
import helpers.encrypt;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;

public class UserServlet extends HttpServlet {
    UsersDAO usersDAO = new UsersDAO();
    encrypt encrypt = new encrypt();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":
//                users.setUserID(new java.util.Date().getTime());
//                users.setUserID(3);
                users.setUserFullName(request.getParameter("fullname"));
                users.setUserEmail(request.getParameter("email"));
                users.setUserPass(encrypt.hashmd5(request.getParameter("password")));
                usersDAO.insertUser(users);
                url = "/login.jsp";
                break;
            case "login":
                session.setAttribute("error", "");
                users = usersDAO.login(request.getParameter("email"), encrypt.hashmd5(request.getParameter("password")));
                String name = usersDAO.checkName(request.getParameter("email"));
                if (users != null) {
                    session.setAttribute("users", users);
                    url = "/index.jsp";
                    break;
                }else{
                    session.setAttribute("error", "Email hoặc mật khẩu không đúng.!");
                    url = "/login.jsp";
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
