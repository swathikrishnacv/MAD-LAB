activity_main.xml

<?xml version="1.0" encoding="utf-8"?>

<androidx.constraintlayout.widget.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"

    xmlns:app="http://schemas.android.com/apk/res-auto"

    xmlns:tools="http://schemas.android.com/tools"

    android:layout_width="match_parent"

    android:layout_height="match_parent"

    tools:context=".MainActivity">

    <EditText

        android:id="@+id/etusername"

        android:layout_width="wrap_content"

        android:layout_height="wrap_content"

        android:layout_marginStart="67dp"

        android:layout_marginTop="133dp"

        android:layout_marginEnd="135dp"

        android:layout_marginBottom="90dp"

        android:ems="10"

        android:hint="name"

        android:inputType="textPersonName"

        android:text="username"

        app:layout_constraintBottom_toTopOf="@+id/etpassword"

        app:layout_constraintEnd_toEndOf="parent"

        app:layout_constraintStart_toStartOf="parent"

        app:layout_constraintTop_toTopOf="parent" />

    <EditText

        android:id="@+id/etpassword"

        android:layout_width="wrap_content"

        android:layout_height="wrap_content"

        android:layout_marginStart="81dp"

        android:layout_marginTop="102dp"

        android:layout_marginEnd="121dp"

        android:layout_marginBottom="133dp"

        android:ems="10"

        android:hint="password"

        android:inputType="textPassword"

        app:layout_constraintBottom_toTopOf="@+id/etbutton"

        app:layout_constraintEnd_toEndOf="parent"

        app:layout_constraintStart_toStartOf="parent"

        app:layout_constraintTop_toBottomOf="@+id/etusername" />

    <Button

        android:id="@+id/etbutton"

        android:layout_width="wrap_content"

        android:layout_height="wrap_content"

        android:layout_marginStart="148dp"

        android:layout_marginTop="82dp"

        android:layout_marginEnd="169dp"

        android:layout_marginBottom="200dp"

        android:text="login"

        app:layout_constraintBottom_toBottomOf="parent"

        app:layout_constraintEnd_toEndOf="parent"

        app:layout_constraintHorizontal_bias="1.0"

        app:layout_constraintStart_toStartOf="parent"

        app:layout_constraintTop_toBottomOf="@+id/etpassword" />

    <TextView

        android:id="@+id/textView"

        android:layout_width="wrap_content"

        android:layout_height="wrap_content"

        android:text="TextView"

        tools:layout_editor_absoluteX="173dp"

        tools:layout_editor_absoluteY="444dp" />

    <EditText

        android:id="@+id/tvinfo"

        android:layout_width="wrap_content"

        android:layout_height="wrap_content"

        android:layout_marginStart="130dp"

        android:layout_marginTop="23dp"

        android:layout_marginEnd="72dp"

        android:layout_marginBottom="26dp"

        android:ems="10"

        android:hint="info"

        android:inputType="textPersonName"

        android:text="infotxt"

        app:layout_constraintBottom_toTopOf="@+id/etbutton"

        app:layout_constraintEnd_toEndOf="parent"

        app:layout_constraintStart_toStartOf="parent"

        app:layout_constraintTop_toBottomOf="@+id/textView" />

</androidx.constraintlayout.widget.ConstraintLayout>

Mainactivity

package com.myapplication.login;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;

import android.os.Bundle;

import android.view.View;

import android.widget.Button;

import android.widget.EditText;

import android.widget.TextView;

import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private EditText username,password;

    private Button login;

    private TextView infotxt;

    int count=5;

    String uname,passwd;

    @Override

    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        username = findViewById(R.id.etusername);

        password = (EditText) findViewById(R.id.etpassword);

        login = (Button) findViewById(R.id.etbutton);

        infotxt = (TextView)findViewById(R.id.tvinfo);

        login.setOnClickListener(new View.OnClickListener() {

            @Override

                    public void onClick(View v){

                uname=username.getText().toString();

                passwd=password.getText().toString();

                if(uname.equals("abhirami")&&passwd.equals("1234"))

                {

                    Toast.makeText(getApplicationContext(),"login success",Toast.LENGTH_SHORT).show();

                    startActivity(new Intent(MainActivity.this,MainActivity.class));

                }

                else

                {

                    Toast.makeText(MainActivity.this,"login failed",Toast.LENGTH_SHORT).show();

                    count--;

                    infotxt.setText("login attempts remaining : "+count);

                    if(count==0)

                    {

                        Toast.makeText(MainActivity.this,"login button disabled",Toast.LENGTH_SHORT).show();

                        login.setEnabled(false);

                    }

                }

            }

        });

    }

}
