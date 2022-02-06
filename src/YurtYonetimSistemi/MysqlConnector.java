/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package YurtYonetimSistemi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author sayid
 */
public class MysqlConnector {
    
    private static Connection con;

    public MysqlConnector() {

    }

    public Connection connectorSender() {
        try {
            //Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/YurtBS", "root", "NeoTheMatrix");
        } catch (SQLException e) {
            System.out.println("eksepsiyon");
        }
        return con;
    }
}
