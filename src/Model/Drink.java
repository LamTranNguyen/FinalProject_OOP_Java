/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Dell Precision T5810
 */
public class Drink extends Product {
    private boolean hasIce = true;

    public Drink(int id, String name, String type, double price, String status, String image, int stock) {
        super(id, name, type, price, status, image, stock);
    }
    @Override
    public String getVariantInfo() { return hasIce ? "Ice" : "No ice"; }
    
     public void setHasIce(boolean ice) {
        this.hasIce = ice;
    }
}
