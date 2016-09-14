package main.java.model;

import  java.util.*;
public class Item {

String itemName;


    public static Comparator<Item> StuNameComparator = new Comparator<Item>() {

        public int compare(Item s1, Item s2) {


            return s2.getStatus().toUpperCase().compareTo(s1.getStatus().toUpperCase());


        }};


    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    public Item(String applicantName, Date applicationReceived, String applicationStatus) {
        this.itemName = applicantName;
        this.date = applicationReceived;
        this.status = applicationStatus;
    }


    Date  date;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    String status;
}



