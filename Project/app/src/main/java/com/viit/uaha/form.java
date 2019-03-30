package com.viit.uaha;

import android.content.DialogInterface;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.Toast;

import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.DocumentReference;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.SetOptions;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class form extends AppCompatActivity {

    public String currentEmail()
    {
        FirebaseAuth mAuth;
        mAuth=FirebaseAuth.getInstance();
        FirebaseUser user=mAuth.getCurrentUser();

        return user.getEmail();
    }
    String names,emails,numbers,ages,addresss,heights,weights;
    Button submit;
    EditText name,email,number,age,address,height,weight;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_form);

        name=findViewById(R.id.name);
        email=findViewById(R.id.email);
        number=findViewById(R.id.number);
        age=findViewById(R.id.age);
        address=findViewById(R.id.address);
        height=findViewById(R.id.height);
        weight=findViewById(R.id.weight);
        submit=findViewById(R.id.button);

        submit.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                FirebaseFirestore db = FirebaseFirestore.getInstance();


                 DocumentReference noteRef = db.document("Customers/"+currentEmail());
                //setting conditions
                int f=0;
                String validemail = "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}" +

                        "\\@" +

                        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +

                        "(" +

                        "\\." +

                        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +

                        ")+";

                String et_email=email.getText().toString();
                Matcher matcher= Pattern.compile(validemail).matcher(et_email);

                 if (name.length()==0)
                {
                    name.setError("Enter Name");
                    f=1;
                }
                else
                 {

                     names=name.getText().toString();


                 }

                if (!matcher.matches())
                {
                    email.setError("Enter Valid Email");
                    f=1;
                }



                else if (email.length()==0)
                {
                    email.setError("Enter Email");
                    f=1;
                }

                else
                {
                    emails=email.getText().toString();


                }

                if (number.length()<10 || number.length()>10)
                {
                    number.setError("Enter Valid Phone Number");
                    f=1;
                }

                else if (number.length()==0)
                {
                    number.setError("Enter Phone Number");
                    f=1;
                }

                else
                {
                     numbers=number.getText().toString();

                }

                if (age.length()>2)
                {
                    age.setError("Age cannot exceed 99 years");
                    f=1;
                }
                else if (age.length()==0)
                {
                    age.setError("Enter Age");
                    f=1;

                }

                else
                {
                    ages=age.getText().toString();
                }

                if (address.length()==0)
                {
                    address.setError("Enter Address");
                    f=1;
                }
                else
                {
                     addresss=address.getText().toString();

                }

                if (height.length()==0)
                {
                    height.setError("Enter Height");
                    f=1;
                }
                else
                {
                     heights=height.getText().toString();

                }
                if (weight.length()==0)
                {
                    weight.setError("Enter Weight");
                    f=1;
                }
                else {
                    weights=weight.getText().toString();

                }

                int veg=0,nveg=0,egg=0,vegan=0,seafood=0,milk=0,eggs=0,peanuts=0,soy=0,wheat=0,fish=0,corn=0,gelatin=0,others=0,anone=0,chinese=0,thai=0,mah=0,punjabi=0,lebanese=0,western=0;

                CheckBox checkBox1 = (CheckBox) findViewById(R.id.checkBox1) ;
                CheckBox checkBox2 = (CheckBox) findViewById(R.id.checkBox2) ;
                CheckBox checkBox3 = (CheckBox) findViewById(R.id.checkBox3) ;
                CheckBox checkBox4 = (CheckBox) findViewById(R.id.checkBox4) ;
                CheckBox checkBox5 = (CheckBox) findViewById(R.id.checkBox5) ;
                CheckBox checkBox6 = (CheckBox) findViewById(R.id.checkBox6) ;
                CheckBox checkBox7 = (CheckBox) findViewById(R.id.checkBox7) ;
                CheckBox checkBox8 = (CheckBox) findViewById(R.id.checkBox8) ;
                CheckBox checkBox9 = (CheckBox) findViewById(R.id.checkBox9) ;
                CheckBox checkBox10 = (CheckBox) findViewById(R.id.checkBox10) ;
                CheckBox checkBox11 = (CheckBox) findViewById(R.id.checkBox11) ;
                CheckBox checkBox12 = (CheckBox) findViewById(R.id.checkBox12) ;
                CheckBox checkBox13 = (CheckBox) findViewById(R.id.checkBox13) ;
                CheckBox checkBox14 = (CheckBox) findViewById(R.id.checkBox14) ;
                CheckBox checkBox15 = (CheckBox) findViewById(R.id.checkBox15) ;
                CheckBox checkBox16 = (CheckBox) findViewById(R.id.checkBox16) ;
                CheckBox checkBox17 = (CheckBox) findViewById(R.id.checkBox17) ;
                CheckBox checkBox18 = (CheckBox) findViewById(R.id.checkBox18) ;
                CheckBox checkBox19 = (CheckBox) findViewById(R.id.checkBox19) ;
                CheckBox checkBox20 = (CheckBox) findViewById(R.id.checkBox20) ;


                RadioButton radioButton1=(RadioButton) findViewById(R.id.radioButton1);
                RadioButton radioButton2=(RadioButton) findViewById(R.id.radioButton2);
                RadioButton radioButton3=(RadioButton) findViewById(R.id.radioButton3);
                RadioButton radioButton4=(RadioButton) findViewById(R.id.radioButton4);
                RadioButton radioButton5=(RadioButton) findViewById(R.id.radioButton5);
                RadioButton radioButton6=(RadioButton) findViewById(R.id.radioButton6);
                RadioButton radioButton7=(RadioButton) findViewById(R.id.radioButton7);
                RadioButton radioButton8=(RadioButton) findViewById(R.id.radioButton8);
                RadioButton radioButton9=(RadioButton) findViewById(R.id.radioButton9);
                RadioButton radioButton10=(RadioButton) findViewById(R.id.radioButton10);
                RadioButton radioButton11=(RadioButton) findViewById(R.id.radioButton11);
                RadioButton radioButton12=(RadioButton) findViewById(R.id.radioButton12);
                RadioButton radioButton=(RadioButton) findViewById(R.id.radioButton);

                String tastepreference="None",locality="other",diabetes="No";




                if(checkBox1.isChecked())
                {
                    veg=1;
                }
                if(checkBox2.isChecked())
                {
                    nveg=1;
                }
                if(checkBox3.isChecked())
                {
                    egg=1;
                }
                if(checkBox4.isChecked())
                {
                    vegan=1;
                }
                if(checkBox5.isChecked())
                {
                    seafood=1;
                }

                if(checkBox6.isChecked())
                {
                    milk=1;
                }if(checkBox7.isChecked())
                {
                    eggs=1;
                }
                if(checkBox8.isChecked())
                {
                    peanuts=1;
                }
                if(checkBox9.isChecked())
                {
                    soy=1;
                }
                if(checkBox10.isChecked())
                {
                    wheat=1;
                }
                if(checkBox11.isChecked())
                {
                    fish=1;
                }
                if(checkBox12.isChecked())
                {
                    corn=1;
                }
                if(checkBox13.isChecked())
                {
                    gelatin=1;
                }
                if(checkBox14.isChecked())
                {
                    others=1;
                }

                if(!checkBox6.isChecked()&&!checkBox7.isChecked()&&!checkBox8.isChecked()&&!checkBox9.isChecked()&&!checkBox10.isChecked()&&!checkBox11.isChecked()&&!checkBox12.isChecked()&&!checkBox13.isChecked()&&!checkBox14.isChecked())
                {
                    anone=1;
                }

                if(checkBox15.isChecked())
                {
                    chinese=1;
                }
                if(checkBox16.isChecked())
                {
                    thai=1;
                }
                if(checkBox17.isChecked())
                {
                    mah=1;
                }
                if(checkBox18.isChecked())
                {
                    punjabi=1;
                }
                if(checkBox19.isChecked())
                {
                    lebanese=1;
                }
                if(checkBox20.isChecked())
                {
                    western=1;
                }

                if(radioButton.isChecked())
                {
                    tastepreference="None";
                }
                if(radioButton1.isChecked())
                {
                    tastepreference="Spicy";
                }
                if(radioButton2.isChecked())
                {
                    tastepreference="Medium Spicy";
                }
                if(radioButton4.isChecked())
                {
                    tastepreference="Bland";
                }

                if(radioButton5.isChecked())
                {
                    locality="Hinjewadi";
                }

                if(radioButton6.isChecked())
                {
                    locality="Kharadi";
                }

                if(radioButton7.isChecked())
                {
                    locality="Koregaon Park";
                }

                if(radioButton8.isChecked())
                {
                    locality="NIBM/Kondhwa";
                }

                if(radioButton9.isChecked())
                {
                    locality="Kothrud";
                }

                if(radioButton10.isChecked())
                {
                    locality="Hadapsar";
                }

                if(radioButton11.isChecked())
                {
                    locality="Other";
                }


                if(radioButton12.isChecked())
                {
                    diabetes="Yes";
                }if(radioButton3.isChecked())
                {
                    diabetes="No";
                }



                if(f==0){


                    float h=Float.parseFloat(heights);
                    float w=Float.parseFloat(weights);
                    float bmi=w/((h/100)*(h/100));
                    final String BMI= String.format("%.2f", bmi);

                    Map<String,Object> note=new HashMap<>();
                    note.put("Name",names);
                    note.put("Email",emails);
                    note.put("Number",numbers);
                    note.put("Age",ages);
                    note.put("Address",addresss);
                    note.put("Height",heights);
                    note.put("Weight",weights);
                    note.put("Taste Preference",tastepreference);
                    note.put("Locality",locality);
                    note.put("BMI",BMI);



                    note.put("Diabetes",diabetes);




                    noteRef.set(note, SetOptions.merge());

                    noteRef.update("Food Preference.Non Vegetarian",nveg
                            ,"Food Preference.Vegetarian",veg
                            ,"Food Preference.Vegan",vegan
                            ,"Food Preference.Egg",egg
                            ,"Food Preference.Seafood",seafood);

                    noteRef.update("Allergies.Milk",milk
                            ,"Allergies.Eggs",eggs
                            ,"Allergies.Peanuts",peanuts
                            ,"Allergies.Soy",soy
                            ,"Allergies.Wheat",wheat
                            ,"Allergies.Fish",fish
                            ,"Allergies.Corn",corn
                            ,"Allergies.Gelatin",gelatin
                            ,"Allergies.None",anone
                            ,"Allergies.Others",others
                    );

                    noteRef.update("Preferred Cusines.Chinese",chinese
                            ,"Preferred Cusines.Thai",thai
                            ,"Preferred Cusines.Maharashtrian",mah
                            ,"Preferred Cusines.Punjabi",punjabi
                            ,"Preferred Cusines.Lebanese",lebanese
                            ,"Preferred Cusines.Western",western
                    );


                    final android.support.v7.app.AlertDialog.Builder builder = new android.support.v7.app.AlertDialog.Builder(form.this);
                    builder.setMessage("Succesfully Submitted");


                    builder.setPositiveButton("Okay", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            finish();
                        }
                    });
                    android.support.v7.app.AlertDialog alertDialog = builder.create();
                    alertDialog.show();




                }
                else
                {
                    Toast.makeText(form.this,"Incomplete entries",Toast.LENGTH_SHORT).show();

                }




            }




        });




    }

}