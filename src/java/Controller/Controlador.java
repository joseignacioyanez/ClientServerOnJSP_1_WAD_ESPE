
package Controller;

import Model.Product;
import ModelDAO.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author joseignacio
 */
public class Controlador extends HttpServlet {
    
    String addProduct = "jsps/addProducts.jsp";
    String updateProduct = "jsps/updateProducts.jsp";
    Product product = new Product();
    ProductDAO productDAO = new ProductDAO();
    int id;

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String access = "";
        String action = request.getParameter("accion");
        switch(action){
            case "addProducts":{
                access = addProduct;
            }
            break;
            case "Agregar":{
                String name = request.getParameter("name");
                float price = Float.parseFloat(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                float profit = productDAO.calculateProfits(quantity, price);
                product.setName(name);
                product.setPrice(price);
                product.setQuantity(quantity);
                product.setProfit(profit);
                productDAO.addProduct(product);
                
            }
            break;
            case "updateProduct":{
                request.setAttribute("id", request.getParameter("id"));
                access = updateProduct;
            }
            break;
            case "Actualizar":{
                id= Integer.parseInt(request.getParameter("idProduct"));
                String name = request.getParameter("name");
                float price = Float.parseFloat(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                float profit = productDAO.calculateProfits(quantity, price);
                product.setId(id);
                product.setName(name);
                product.setPrice(price);
                product.setQuantity(quantity);
                product.setProfit(profit);
                productDAO.updateProduct(product);
            }
            break;
            case "deleteProduct":{
                id= Integer.parseInt(request.getParameter("id"));
                product.setId(id);
                productDAO.deleteProduct(id);
            }
            break;
        }
        RequestDispatcher view = request.getRequestDispatcher(access);
        view.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
