/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import Entity.Transaction;
/**
 *
 * @author Admin
 */
public class Main {
    public static void main(String[] args) {
        TransactionModel tm = new TransactionModel();
        System.out.println(tm.getListTransaction().size());
    }
}
