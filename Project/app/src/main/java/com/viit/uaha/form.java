package com.viit.uaha;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetManager;
import android.renderscript.Sampler;
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

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import weka.classifiers.Classifier;
import weka.core.Attribute;
import weka.core.DenseInstance;
import weka.core.Instances;
import weka.core.Instance;

public class form extends AppCompatActivity {

    private Classifier mClassifier = null;
    private String messi=null;
    private int target;
    private Random mRandom = new Random();
//Get current email from Firebase
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
                //setting conditions (INPUT VALIDATION)
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

                int veg=0,nveg=0,egg=0,vegan=0,seafood=0,milk=0,eggs=0,peanuts=0,soy=0,wheat=0,fish=0,corn=0,gelatin=0,others=0,anone=0,chinese=0,thai=0,mah=0,punjabi=0,lebanese=0,western=0,tastepreference=0,diabetes=0;


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

                String locality="other";
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
                    tastepreference=2;
                }
                if(radioButton1.isChecked())
                {
                    tastepreference=3;
                }
                if(radioButton2.isChecked())
                {
                    tastepreference=1;
                }
                if(radioButton4.isChecked())
                {
                    tastepreference=0;
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
                    diabetes=1;
                }if(radioButton3.isChecked())
                {
                    diabetes=0;
                }



                if(f==0){


                    float h=Float.parseFloat(heights);
                    float w=Float.parseFloat(weights);
                    final float bmi=w/((h/100)*(h/100));
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
                    note.put("Selected","a");



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


//Load model mclassifier RANDOM FOREST

                        AssetManager assetManager = getAssets();
                        try {
                            mClassifier = (Classifier) weka.core.SerializationHelper.read(assetManager.open("randforest.model"));

                        } catch (IOException e) {
                            e.printStackTrace();
                        } catch (Exception e) {
                            // Weka "catch'em all!"
                            e.printStackTrace();
                        }
//loadd


                    final Attribute attributeTastePreferences  = new Attribute("Taste.Preferences"); //

                    final Attribute attributeDiabetes = new Attribute("Diabetes");
                    final Attribute attributeBMI = new Attribute("BMI");
                    final Attribute attributeRecommendedPackage = new Attribute("Recommended.Package");

                    final Attribute attributeFoodTypeEgg = new Attribute("FoodType.Egg");
                    final Attribute attributeFoodTypeNonVegetarian = new Attribute("FoodType.NonVegetarian");
                    final Attribute attributeFoodTypeSeafood = new Attribute("FoodType.SeaFood");

                    final Attribute attributeFoodTypeVegan = new Attribute("FoodType.Vegan");
                    final Attribute attributeFoodTypeVegetarian = new Attribute("FoodType.Vegetarian");
                    final Attribute attributeAllergiesCorn = new Attribute("Allergies.Corn");

                    final Attribute attributeAllergiesEggs = new Attribute("Allergies.Eggs");
                    final Attribute attributeAllergiesFish = new Attribute("Allergies.Fish");
                    final Attribute attributeAllergiesGelatin = new Attribute("Allergies.Gelatin");

                    final Attribute attributeAllergiesPeanuts = new Attribute("Allergies.Peanuts");
                    final Attribute attributeAllergiesSoy = new Attribute("Allergies.Soy");
                    final Attribute attributeAllergiesWheat = new Attribute("Allergies.Wheat");

                    final Attribute attributeAllergiesMilk = new Attribute("Allergies.Milk");
                    final Attribute attributeAllergiesNone = new Attribute("Allergies.None");
                    final Attribute attributeLikesChinesse = new Attribute("Likes.Chinese");

                    final Attribute attributeLikesLebanese = new Attribute("Likes.Lebanese");
                    final Attribute attributeLikesMaharashtrian = new Attribute("Likes.Maharashtrian");
                    final Attribute attributeLikesPunjabi = new Attribute("Likes.Punjabi");

                    final Attribute attributeLikesWestern = new Attribute("Likes.Western");
                    final Attribute attributeLikesNone = new Attribute("Likes.None");
                    final Attribute attributeLikesThai = new Attribute("Likes.Thai");


                    final ArrayList<String> classes = new ArrayList<String>() {
                        {
                            add("0");
                            add("1");
                            add("2");
                            add("3");
                            add("4");
                            add("5");
                            add("6");
                            add("7");
                            add("8");
                            add("9");
                            add("10");
                            add("11");
                            add("12");
                            add("13");
                            add("14");
                            add("15");
                            add("16");

                        }
                    };



                    // Instances(...) requires ArrayList<> instead of List<>...
                    ArrayList<Attribute> attributeList = new ArrayList<Attribute>(1) {
                        {
                            add(attributeTastePreferences);
                            add(attributeDiabetes);
                            add(attributeBMI);
                            add(attributeFoodTypeEgg);
                            add(attributeFoodTypeNonVegetarian);
                            add(attributeFoodTypeSeafood);
                            add(attributeFoodTypeVegan);
                            add(attributeFoodTypeVegetarian);
                            add(attributeAllergiesCorn);
                            add(attributeAllergiesEggs);
                            add(attributeAllergiesFish);
                            add(attributeAllergiesGelatin);
                            add(attributeAllergiesPeanuts);
                            add(attributeAllergiesSoy);
                            add(attributeAllergiesWheat);
                            add(attributeAllergiesMilk);
                            add(attributeAllergiesNone);
                            add(attributeLikesChinesse);
                            add(attributeLikesLebanese);
                            add(attributeLikesMaharashtrian);
                            add(attributeLikesPunjabi);
                            add(attributeLikesWestern);
                            add(attributeLikesNone);
                            add(attributeLikesThai);
                            add(attributeRecommendedPackage);

                            Attribute attributeClass = new Attribute("@@class@@", classes);
                            add(attributeClass);
                        }
                    };

                    Instances dataUnpredicted = new Instances("TestInstances",
                            attributeList, 1);

                    dataUnpredicted.setClassIndex(dataUnpredicted.numAttributes()-1);


                     final int veg1=veg,nveg1=nveg,egg1=egg,vegan1=vegan,seafood1=seafood,milk1=milk,eggs1=eggs,peanuts1=peanuts,soy1=soy,wheat1=wheat,fish1=fish,corn1=corn,gelatin1=gelatin,others1=others,anone1=anone,chinese1=chinese,thai1=thai,mah1=mah,punjabi1=punjabi,lebanese1=lebanese,western1=western,tastepreference1=tastepreference,diabetes1=diabetes;
                     final float bmi1=bmi;

                    DenseInstance newInstance = new DenseInstance(dataUnpredicted.numAttributes()) {
                        {
                            setValue(attributeTastePreferences,tastepreference1 );
                            setValue(attributeDiabetes, diabetes1);
                            setValue(attributeBMI, bmi1);
                            setValue(attributeFoodTypeEgg,egg1 );
                            setValue(attributeFoodTypeNonVegetarian, nveg1);
                            setValue(attributeFoodTypeSeafood, seafood1);
                            setValue(attributeFoodTypeVegan,vegan1 );
                            setValue(attributeFoodTypeVegetarian, veg1);
                            setValue(attributeAllergiesCorn, corn1);
                            setValue(attributeAllergiesEggs,eggs1 );
                            setValue(attributeAllergiesFish, fish1);
                            setValue(attributeAllergiesGelatin, gelatin1);
                            setValue(attributeAllergiesPeanuts,peanuts1 );
                            setValue(attributeAllergiesSoy, soy1);
                            setValue(attributeAllergiesWheat, wheat1);
                            setValue(attributeAllergiesMilk,milk1 );
                            setValue(attributeAllergiesNone,anone1 );
                            setValue(attributeLikesChinesse,chinese1);
                            setValue(attributeLikesLebanese,lebanese1 );
                            setValue(attributeLikesMaharashtrian, mah1);
                            setValue(attributeLikesPunjabi, punjabi1);
                            setValue(attributeLikesWestern,western1 );
                            setValue(attributeLikesNone, 0);
                            setValue(attributeLikesThai, thai1);
                            setValue(attributeRecommendedPackage,14);


                        }
                    };

                    newInstance.setDataset(dataUnpredicted);
                    try {

                        double result = mClassifier.classifyInstance(newInstance);
                        String className = classes.get(new Double(result).intValue());
                        String msg =  "Predicted: " + className;

                        messi=msg;


                        target=Integer.parseInt(className);

                    } catch (Exception e) {
                        e.printStackTrace();
                    }


                    String rec=null;
                    if(target==0)
                    {
                        rec="Highbmi-Vegetarian";
                    }

                    else if(target==1)
                    {
                        rec="Lowbmi-Vegetarian";
                    }

                    else if(target==2)
                    {
                        rec="Chinese-Normal";
                    }

                    else if(target==3)
                    {
                        rec="Chinese-Vegan";
                    }

                    else if(target==4)
                    {
                        rec="Chinese-Vegetarian";
                    }
                    else if(target==5)
                    {
                        rec="Diabetes (Type 2)";
                    }

                    else if(target==6)
                    {
                        rec="Lebanese-Nor";
                    }
                    else if(target==7)
                    {
                        rec="Lebanese-Veg";
                    }
                    else if(target==8)
                    {
                        rec="Maharashtrian-Nor";
                    }
                    else if(target==9)
                    {
                        rec="Maharashtrian-Vegetarian";
                    }

                    else if(target==10)
                    {
                        rec="Punjabi-Normal";
                    }

                    else if(target==11)
                    {
                        rec="Punjabi-vegan";
                    }

                    else if(target==12)
                    {
                        rec="Punjabi-Vegetarian";
                    }

                    else if(target==13)
                    {
                        rec="Thai-Nor";
                    }

                    else if(target==14)
                    {
                        rec="Thai-Veg";
                    }

                    else if(target==15)
                    {
                        rec="Western Nor";
                    }
                    else if(target==16)
                    {
                        rec="Western-Veg";
                    }
            final String rec1=rec;

// PREDICTION AND CONVERSION FROM INT TO STRING AND PASS IT BACK TO MAIN ON OKAY


                     final android.support.v7.app.AlertDialog.Builder builder = new android.support.v7.app.AlertDialog.Builder(form.this);
                    builder.setMessage("Succesfully Submitted");


                    builder.setPositiveButton("Okay", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            Intent intent = new Intent();
                            intent.putExtra("keyName", rec1);
                            setResult(RESULT_OK, intent);
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