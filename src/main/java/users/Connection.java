/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users;

import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hansa
 */
public class Connection {
    
    public void connection(){
    
        try {
            Class.forName("org.h2.Driver");           
            java.sql.Connection conn = DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
}
