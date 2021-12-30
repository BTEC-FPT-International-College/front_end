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
         TransactionModelAdmin main = new TransactionModelAdmin();
         System.out.println(main.searchDatebyWallet("12/11/2021", "12/22/2022", "1").size());
    }
}

