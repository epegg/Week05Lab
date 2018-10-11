/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 752814
 */
public class ShoppingListServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
        HttpSession session=request.getSession();
        
        String list = (String)session.getAttribute("list");
        String username = (String)session.getAttribute("username");
        
        if(username != null){
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
        }else{
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/WEB-INF/register.jsp";

        String username = "";

        username = request.getParameter("username");

        request.setAttribute("username", username);

        if(username == null || username.equals("")){
            request.setAttribute("message", "Please enter your username");
            request.getRequestDispatcher(url).forward(request, response);
            return;
        }
        HttpSession session=request.getSession();
        session.setAttribute("list", "apple,pear,peach");

        session.setAttribute("username", username);
        
        response.sendRedirect("ShoppingList");
    }
}
