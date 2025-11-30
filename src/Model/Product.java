package Model;

public abstract class Product {
    protected int pro_id;
    protected String pro_name;
    protected String category;
    protected double price;
    protected String image;
    protected String status;
    protected int stock;
    
    public Product(){};
    
    public Product(int id, String name, String type, double price, String status, 
            String image, int stock){
        this.pro_id = id;
        this.pro_name = name;
        this.category = type;
        this.price = price;
        this.image = image;
        this.status = status;
        this.stock = stock;
    }

    public abstract String getVariantInfo();

    public static Product createProduct(int id, String name, String category, double price, String status, String image, int stock) {
        String cat = (category == null) ? "" : category.trim();
        
        if (cat.equalsIgnoreCase("Meal")) {
            return new Meal(id, name, cat, price, status, image, stock);
        } 
        else if (cat.equalsIgnoreCase("Drink")) {
            return new Drink(id, name, cat, price, status, image, stock);
        }
        else if (cat.equalsIgnoreCase("Combo")) {
            return new Combo(id, name, cat, price, status, image, stock);
        }
        else if (cat.equalsIgnoreCase("Dessert")) {
            return new Dessert(id, name, cat, price, status, image, stock);
        }
        else {
            return new Meal(id, name, cat, price, status, image, stock);
        }
    }
    
    public void setImage(String img){ this.image = img; }
    public void setStatus(String stt){ this.status = stt; }
    public int getId() { return pro_id; }
    public String getName() { return pro_name; }
    public String getType() { return category; }
    public double getPrice() { return price; }
    public String getStatus() { return status; }
    public int getStock() { return stock; }
    public String getImage() { return image; }
}