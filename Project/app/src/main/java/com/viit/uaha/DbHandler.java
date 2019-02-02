package com.viit.uaha;

import com.google.firebase.firestore.Exclude;

public class DbHandler {

    private String email;
    private String BMI;
    private String height;
    private String weight;


    public DbHandler() {
        //public no-arg constructor needed
    }

    public DbHandler(String email, String BMI) {
        this.email = email;
        this.BMI = BMI;

    }




    public String getEmail() {
        return email;
    }

    public String getBMI() {
        return BMI;
    }

    public void setHeight(String height){
        this.height=height;
    }
    public void setWeight(String weight){
        this.weight=weight;
    }
    public void setBMI(String BMI){
        this.BMI=BMI;
    }
}