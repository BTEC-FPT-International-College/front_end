/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author nguyenbamang
 */
public class ViewDetailCate {
    private int PostTotal;
    private int VenueTotal;

    public ViewDetailCate() {
    }

    public ViewDetailCate(int PostTotal, int VenueTotal) {
        this.PostTotal = PostTotal;
        this.VenueTotal = VenueTotal;
    }

    public int getPostTotal() {
        return PostTotal;
    }

    public void setPostTotal(int PostTotal) {
        this.PostTotal = PostTotal;
    }

    public int getVenueTotal() {
        return VenueTotal;
    }

    public void setVenueTotal(int VenueTotal) {
        this.VenueTotal = VenueTotal;
    }
    
    
}
