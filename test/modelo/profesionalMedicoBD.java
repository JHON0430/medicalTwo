/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import conectarBD.conexionSQL;
import java.awt.HeadlessException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author users
 */
public class profesionalMedicoBD {
    
    conexionSQL cc = new conexionSQL();
    Connection con = cc.conexion();
    
    private String registroMedico;
    private String  nombres;
    private String apellidos;
    private String especialidad;
    private String cedula;
    private String celular;
    
    public void agregarProfesionalBD(String registroMedico, String nombres,String apellidos, String especialidad,String cedula,String celular){
    
        String SQL="insert into profesionalMedico (registroMedico,nombres,apellidos,especialidad,cedula,celular) values (?,?,?,?,?,?)";
       try {
           PreparedStatement pst=con.prepareStatement(SQL);
           pst.setString(1,registroMedico);
           pst.setString(2, nombres);
           pst.setString(3,apellidos);           
           pst.setInt(4,Integer.parseInt(cedula));
           pst.setInt(5,Integer.parseInt(celular));
           
           
           pst.executeUpdate();
            JOptionPane.showMessageDialog(null,"Registro Exitoso");
           
        } catch (SQLException | NumberFormatException | HeadlessException e) {
            JOptionPane.showMessageDialog(null,"Error de registo"+e.getMessage());
        }
    }
}
