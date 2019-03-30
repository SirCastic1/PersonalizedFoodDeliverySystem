    package com.viit.uaha;


public class DbHandler {

    private String BMI;
    private String Height;
    private String Weight;
    private String DocumentId;


    public DbHandler() {
        //public no-arg constructor needed
    }

    public DbHandler(String DocumentId, String BMI) {
        this.DocumentId=DocumentId;
        this.BMI = BMI;
    }


    public String getDocumentId(){
        return DocumentId;
    }

    public String getBMI() {
        return BMI;
    }

    public void setHeight(String Height){
        this.Height=Height;
    }
    public void setWeight(String Weight){
        this.Weight=Weight;
    }
    public void setBMI(String BMI){
        this.BMI=BMI;
    }
    public void setDocumentId(String DocumentId){
        this.DocumentId=DocumentId;
    }

    public String getHeight(){
        return Height;
    }

    public String getWeight(){
        return Weight;
    }

}