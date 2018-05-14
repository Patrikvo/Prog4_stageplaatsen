/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Beans.DatabaseFacadeEJB;
import DAL.Stageplaats;
import java.io.IOException;
import java.util.List;
import java.util.Map.Entry;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author patrik
 */
public class ShowSearch extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @EJB
    DatabaseFacadeEJB DBFacadeEJB;
        
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Check if any search parameters are passed, if not, open the searchpage.
        
       // int i = request.getParameterMap().keySet().size();
        // parameter list always contains the name of the form.
        if (request.getParameterMap().keySet().size() <= 1) {
            RequestDispatcher rd = request.getRequestDispatcher("/JSP/SearchPage.jsp");
            rd.forward(request, response);
        }

        // retrieve the parameters.
        
        String titelPart = "";
        String omschrijvingPart = "";
        String bedrijfsnaamPart = "";
        String stadPart = "";
        
        // prarameter: TitleSearch, OmschrijvingSearch, BedrijfnaamSearch, StadSearch
        for (Entry<String, String[]> entry : request.getParameterMap().entrySet()) {
            String name = entry.getKey();
            String value = entry.getValue()[0];
            if ("TitleSearch".equals(name)) { titelPart = value; continue;}
            if ("OmschrijvingSearch".equals(name)) { omschrijvingPart = value; continue;}
            if ("BedrijfnaamSearch".equals(name)) { bedrijfsnaamPart = value; continue;}
            if ("StadSearch".equals(name)) { stadPart = value; continue;}  
        }
        
        // perform the search ussing the passed parameters
        List<Stageplaats> resultlist = DBFacadeEJB.performSearch(titelPart, omschrijvingPart, bedrijfsnaamPart, stadPart);
        
        
        // TODO send the parameters to the page.
        HttpSession session = request.getSession();
        session.setAttribute("stageplaatsen", resultlist);
        
                
        RequestDispatcher rd = request.getRequestDispatcher("/JSP/SearchPage.jsp");
        rd.forward(request, response);
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
