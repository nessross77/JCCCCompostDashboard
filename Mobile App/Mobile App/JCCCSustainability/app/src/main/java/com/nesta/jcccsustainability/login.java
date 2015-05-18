package com.nesta.jcccsustainability;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;




public class login extends ActionBarActivity {

    //   Button submitButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        //  submitButton = (Button) findViewById(R.id.button);
        //  submitButton.setOnClickListener(this);


    }

    //Check user name and password, then start enter_data activity
    public void submitButton(View v) {
        EditText inputUser = (EditText)findViewById(R.id.user_name);
        EditText inputPassword = (EditText)findViewById(R.id.user_password);
        String user = inputUser.getText().toString();
        String password = inputPassword.getText().toString();
        //In the future, this should be checked against the database user/password.  For display purposes this has been left
        //with an insecure way of doing it.
        if (user.equals("compost") && password.equals("1234")) {
            Intent intent = new Intent(this, enter_data.class);
            startActivity(intent);
            return;
        }

        //    finish();
        //  Intent intent = new Intent(this, com.nesta.jcccsustainability.enter_data.class);
        //  startActivity(intent);
        else {
            AlertDialog alertDialog = new AlertDialog.Builder(login.this).create();
            alertDialog.setTitle("Error");
            alertDialog.setMessage("Incorrect user name and/or password.");
            alertDialog.setButton(AlertDialog.BUTTON_NEUTRAL, "OK",
                    new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();
                        }
                    });
            alertDialog.show();

        }

    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
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
            return true;
        }

        return super.onOptionsItemSelected(item);
    }



}
