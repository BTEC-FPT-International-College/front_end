/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import Entity.Category;

/**
 *
 * @author nguyenbamang
 */
public class Main {
    public static void main(String[] args) {
        CategoryModel c = new CategoryModel();
        System.out.println(c.getListCategory().get(0).getCateName());
    }
    
}
