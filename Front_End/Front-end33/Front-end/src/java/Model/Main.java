/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import Entity.Profile;
/**
 *
 * @author Admin
 */
public class Main {
    public static void main(String[] args) {
        ProfileModel tm = new ProfileModel();
        System.out.println(tm.getListProfile().size());
    }
}
