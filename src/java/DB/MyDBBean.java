/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.DriverManager;

/**
 *
 * @author Sindhusha
 */
public class MyDBBean {
    public static java.sql.Connection getDBConnection()throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/budgetbuddy","buddy","buddy");
        return con;
    }
    
    
    
}
