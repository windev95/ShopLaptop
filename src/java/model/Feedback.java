package model;

import java.sql.Timestamp;

public class Feedback {
    private long feedbackID;
    private String feedbackName;
    private String feedbackEmail;
    private Timestamp feedbackUpdate;
    private String feedbackText;
    private int feedbackFinish;   

    public Feedback() {
    }

    public Feedback(long feedbackID, String feedbackName, String feedbackEmail, Timestamp feedbackUpdate, String feedbackText, int feedbackFinish) {
        this.feedbackID = feedbackID;
        this.feedbackName = feedbackName;
        this.feedbackEmail = feedbackEmail;
        this.feedbackUpdate = feedbackUpdate;
        this.feedbackText = feedbackText;
        this.feedbackFinish = feedbackFinish;
    }    

    public long getFeedbackID() {
        return feedbackID;
    }

    public void setFeedbackID(long feedbackID) {
        this.feedbackID = feedbackID;
    }

    public String getFeedbackName() {
        return feedbackName;
    }

    public void setFeedbackName(String feedbackName) {
        this.feedbackName = feedbackName;
    }

    public String getFeedbackEmail() {
        return feedbackEmail;
    }

    public void setFeedbackEmail(String feedbackEmail) {
        this.feedbackEmail = feedbackEmail;
    }

    public String getFeedbackText() {
        return feedbackText;
    }

    public void setFeedbackText(String feedbackText) {
        this.feedbackText = feedbackText;
    }

    public int getFeedbackFinish() {
        return feedbackFinish;
    }

    public void setFeedbackFinish(int feedbackFinish) {
        this.feedbackFinish = feedbackFinish;
    }

    public Timestamp getFeedbackUpdate() {
        return feedbackUpdate;
    }

    public void setFeedbackUpdate(Timestamp feedbackUpdate) {
        this.feedbackUpdate = feedbackUpdate;
    }
    
}
