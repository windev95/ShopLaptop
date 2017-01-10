package model;
public class Pq {
    private long pqID;
    private Boolean pqAll;
    private Boolean pqBill;
    private Boolean pqFeedback;
    private Boolean pqEdit;
    private Boolean pqDelete;

    public Pq() {
    }

    public Pq(long pqID, Boolean pqAll, Boolean pqBill, Boolean pqFeedback, Boolean pqEdit, Boolean pqDelete) {
        this.pqID = pqID;
        this.pqAll = pqAll;
        this.pqBill = pqBill;
        this.pqFeedback = pqFeedback;
        this.pqEdit = pqEdit;
        this.pqDelete = pqDelete;
    }

    public long getPqID() {
        return pqID;
    }

    public void setPqID(long pqID) {
        this.pqID = pqID;
    }

    public Boolean getPqAll() {
        return pqAll;
    }

    public void setPqAll(Boolean pqAll) {
        this.pqAll = pqAll;
    }

    public Boolean getPqBill() {
        return pqBill;
    }

    public void setPqBill(Boolean pqBill) {
        this.pqBill = pqBill;
    }

    public Boolean getPqFeedback() {
        return pqFeedback;
    }

    public void setPqFeedback(Boolean pqFeedback) {
        this.pqFeedback = pqFeedback;
    }

    public Boolean getPqEdit() {
        return pqEdit;
    }

    public void setPqEdit(Boolean pqEdit) {
        this.pqEdit = pqEdit;
    }

    public Boolean getPqDelete() {
        return pqDelete;
    }

    public void setPqDelete(Boolean pqDelete) {
        this.pqDelete = pqDelete;
    }    
}
