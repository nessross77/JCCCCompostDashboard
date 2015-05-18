package com.nesta.jcccsustainability;

import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.AsyncTask;
import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TextView;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;




public class enter_data extends ActionBarActivity
{


    //Progress Dialog
    private ProgressDialog pDialog;

    JSONParser jsonParser = new JSONParser();
    //url_create_record will need to be changed to where ever php is going to be hosted in the future
    private static String url_create_record = "";
    private static final String TAG_SUCCESS = "success";

    //ints for date, to be submitted to database
    public int day;
    public int month;
    public int year;

    public String todayDate;
    public String compostPile;
    public int dayOfWeek;
  //  private EditText date;
    public TextView date;
    public EditText amount;
    public EditText comment;
    // String url = "jbdc:jtds:sqlserver://localhost;integratedSecurity=true";
    // String dbName = "compost";
    // String password = "";
    static final int DATE_DIALOG_ID = 1;


    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_enter_data);
        Calendar calendar = Calendar.getInstance();
        //grab data for date field
        day = calendar.get(Calendar.DAY_OF_MONTH);
        month = calendar.get(Calendar.MONTH) + 1;
        year = calendar.get(Calendar.YEAR);
        dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
        todayDate = month + "/" + day + "/" + year;
        //   set date field
        TextView date = (TextView) findViewById(R.id.dateData);
        date.setText(todayDate, TextView.BufferType.EDITABLE);
        date.setText(todayDate.toString(), TextView.BufferType.EDITABLE);
        addListenerOnTextView();

    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_enter_data, menu);
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


    public void submitData(View v)
    {
        //Confirm with user that they are sure to commit data
        //boolean submitData = false;
        amount = (EditText) findViewById(R.id.amountData);
        comment = (EditText) findViewById(R.id.commentBox);
        date = (TextView) findViewById(R.id.dateData);
        String amountString = amount.getText().toString();
        String commentString = comment.getText().toString();
        String dateString = date.getText().toString();
        boolean validDate = validDate(todayDate, dateString);

        //Confirm data dialog.  Checks if required data fields are there, then asks if the data is correct.
        AlertDialog.Builder confirmData = new AlertDialog.Builder(this);
        AlertDialog.Builder checkDataAlert = new AlertDialog.Builder(this);
            if (amount.length() == 0)
            {
                amountString = "-1";
            }
            //Check for data in Amount field, if no data tell user.
            if (Integer.parseInt(amountString) < 0)
            {
                checkDataAlert.setMessage("Please enter an Amount value.");
                checkDataAlert.setNeutralButton("Ok", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();

                    }
                });
                AlertDialog alert = checkDataAlert.create();
                alert.show();

            }

            else if (validDate == false)
            {
                checkDataAlert.setMessage("The date entered is for a future date, please enter a valid date.");
                checkDataAlert.setNeutralButton("Ok", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();

                    }
                });
                AlertDialog alert = checkDataAlert.create();
                alert.show();
            }

            else if (compostPile == null)
            {
                checkDataAlert.setMessage("Please select food or wood before submitting.");
                checkDataAlert.setNeutralButton("Ok", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();

                    }
                });
                AlertDialog alert = checkDataAlert.create();
                alert.show();
            }


            else {
                //Confirm data submission
                //confirmData.setMessage("Is this information correct?");
                if (commentString.length() == 0) {
                    confirmData.setMessage("Date: " + dateString + "\n" + "Amount: " + amountString + "\n" + compostPile +
                            "\n" + "Comments: (none)" + "\n" + "Are you sure you want to submit this data?");
                    confirmData.setNegativeButton("No", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {

                            dialog.dismiss();

                        }
                    });
                } else {

                    confirmData.setMessage("Date: " + dateString + "\n" + "Amount: " + amountString + "\n" + compostPile +
                            "\n" + "Comments: " + commentString + "\n" + "Are you sure you want to submit this data?");
                    confirmData.setNegativeButton("No", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                            dialog.dismiss();

                        }
                    });
                }

                confirmData.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        dialog.dismiss();
                        new CreateNewRecord().execute();

                    }
                });
                AlertDialog alert = confirmData.create();
                alert.show();
            }
    } //end submitData


    public void newEnterData()
    {
        AlertDialog.Builder moreData = new AlertDialog.Builder(enter_data.this);
        moreData.setMessage("Record has been added.  Would you like to make another entry?");

        //No answer for newEnterData
        moreData.setNegativeButton("No", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                finish();
                Intent i = new Intent(getApplicationContext(), MainActivity.class);
                startActivity(i);
            }
        });

        //Yes answer for newEnterData
        moreData.setPositiveButton("Yes", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
                finish();
                startActivity(getIntent());
            }
        });
        AlertDialog alert = moreData.create();
        alert.show();

    }//end newEnterData



//Function for radiobuttons, sets compostPile variable to type of pile being added to database.
    public void pileSelect(View v)
    {
        boolean checked = ( (RadioButton) v).isChecked();

        switch(v.getId())  {
            case R.id.pile1:
                if (checked)
                    compostPile = "Food";
                    break;
            case R.id.pile2:
                if (checked)
                    compostPile = "Wood";
                    break;
         /*   case R.id.pile3:
                if (checked)
                    compostPile = "Temperature";
                    break;
         */
        }
    }


    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data)
    {
        super.onActivityResult(requestCode, resultCode, data);
        switch(requestCode)
        {
            case (1) :
            {
                if (resultCode == RESULT_OK) {
                    Bundle res = data.getExtras();
                    String newDate = res.getString("compostDate");
                    date.setText(newDate, TextView.BufferType.EDITABLE);
                }
                break;

            }
        }
    }


    /**
     * Background Async Task to Create new product
     * */
    class CreateNewRecord extends AsyncTask<String, String, String> {

        /**
         * Before starting background thread Show Progress Dialog
         * */

        @Override
        protected void onPreExecute() {
             super.onPreExecute();
              pDialog = new ProgressDialog(enter_data.this);
              pDialog.setMessage("Creating Record..");
              pDialog.setIndeterminate(true);
              pDialog.setCancelable(false);
              pDialog.show();
        }

        /**
         * Creating product
         * */
        protected String doInBackground(String... args) {
            String rDate = date.getText().toString();
            String rAmount = amount.getText().toString();
            String rComment = comment.getText().toString();
            String rType = compostPile;
            String rDay = dayOfWeekFunc(dayOfWeek);


            // Building Parameters
            List<NameValuePair> params = new ArrayList<NameValuePair>();
            params.add(new BasicNameValuePair("date", rDate));
            params.add(new BasicNameValuePair("amount", rAmount));
            params.add(new BasicNameValuePair("comments", rComment));
            params.add(new BasicNameValuePair("type", rType));
            params.add(new BasicNameValuePair("dayofweek", rDay));

            // getting JSON Object
            // Note that create record url accepts POST method
            JSONObject json = jsonParser.makeHttpRequest(url_create_record,
                    "POST", params);
 // Currently the below that is commented out causes the app to crash.  The crash happens after a record has been inserted into
 // the database.  This error seems to be thrown on the php side.
/*
            // check log cat for response
            Log.d("Create Response", json.toString());

            // check for success tag
            try {
                int success = json.getInt(TAG_SUCCESS);

                if (success == 1) {
                    // successfully created product
                    Intent i = new Intent(getApplicationContext(), MainActivity.class);
                    startActivity(i);
                   // closing this screen
                    finish();
                   // return "1";
                }
                else
                {
                    // failed to create record
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
*/
            return null;
        }

        /**
         * After completing background task Dismiss the progress dialog
         * **/
        protected void onPostExecute(String file_url) {
            // dismiss the dialog once done
            pDialog.dismiss();
            newEnterData();

           // Intent i = new Intent(getApplicationContext(), MainActivity.class);
           // startActivity(i);
        }

    }

//dayOfWeekFunc returns a string depending on int value.  Used to find day of week from dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
    public String dayOfWeekFunc(int day)
    {
        String dayString;
        if (day == 1)
        {
            dayString = "Sunday";
            return dayString;
        }
        else if (day == 2)
        {
            dayString = "Monday";
            return dayString;
        }
        else if (day == 3)
        {
            dayString = "Tuesday";
            return dayString;
        }
        else if (day == 4)
        {
            dayString = "Wednesday";
            return dayString;
        }
        else if (day == 5)
        {
            dayString = "Thursday";
            return dayString;
        }
        else if (day == 6)
        {
            dayString = "Friday";
            return dayString;
        }
        else if (day == 7)
        {
            dayString = "Saturday";
            return dayString;
        }
        else
        {
            dayString = "Incorrect day value.";
            return dayString;
        }

    }


    public void addListenerOnTextView() {

        date = (TextView) findViewById(R.id.dateData);

        date.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {

                showDialog(DATE_DIALOG_ID);

            }

        });

    }

    @Override
    protected Dialog onCreateDialog(int id) {
        switch (id) {
            case DATE_DIALOG_ID:
                // set date picker as current date
                return new DatePickerDialog(this, datePickerListener,
                        year, month - 1,day);

        }
        return null;
    }

    private DatePickerDialog.OnDateSetListener datePickerListener
            = new DatePickerDialog.OnDateSetListener() {

        // when dialog box is closed, below method will be called.
        public void onDateSet(DatePicker view, int selectedYear,
                              int selectedMonth, int selectedDay) {

            year = selectedYear;
            month = selectedMonth;
            day = selectedDay;
            Calendar c = Calendar.getInstance();

           //set day of week for database
            Calendar cal = new GregorianCalendar(selectedYear, selectedMonth, selectedDay);
            dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);

            // set selected date into textview
            date.setText(new StringBuilder().append(month + 1)
                    .append("/").append(day).append("/").append(year)
                    .append(" "));

        }
    };


    public boolean validDate(String todayDate, String userDate)
    {
        boolean valid = false;

        try {
            SimpleDateFormat sFormat = new SimpleDateFormat("MM/dd/yyyy");
            Date tDate = sFormat.parse(todayDate);
            Date uDate = sFormat.parse(userDate);

            if (uDate.compareTo(tDate) > 0 )
            {
                valid = false;
            }
            else
            {
                valid = true;
            }

        }
        catch (ParseException e)
        {
            e.printStackTrace();
            return valid;
        }
        return valid;
    }


} //end enter_data
