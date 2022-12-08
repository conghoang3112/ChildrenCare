/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import DAO.DoctorDAO1;
import DAO.DoctorDAOIplm1;
import DAO.Specialist1DAOIplm;
import DAO.SpecialistDAO1;
import DAO.TimeDAOIpml1;
import entity.Specialist;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.TimeDAO1;
import entity.Doctor;
import entity.TimeSlot;

/**
 *
 * @author duan1
 */
@WebServlet(name = "AddConserVationController", urlPatterns = {"/AddConser"})
public class AddConserVationController extends HttpServlet {

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
        processRequest(request, response);
        SpecialistDAO1 sdao = new Specialist1DAOIplm();
       String sid= request.getParameter("Special");
         //int id = Integer.parseInt(sid);
        TimeDAO1 tdao = new TimeDAOIpml1();
        DoctorDAO1 ddao=new DoctorDAOIplm1();
        
        List<TimeSlot> tlist = tdao.getAllTimeSlot();
        List<Specialist> splist = sdao.getALlSpecialist();
       // List<Doctor> dlist = ddao.getALlDOctorbyId(id);
        
        request.setAttribute("splist", splist);
        
        request.setAttribute("tlist", tlist);
       // request.setAttribute("dlist", dlist);
        
        
        request.getRequestDispatcher("AddConservation.jsp").forward(request, response);
        
//        if(dlist!=null){
//            response.sendRedirect("AddConservation.jsp");
//        }

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
