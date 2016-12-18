package model;
import java.sql.Timestamp;
public class ProductV2 {
    private long productID;         
    private String productName;   
    private String productImage; 
    private String productColor;
    private String productContent;
    private String productMetaTitle;
    private String productMetaKeywords;
    private String productMetaDescription;
    private String productCpuDetail;
    private String productRamDetail;
    private String productStorageDetail;
    private String productScreenDetail;
    private String productVGA;
    private String productSound;
    private String productDVD;
    private String productConnect;
    private String productLAN;
    private String productWifi;
    private String productWireless;
    private String productCardReader;
    private String productWebcam;
    private String productPin;
    private String productOS;
    private String productSize;
    private String productWeight;
    private String productMaterial;
    private double productPrice;
    private int productSale;
    private double productPriceReal;    
    private Timestamp productUpdate;
    private int productBuys;
    private int productInventory;
    private int productHide;   
    private long cpuID;
    private long ramID;
    private long storageID;
    private long pricelevelID;
    private long screensizeID;
    private long categoryID;
    private long producerID;  
    public ProductV2() {
    }
    public ProductV2(long productID, String productName, String productImage, String productColor, String productContent, String productMetaTitle, String productMetaKeywords, String productMetaDescription, String productCpuDetail, String productRamDetail, String productStorageDetail, String productScreenDetail, String productVGA, String productSound, String productDVD, String productConnect, String productLAN, String productWifi, String productWireless, String productCardReader, String productWebcam, String productPin, String productOS, String productSize, String productWeight, String productMaterial, double productPrice, int productSale, double productPriceReal, Timestamp productUpdate, int productBuys, int productInventory, int productHide) {
        this.productID = productID;
        this.productName = productName;
        this.productImage = productImage;
        this.productColor = productColor;
        this.productContent = productContent;
        this.productMetaTitle = productMetaTitle;
        this.productMetaKeywords = productMetaKeywords;
        this.productMetaDescription = productMetaDescription;
        this.productCpuDetail = productCpuDetail;
        this.productRamDetail = productRamDetail;
        this.productStorageDetail = productStorageDetail;
        this.productScreenDetail = productScreenDetail;
        this.productVGA = productVGA;
        this.productSound = productSound;
        this.productDVD = productDVD;
        this.productConnect = productConnect;
        this.productLAN = productLAN;
        this.productWifi = productWifi;
        this.productWireless = productWireless;
        this.productCardReader = productCardReader;
        this.productWebcam = productWebcam;
        this.productPin = productPin;
        this.productOS = productOS;
        this.productSize = productSize;
        this.productWeight = productWeight;
        this.productMaterial = productMaterial;
        this.productPrice = productPrice;
        this.productSale = productSale;
        this.productPriceReal = productPriceReal;
        this.productUpdate = productUpdate;
        this.productBuys = productBuys;
        this.productInventory = productInventory;
        this.productHide = productHide;
    }
    public long getProductID() {
        return productID;
    }
    public void setProductID(long productID) {
        this.productID = productID;
    }
    public String getProductName() {
        return productName;
    }
    public void setProductName(String productName) {
        this.productName = productName;
    }
    public String getProductImage() {
        return productImage;
    }
    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }
    public String getProductColor() {
        return productColor;
    }
    public void setProductColor(String productColor) {
        this.productColor = productColor;
    }
    public String getProductContent() {
        return productContent;
    }
    public void setProductContent(String productContent) {
        this.productContent = productContent;
    }
    public String getProductMetaTitle() {
        return productMetaTitle;
    }
    public void setProductMetaTitle(String productMetaTitle) {
        this.productMetaTitle = productMetaTitle;
    }
    public String getProductMetaKeywords() {
        return productMetaKeywords;
    }
    public void setProductMetaKeywords(String productMetaKeywords) {
        this.productMetaKeywords = productMetaKeywords;
    }
    public String getProductMetaDescription() {
        return productMetaDescription;
    }
    public void setProductMetaDescription(String productMetaDescription) {
        this.productMetaDescription = productMetaDescription;
    }
    public String getProductCpuDetail() {
        return productCpuDetail;
    }
    public void setProductCpuDetail(String productCpuDetail) {
        this.productCpuDetail = productCpuDetail;
    }
    public String getProductRamDetail() {
        return productRamDetail;
    }
    public void setProductRamDetail(String productRamDetail) {
        this.productRamDetail = productRamDetail;
    }
    public String getProductStorageDetail() {
        return productStorageDetail;
    }
    public void setProductStorageDetail(String productStorageDetail) {
        this.productStorageDetail = productStorageDetail;
    }
    public String getProductScreenDetail() {
        return productScreenDetail;
    }
    public void setProductScreenDetail(String productScreenDetail) {
        this.productScreenDetail = productScreenDetail;
    }
    public String getProductVGA() {
        return productVGA;
    }
    public void setProductVGA(String productVGA) {
        this.productVGA = productVGA;
    }
    public String getProductSound() {
        return productSound;
    }
    public void setProductSound(String productSound) {
        this.productSound = productSound;
    }
    public String getProductDVD() {
        return productDVD;
    }
    public void setProductDVD(String productDVD) {
        this.productDVD = productDVD;
    }
    public String getProductConnect() {
        return productConnect;
    }
    public void setProductConnect(String productConnect) {
        this.productConnect = productConnect;
    }
    public String getProductLAN() {
        return productLAN;
    }
    public void setProductLAN(String productLAN) {
        this.productLAN = productLAN;
    }
    public String getProductWifi() {
        return productWifi;
    }
    public void setProductWifi(String productWifi) {
        this.productWifi = productWifi;
    }
    public String getProductWireless() {
        return productWireless;
    }
    public void setProductWireless(String productWireless) {
        this.productWireless = productWireless;
    }
    public String getProductCardReader() {
        return productCardReader;
    }
    public void setProductCardReader(String productCardReader) {
        this.productCardReader = productCardReader;
    }
    public String getProductWebcam() {
        return productWebcam;
    }
    public void setProductWebcam(String productWebcam) {
        this.productWebcam = productWebcam;
    }
    public String getProductPin() {
        return productPin;
    }
    public void setProductPin(String productPin) {
        this.productPin = productPin;
    }
    public String getProductOS() {
        return productOS;
    }
    public void setProductOS(String productOS) {
        this.productOS = productOS;
    }
    public String getProductSize() {
        return productSize;
    }
    public void setProductSize(String productSize) {
        this.productSize = productSize;
    }
    public String getProductWeight() {
        return productWeight;
    }
    public void setProductWeight(String productWeight) {
        this.productWeight = productWeight;
    }
    public String getProductMaterial() {
        return productMaterial;
    }
    public void setProductMaterial(String productMaterial) {
        this.productMaterial = productMaterial;
    }
    public double getProductPrice() {
        return productPrice;
    }
    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }
    public int getProductSale() {
        return productSale;
    }
    public void setProductSale(int productSale) {
        this.productSale = productSale;
    }
    public double getProductPriceReal() {
        return productPriceReal;
    }
    public void setProductPriceReal(double productPriceReal) {
        this.productPriceReal = productPriceReal;
    }
    public Timestamp getProductUpdate() {
        return productUpdate;
    }
    public void setProductUpdate(Timestamp productUpdate) {
        this.productUpdate = productUpdate;
    }
    public int getProductBuys() {
        return productBuys;
    }
    public void setProductBuys(int productBuys) {
        this.productBuys = productBuys;
    }
    public int getProductInventory() {
        return productInventory;
    }
    public void setProductInventory(int productInventory) {
        this.productInventory = productInventory;
    }
    public int getProductHide() {
        return productHide;
    }
    public void setProductHide(int productHide) {
        this.productHide = productHide;
    }
    public long getCpuID() {
        return cpuID;
    }
    public void setCpuID(long cpuID) {
        this.cpuID = cpuID;
    }
    public long getRamID() {
        return ramID;
    }
    public void setRamID(long ramID) {
        this.ramID = ramID;
    }
    public long getStorageID() {
        return storageID;
    }
    public void setStorageID(long storageID) {
        this.storageID = storageID;
    }
    public long getPricelevelID() {
        return pricelevelID;
    }
    public void setPricelevelID(long pricelevelID) {
        this.pricelevelID = pricelevelID;
    }
    public long getScreensizeID() {
        return screensizeID;
    }
    public void setScreensizeID(long screensizeID) {
        this.screensizeID = screensizeID;
    }
    public long getCategoryID() {
        return categoryID;
    }
    public void setCategoryID(long categoryID) {
        this.categoryID = categoryID;
    }
    public long getProducerID() {
        return producerID;
    }
    public void setProducerID(long producerID) {
        this.producerID = producerID;
    }
}
