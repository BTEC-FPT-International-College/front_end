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
       RechargeModel r = new RechargeModel();
        System.out.println(r.getRechargebyWaalet("WL01").size());
        
    }
}
