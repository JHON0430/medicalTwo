/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
import conectarBD.conexionSQL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author users
 */
public class profesionalMedico {
    
    private String registroMedico;
    private String nombres;
    private String apellidos;
    private String especialidad;
    private String cedula;
    private String cecular;
    
    public profesionalMedico() {
    }

    public String getRegistroMedico() {
        return registroMedico;
    }

    public void setRegistroMedico(String registroMedico) {
        this.registroMedico = registroMedico;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getCecular() {
        return cecular;
    }

    public void setCecular(String cecular) {
        this.cecular = cecular;
    }
    
}
