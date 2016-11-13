/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sindhusha
 */

@WebServlet(name = "aloginservlet", urlPatterns = {"/aloginservlet"})
public class aloginservlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        try {
           String aid,psw;
           aid=request.getParameter("aid");
           psw=request.getParameter("psw");
           java.sql.Connection con=DB.MyDBBean.getDBConnection();
           String q="select * from admin where adminid='"+aid+"'";
           java.sql.Statement st=con.createStatement();
           java.sql.ResultSet rs=st.executeQuery(q);
           
           if(rs.next())
           {
               String tpsw=rs.getString(2);
               if(tpsw.equals(psw))
               {
                   HttpSession session=request.getSession();
                   session.setAttribute("said", aid);
                   RequestDispatcher rd=request.getRequestDispatcher("adminhome.jsp");
                   //request.setAttribute("msg", "Login Success");
                   rd.forward(request, response);
               }else
               {
                    RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp");
                   request.setAttribute("msg", "Wrong Password");
                   rd.forward(request, response);
               }
           }else
           {
                RequestDispatcher rd=request.getRequestDispatcher("adminlogin.jsp");
                   request.setAttribute("msg", "Wrong Email");
                   rd.forward(request, response);
           }
           
        }
        catch(Exception e)
        {
            out.println(e);
        }
        
        finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
