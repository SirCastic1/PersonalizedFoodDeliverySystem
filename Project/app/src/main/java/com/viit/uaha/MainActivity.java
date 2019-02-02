package com.viit.uaha;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v4.app.Fragment;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.firebase.ui.auth.AuthUI;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.auth.FirebaseAuth;
import com.google.firebase.auth.FirebaseUser;
import com.google.firebase.firestore.CollectionReference;
import com.google.firebase.firestore.DocumentSnapshot;
import com.google.firebase.firestore.EventListener;
import com.google.firebase.firestore.FirebaseFirestore;
import com.google.firebase.firestore.FirebaseFirestoreException;
import com.google.firebase.firestore.Query;
import com.google.firebase.firestore.QueryDocumentSnapshot;
import com.google.firebase.firestore.QuerySnapshot;

import java.util.HashMap;
import java.util.Map;

import static java.lang.String.format;

public class MainActivity extends AppCompatActivity {


    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_scrolling, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            Toast.makeText(this,"To be implemented", Toast.LENGTH_SHORT).show();
            return true;
        }
        if(id == R.id.action_account){

            Intent intent=new Intent(this,Login.class);
            startActivity(intent);

        }


        if(id == R.id.action_help){
            Toast.makeText(this,"Visit developer page for help", Toast.LENGTH_SHORT).show();
            return true;
        }
        if(id == R.id.action_exit){
            finish();
            return true;
        }


        return super.onOptionsItemSelected(item);
    }



    //navbar


    private BottomNavigationView.OnNavigationItemSelectedListener mOnNavigationItemSelectedListener
            = new BottomNavigationView.OnNavigationItemSelectedListener() {

        @Override


        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            Fragment selectedFragment=null;
            switch (item.getItemId()) {
                case R.id.action_Menu:
                    selectedFragment=new DailyMenu();
                    break;
                case R.id.action_PackageInfo:
                    selectedFragment=new PackageInfo();
                    break;
                case R.id.action_account:

                    selectedFragment=new Account();
                    break;



            }
            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,selectedFragment).commit();

            return true;
        }
    };

    public void Register(View view){
        Intent intent= new Intent(this,Register.class);
        startActivity(intent);


    }






    public void SignOut(View view) {
        AuthUI.getInstance()
                .signOut(this)
                .addOnCompleteListener(new OnCompleteListener<Void>() {
                    public void onComplete(@NonNull Task<Void> task) {
                        // ...
                    }
                });
/*

        Intent intent=new Intent(this,Login.class);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);

        startActivity(intent);
        */
        finish();

    }





    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        BottomNavigationView navigation = (BottomNavigationView) findViewById(R.id.navigation);
        navigation.setOnNavigationItemSelectedListener(mOnNavigationItemSelectedListener);

        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, new DailyMenu()).commit();


    }
    private static final String TAG = "MainActivity";
    private static final String KEY_TITLE = "title";
    private static final String KEY_DESCRIPTION = "description";

    private FirebaseFirestore db = FirebaseFirestore.getInstance();
    private CollectionReference Ref = db.collection("Customers");



    @Override
    protected void onStart() {

        super.onStart();



        Ref.addSnapshotListener(this, new EventListener<QuerySnapshot>() {
            @Override
            public void onEvent(QuerySnapshot queryDocumentSnapshots, FirebaseFirestoreException e) {
                if (e != null) {
                    return;
                }
                String data="";

                for (QueryDocumentSnapshot documentSnapshot : queryDocumentSnapshots) {
                    DbHandler note = documentSnapshot.toObject(DbHandler.class);

                    String email=note.getEmail();
                    String BMI=note.getBMI();


                    data += "Email:"+email+"  BMI:"+BMI;

                }
                Toast.makeText(MainActivity.this, "Start", Toast.LENGTH_LONG).show();

            }
        });
    }

        public String currentEmail()
        {
            FirebaseAuth mAuth;
            mAuth=FirebaseAuth.getInstance();
            FirebaseUser user=mAuth.getCurrentUser();

            String emailAuth=user.getEmail();
            return emailAuth;
        }

        public void updateHW(View v)
        {   String emailAuth=currentEmail();

            EditText editTextH=findViewById(R.id.editTextH);
            EditText editTextW=findViewById(R.id.editTextW);

           final String height=editTextH.getText().toString();
           final String weight=editTextW.getText().toString();
            float h=Float.parseFloat(height);
            float w=Float.parseFloat(weight);
            float bmi=w/((h/100)*(h/100));
            final String BMI= String.format("%.2f", bmi);

            Ref.whereEqualTo("email",emailAuth)
                    .get()
                    .addOnSuccessListener(new OnSuccessListener<QuerySnapshot>() {

                        @Override
                        public void onSuccess(QuerySnapshot queryDocumentSnapshots) {

                            for(QueryDocumentSnapshot documentSnapshot: queryDocumentSnapshots){
                                DbHandler note = documentSnapshot.toObject(DbHandler.class);
                                 note.setHeight(height);
                                 note.setWeight(weight);
                                 note.setBMI(BMI);
                               String ID= documentSnapshot.getId();
                                Ref.document(ID).update("height",height,"weight",weight,"BMI",BMI);
                               Toast.makeText(MainActivity.this, "Updated", Toast.LENGTH_LONG).show();

                            }

                        }

                    })
                    .addOnFailureListener(new OnFailureListener() {
                        @Override
                        public void onFailure(@NonNull Exception e) {
                            Toast.makeText(MainActivity.this, "Error", Toast.LENGTH_LONG).show();
                        }
                    });


        }




        public void loadNotes(View v)
        {
            FirebaseAuth mAuth;
            mAuth=FirebaseAuth.getInstance();
            FirebaseUser user=mAuth.getCurrentUser();

            String emailAuth=currentEmail();

            Ref.whereEqualTo("email",emailAuth)
                    .get()
                    .addOnSuccessListener(new OnSuccessListener<QuerySnapshot>() {

                        @Override
                        public void onSuccess(QuerySnapshot queryDocumentSnapshots) {

                            for(QueryDocumentSnapshot documentSnapshot: queryDocumentSnapshots){
                                DbHandler note = documentSnapshot.toObject(DbHandler.class);
                                String email = note.getEmail();
                                String BMI = note.getBMI();

                                Toast.makeText(MainActivity.this, email + "  your Bmi is :" + BMI, Toast.LENGTH_LONG).show();
                            }

                        }

                    })
                    .addOnFailureListener(new OnFailureListener() {
                        @Override
                        public void onFailure(@NonNull Exception e) {
                            Toast.makeText(MainActivity.this, "Error", Toast.LENGTH_LONG).show();
                        }
                    });

        }


}
