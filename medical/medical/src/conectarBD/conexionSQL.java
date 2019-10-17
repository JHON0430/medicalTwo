/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conectarBD;
import java.sql.*;
import javax.swing.*;

/**
 *
 * @author estudiante15
 */
public class conexionSQL {
    
   Connection conectar = null;
   
   public Connection conexion(){
   
       try{
          Class.forName("com.mysql.jdbc.Driver");
          conectar = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/medical","root","");
       }catch (Exception e){
        JOptionPane.showMessageDialog(null,"Error"+ e.getMessage());
       }
       return conectar;
       
       
       
       
   }
}























