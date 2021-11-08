/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class Search_Recharge {
    private String Start;
    private String End;
    private String Wallet;
    public Search_Recharge() {
    }

    public Search_Recharge(String Start, String End, String Wallet) {
        this.Start = Start;
        this.End = End;
        this.Wallet = Wallet;
    }
    
    public Search_Recharge(String Start, String End) {
        this.Start = Start;
        this.End = End;
    }

    public String getStart() {
        return Start;
    }

    public void setStart(String Start) {
        this.Start = Start;
    }

    public String getEnd() {
        return End;
    }

    public void setEnd(String End) {
        this.End = End;
    }

    public String getWallet() {
        return Wallet;
    }

    public void setWallet(String Wallet) {
        this.Wallet = Wallet;
    }

    
    
}
