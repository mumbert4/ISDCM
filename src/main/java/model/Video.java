/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.sql.Date;
import java.sql.Time;


/**
 *
 * @author alumne
 */
public class Video {
    
    private int id;
    
    private int autorID;
    private String titulo;
    private String autor;
    private Date fecha;
    private Time duracion;
    
    private int reproducciones;
    private String descripcion;
    private String formato;
    
    
    private String URL;
    private String URLINFO;
    
    
    public Video(){
        this.id = -1;
        this.autorID = -1;
        this.titulo = null;
        this.autor = null;
        this.fecha = null;
        this.duracion = null;
        this.reproducciones = 0;
        this.descripcion = null;
        this.formato = null;
        this.URL = null;
        this.URLINFO = null;
    }  
}
