/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nhandoanh.smartphamarcy.utils;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnector {
    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
    static final String DB_URL = "jdbc:mysql://localhost:3306/smartphamarcy?useUnicode=true&characterEncoding=utf-8";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "admin"; 
    
    Connection conn;

    public DBConnector() {
        try {
            //STEP 2: Register JDBC driver
            Class.forName(JDBC_DRIVER);
            //STEP 3: Open a connection
            System.out.println("Connecting to a selected database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Connected database successfully...");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnector.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Connection getConn() {
        return conn;
    }
    
    public static void main(String[] args) {
        new DBConnector().getConn();
    }
    
    
}
