/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;
import java.util.ArrayList;

/**
 *
 * @author nguyenbamang
 */
public class Main {
    public static void main(String[] args) {
        CategoryModel c = new CategoryModel();
        System.out.println(c.viewCateDetail("aaa").getVenueTotal());
        System.out.println(c.viewCateDetail("aaa").getPostTotal());
        
    }
    
}
