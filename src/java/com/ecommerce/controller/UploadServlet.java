/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ecommerce.controller;

import com.ecommerce.dao.InsertDao;
import com.ecommerce.model.Customer;
import com.ecommerce.model.Profile;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author lokpr
 */

//@WebServlet("/UploadServlet")
@MultipartConfig
public class UploadServlet extends HttpServlet {

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
        
                String fullname = request.getParameter("fullname");
                String gender = request.getParameter("gender");
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String hobby[] = request.getParameterValues("hobbies");
                String bday = request.getParameter("birthday");
                
                Part filePart = request.getPart("pic");
                String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
                File uploads = new File("C:/uploads");//folder to save file
                
                String newFileName = java.time.Instant.now().toEpochMilli()+fileName;
                File file = new File(uploads, newFileName);
                try (InputStream input = filePart.getInputStream()) {
                   Files.copy(input, file.toPath());
                }
                
                
                Customer c = new Customer();
                c.setUname(username);
                c.setEmail(email);
                c.setPassword(password);
                
                Profile p = new Profile();
                p.setFullname(fullname);
                p.setGender(gender.charAt(0));
                String h = "";
                for(String x:hobby){
                    h = h + x + ",";
                }
                h = h.substring(0, h.length()-1);
                p.setHobbies(h);
                
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                try {
                Date date = simpleDateFormat.parse(bday);
                p.setDate(date);
                } catch(Exception e) {
                    System.out.println("Problem");
                }
                
                p.setPath(newFileName);
                
                c.setProfile(p);
                p.setCustomer(c);
                
                InsertDao i = new InsertDao();
                i.insertCustomerProfile(c,p);
                
                request.setAttribute("customer", c);
                RequestDispatcher rd = request.getRequestDispatcher("products.jsp");
                rd.forward(request, response);
                
                
//                System.out.println(fullname);
//                System.out.println(gender);
//                System.out.println(username);
//                System.out.println(email);
//                System.out.println(password);
//                for(String h:hobby){
//                    System.out.print(h+" ");
//                }
//                System.out.println();
//                System.out.println(birthday);
//                System.out.println(fileName);
    
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
