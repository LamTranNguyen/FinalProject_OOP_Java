/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author Dell Precision T5810
 */
public class Dessert extends Product {
    private String style = "Cup";

    public Dessert(int id, String name, String type, double price, String status, String image, int stock) {
        super(id, name, type, price, status, image, stock);
    }
    @Override
    public String getVariantInfo() { return style; }
    
    public void setServingType(String type){
        this.style = type;
    }
}
