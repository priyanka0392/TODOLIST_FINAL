package main.java.controller;


import main.java.model.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;


@WebServlet(name = "EditServlet",urlPatterns = {"/EditServlet"})
public class EditServlet extends HttpServlet  {





    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String status=request.getParameter("param1");
        String itemname=request.getParameter("param2");

        ArrayList<Item> list=(ArrayList<Item>) getServletContext().getAttribute("items");





        for(int i=0;i<list.size();i++)
        {
          Item data=  list.get(i);

           if(data.getItemName().equals(itemname))
           {
               data.setStatus("");
           }




        }
        Collections.sort(list,Item.StuNameComparator);
        response.sendRedirect("ViewItems.jsp");

    }








}
