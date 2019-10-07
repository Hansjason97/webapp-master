/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import static junit.framework.Assert.assertEquals;
import junit.framework.TestCase;
import org.junit.Test;

/**
 *
 * @author hansa
 */
public class LoginFailure extends TestCase {
    
    public LoginFailure(String testName) {
        super(testName);
    }
    
    @Override
    protected void setUp() throws Exception {
        super.setUp();
    }
    
    @Override
    protected void tearDown() throws Exception {
        super.tearDown();
    }
    @Test
  public void test(){
        String loginuser = "admin";
        String loginpass = "123456";
        String output;
        try{    
        Class.forName("org.h2.Driver");
           Connection conn = DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
         String sql = ("SELECT * FROM accounts where name=? AND password=?");
           PreparedStatement ps = conn.prepareStatement(sql);
         
         ps.setString(1,loginuser);  
         ps.setString(2,loginpass);  
      
         ResultSet rs=ps.executeQuery();
         if(rs.next()){
         output = "success";
         }else {
         
             output = "failed";
         }
        assertNotSame("success", output);
        conn.close();
        }catch(Exception e){
       
                e.printStackTrace();
        }
        
       }
    // TODO add test methods here. The name must begin with 'test'. For example:
    // public void testHello() {}
}
