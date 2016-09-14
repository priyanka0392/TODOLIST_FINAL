package main.java.controller;





import main.java.model.Item;

import javax.servlet.annotation.WebServlet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;


@WebServlet(name = "AddItemsServlet",urlPatterns = {"/AddItemsServlet"})
public class AddItemsServlet extends HttpServlet {


    ArrayList<Item> listOfItem = new ArrayList<>();


    public void init(ServletConfig config) throws ServletException {
        super.init(config);

        Item a=new Item("Take out Trash",new Date(),"X");
        Item a2 = new Item("Buy milk", new Date(), "X");

        listOfItem.add(a);

        listOfItem.add(a2);
        config.getServletContext().setAttribute("items",listOfItem);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String name=request.getParameter("item");
        Item i=new Item(name,new Date(),"X");
        listOfItem.add(i);
        Collections.sort(listOfItem,Item.StuNameComparator);

        response.sendRedirect("ViewItems.jsp");



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.sendRedirect("ViewItems.jsp");

    }
}
