package model;
public class BillDetail {
    private long billDetailID;
    private long productID;   
    private int quantity;
    private double price;
    private long billID;
    public BillDetail() {
    }
    public BillDetail(long billDetailID, int quantity, double price) {
        this.billDetailID = billDetailID;
        this.quantity = quantity;
        this.price = price;
    }
    public long getBillDetailID() {
        return billDetailID;
    }
    public void setBillDetailID(long billDetailID) {
        this.billDetailID = billDetailID;
    }
    public long getProductID() {
        return productID;
    }
    public void setProductID(long productID) {
        this.productID = productID;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public double getPrice() {
        return price;
    }
    public void setPrice(double price) {
        this.price = price;
    }
    public long getBillID() {
        return billID;
    }
    public void setBillID(long billID) {
        this.billID = billID;
    }    
}
