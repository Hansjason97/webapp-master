/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import junit.framework.TestCase;

/**
 *
 * @author hansa
 */
public class Test2 extends TestCase {
    
    public Test2(String testName) {
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
       public int carre(int num){
           return num*num;
            
        }
 public void test(){
        
        int output = carre(2);
        assertEquals(4, output);
    }
    // TODO add test methods here. The name must begin with 'test'. For example:
    // public void testHello() {}
}
