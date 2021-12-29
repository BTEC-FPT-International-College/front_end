/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import Entity.Post;
import dao.dao;
import java.util.List;
/**
 *
 * @author Admin
 */
public class Main {
    public static void main(String[] args) {
        checkLogin c = new checkLogin();
        System.out.println((c.checkLogin("mang@gmail.com", "1")));
    }
}

