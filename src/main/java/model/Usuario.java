package model;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author alumne
 */
public class Usuario {
    private int id;
    
    private String nombre;
    private String apellidos;
    private String email;
    
    private String nombreUsuario;
    private String password;
    
    
    public Usuario(){
        this.id=-1;
        this.nombre=null;
        this.apellidos = null;
        this.email = null;
        this.nombreUsuario = null;
        this.password =null;
    }
    
    public Usuario(int id, String nombre, String apellidos, String email, String nombreUsuario, String password){
        
        System.out.println("Cargando nuevo usuario: " + nombre + " - " + apellidos);
        this.id = id;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.email = email;
        this.nombreUsuario = nombreUsuario;
        this.password = password;
    }
    
}
