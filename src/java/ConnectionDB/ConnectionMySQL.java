/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ConnectionDB;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author joseignacio
 */

public class ConnectionMySQL {
    Connection connection;
    
    public ConnectionMySQL() {
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ferreteria","root","");
        }catch(Exception e){
            System.out.println("Error" + e);
        }
    }
    
    public Connection getConnection(){
        return connection;
    }
}
