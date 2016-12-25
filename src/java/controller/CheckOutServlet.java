package controller;
import dao.BillDAO;
import dao.BillDetailDAO;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Bill;
import model.BillDetail;
import model.Cart;
import model.Item;
import model.Users;
import java.io.PrintWriter;
//import tools.SendMail;

public class CheckOutServlet extends HttpServlet {
    private final BillDAO billDAO = new BillDAO();
    private final BillDetailDAO billDetailDAO = new BillDetailDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckOutServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutServlet at " + request.getContextPath() + "</h1>");
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
        String payment = request.getParameter("payment");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        Users users = (Users) session.getAttribute("user");
        try {
            long billID = new Date().getTime();
            Bill bill = new Bill();
            bill.setBillID(billID);
            bill.setBillName(name);
            bill.setBillPhone(Integer.parseInt(phone));
            bill.setBillAddress(address);
            bill.setBillDate(new Timestamp(new Date().getTime()));            
            bill.setBillPayment(payment);
            bill.setBillPaid(0);
            bill.setBillFinish(0);
            bill.setBillTotal(567);
            bill.setUserID(users.getUserID());          
            billDAO.insertBill(bill);
            for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {
                long billDetailID = new Date().getTime();
                billDetailDAO.insertBillDetail(new BillDetail(billDetailID,
                        list.getValue().getProduct().getProductID(),
                        list.getValue().getQuantity(),
                        list.getValue().getProduct().getProductPrice(), billID
                        ));
            }
//            SendMail sm = new SendMail();
//            SendMail.sendMail(users.getUserEmail(), "Thayphet.net", "Hello, "+users.getUserEmail()+"\nTotal: "+cart.total());
        
            cart = new Cart();
            session.setAttribute("cart", cart);
        } catch (Exception e) {
        }
        response.sendRedirect("/Laptop/index.jsp");
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
