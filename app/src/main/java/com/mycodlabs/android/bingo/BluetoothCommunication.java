/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.mycodlabs.android.bingo;

import java.util.Random;


import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

/**
 * This is the main Activity that displays the current chat session.
 */
public class BluetoothCommunication extends Activity implements OnClickListener {
    // Message types sent from the BluetoothConnectivityService Handler
    public static final int MESSAGE_STATE_CHANGE = 1;
    public static final int MESSAGE_READ = 2;
    public static final int MESSAGE_WRITE = 3;
    public static final int MESSAGE_DEVICE_NAME = 4;
    public static final int MESSAGE_TOAST = 5;
    // Key names received from the BluetoothConnectivityService Handler
    public static final String DEVICE_NAME = "device_name";
    public static final String TOAST = "toast";
    // Debugging
    private static final String TAG = "BluetoothCommunication";
    private static final boolean D = true;
    // Intent request codes
    private static final int REQUEST_CONNECT_DEVICE_SECURE = 1;
    private static final int REQUEST_CONNECT_DEVICE_INSECURE = 2;
    private static final int REQUEST_ENABLE_BT = 3;
    public static final String MSG_CONFIGOUR = "confi";
    public static final String REDY_MSG = "redy";
    public static  int filledCellcount =0;
    public Animation anm,anm2;
    public int stk[]=new int[2];
    //v1....v5 is  counter for each vertical rows
    //h1....h5 is counter for each  horizonta rows
    //d1,d2 is is counter for diagonal rows
    //fv1...fv5 is game_start_flag to mark specific vertical  row is filled
    //fh1...fh5 is game_start_flag to mark specific vertical  row is filled
    public int game_start_flag =0,v1,v2,v3,v4,v5,h1,h2,h3,h4,h5,d1,d2,fd1,fd2,fv1,fv2,fv3,fv4,fv5,fh1,fh2,fh3,fh4,fh5;
    public int isPrssedAcellORready =0,sf=0, GAME_PONTS,tf=0,GV=0, verifyFlag =0, GAME_TURN_FLAG =0, WON =0, FAILD =0,REC=0;
    public int rand,CRF=0;
    public   Boolean gameOverFalg=false;
    public String readMessage, eof ="EOF";
    public Button b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24,b25, buttonSartplay,s1,s2;
    public int bf[]=new int[25];
    public int mtr[][]=new int[5][5];
    String msgRead;
    Random crazy;
    Typeface j;
    ImageView imgB, imgI, imgN, imgG, imgO;
    TextView playButon;
    TextView you_text,
    your_score,
    header,
    his_text,his_score;
    Button a;
    // Layout Views
    private TextView mTitle;
    private ListView mConversationView;
    private EditText mOutEditText;
    private Button mSendButton;
    // Name of the connected device
    private String mConnectedDeviceName = null;
    // Array adapter for the conversation thread
    private ArrayAdapter<String> mConversationArrayAdapter;
    // String buffer for outgoing messages
    private StringBuffer mOutStringBuffer;
    // Local Bluetooth adapter
    private BluetoothAdapter mBluetoothAdapter = null;
    // Member object for the chat services
    private BluetoothConnectivityService mChatService = null;
    // The Handler that gets information back from the BluetoothConnectivityService
    private final Handler mHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case MESSAGE_STATE_CHANGE:
                    if(D) Log.i(TAG, "MESSAGE_STATE_CHANGE: " + msg.arg1);
                    switch (msg.arg1) {
                        case BluetoothConnectivityService.STATE_CONNECTED:
                             mTitle.setText(R.string.title_connected_to);
                             mTitle.append(mConnectedDeviceName);
//                            mConversationArrayAdapter.clear();
                            break;
                        case BluetoothConnectivityService.STATE_CONNECTING:
                              mTitle.setText(R.string.title_connecting);
                            break;
                        case BluetoothConnectivityService.STATE_LISTEN:
                        case BluetoothConnectivityService.STATE_NONE:
                            mTitle.setText(R.string.title_not_connected);
                            break;
                    }
                    break;
                case MESSAGE_WRITE:
                    byte[] writeBuf = (byte[]) msg.obj;
                    // construct a string from the buffer
                    String writeMessage = new String(writeBuf);
//                    mConversationArrayAdapter.add( writeMessage);
                    break;
                case MESSAGE_READ:


                    byte[] readBuf = (byte[]) msg.obj;
                    // construct a string from the valid bytes in the buffer
                    readMessage = new String(readBuf, 0, msg.arg1);
                    msgRead =readMessage;

                    Log.d("msg","msg--------------"+msgRead);
                    final String notredy = "notredy";
                    if(msgRead.equals(notredy))
                    {
                        Toast.makeText(getApplicationContext(), "Your opponent  is no ready",
                                Toast.LENGTH_LONG).show();
                    }

                    else
                    {
                        if(msgRead.equals(MSG_CONFIGOUR))
                        {
                            if(filledCellcount <25)
                            {
                                //if receiver is not  filled 25 cells means not ready
                                sendCommand(notredy);
                            }
                            else
                            {
                                buttonSartplay.setVisibility(View.INVISIBLE);
                                GAME_TURN_FLAG =0;
                                isPrssedAcellORready =1;
                                buttonSartplay.setEnabled(false);
                                //  hiding top bingo icons
                                imgB.setVisibility(View.INVISIBLE);
                                imgI.setVisibility(View.INVISIBLE);
                                imgN.setVisibility(View.INVISIBLE);
                                imgG.setVisibility(View.INVISIBLE);
                                imgO.setVisibility(View.INVISIBLE);
                                playButon.setText("Game Started");
                                playButon.startAnimation(anm);
                                sendCommand(REDY_MSG);
                                buttonSartplay.setText("Stop Play");
                                you_text.setVisibility(View.VISIBLE);
                                your_score.setVisibility(View.VISIBLE);
                                his_score.setVisibility(View.VISIBLE);
                                his_text.setVisibility(View.VISIBLE);
                                header.setVisibility(View.GONE);
                            }

                        }

                        else if(msgRead.equals(REDY_MSG))
                        {
                            // if openoned in ready
                            isPrssedAcellORready =1;
                            buttonSartplay.setVisibility(View.INVISIBLE);
                            imgB.setVisibility(View.INVISIBLE);
                            imgI.setVisibility(View.INVISIBLE);
                            imgN.setVisibility(View.INVISIBLE);
                            imgG.setVisibility(View.INVISIBLE);
                            imgO.setVisibility(View.INVISIBLE);
                            playButon.setText("Game Started");
                            playButon.startAnimation(anm);
                            buttonSartplay.setText("Stop Play");

                        }
                       else if(msgRead.equals(eof))
                        {
                            gameOverFalg=true;
                            FAILD = FAILD +1;
                            int total=WON+FAILD;
                            his_score.setText(String.valueOf(total-WON)+"/"+String.valueOf(total));
                            your_score.setText(String.valueOf(WON)+"/"+String.valueOf(total));

                            new MyDialog().showDialog(BluetoothCommunication.this, "You lose the game,  Do you want play again ?",
                                    R.drawable.fail_icon, "No, Verify", "Yes, Play", new MyDialog.DailogCallback() {
                                        @Override
                                        public void onOkayClick() {
                                            resetGame(0);

                                        }

                                        @Override
                                        public void onCancelClick() {
                                            verifyFlag =1;

                                        }
                                    });


                            playButon.setVisibility(View.VISIBLE);
                            playButon.setText("You Looser");
                            playButon.startAnimation(anm);
                        }

                        else if(msgRead.equals(stopGame))
                        {
                            resetGame(1);
                        }
                        else if(!gameOverFalg)
                        {
                            try
                            {

                                if(b1.getText().toString().equals(msgRead))
                                {
                                    b1.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[0][0]=1;
                                    bf[0]=1;
                                    toggleTurns();
                                    performGameChecking();


                                }
                                if(b2.getText().toString().equals(msgRead))
                                {

                                    b2.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[0][1]=1;
                                    bf[1]=1;
                                    performGameChecking();
                                    toggleTurns();


                                }
                                if(b3.getText().toString().equals(msgRead))
                                {

                                    b3.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[0][2]=1;
                                    bf[2]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b4.getText().toString().equals(msgRead))
                                {

                                    b4.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[0][3]=1;
                                    bf[3]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b5.getText().toString().equals(msgRead))
                                {

                                    b5.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[0][4]=1;
                                    bf[4]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b6.getText().toString().equals(msgRead))
                                {

                                    b6.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[1][0]=1;
                                    bf[5]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b7.getText().toString().equals(msgRead))
                                {

                                    b7.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[1][1]=1;
                                    bf[6]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b8.getText().toString().equals(msgRead))
                                {

                                    b8.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[1][2]=1;
                                    bf[7]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b9.getText().toString().equals(msgRead))
                                {

                                    b9.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[1][3]=1;
                                    bf[8]=0;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b10.getText().toString().equals(msgRead))
                                {

                                    b10.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[1][4]=1;
                                    bf[9]=1;
                                    performGameChecking();
                                    toggleTurns();

                                }
                                if(b11.getText().toString().equals(msgRead))
                                {

                                    b11.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[2][0]=1;
                                    bf[10]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b12.getText().toString().equals(msgRead))
                                {

                                    b12.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[2][1]=1;
                                    bf[11]=1;
                                    performGameChecking();
                                    toggleTurns();

                                }
                                if(b13.getText().toString().equals(msgRead))
                                {

                                    b13.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[2][2]=1;
                                    bf[12]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b14.getText().toString().equals(msgRead))
                                {

                                    b14.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[2][3]=1;
                                    bf[13]=1;
                                    performGameChecking();
                                    toggleTurns();

                                }
                                if(b15.getText().toString().equals(msgRead))
                                {

                                    b15.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[2][4]=1;
                                    bf[14]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b16.getText().toString().equals(msgRead))
                                {

                                    b16.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[3][0]=1;
                                    bf[15]=1;
                                    performGameChecking();
                                    toggleTurns();

                                }
                                if(b17.getText().toString().equals(msgRead))
                                {

                                    b17.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[3][1]=1;
                                    bf[16]=1;
                                    performGameChecking();
                                    toggleTurns();

                                }
                                if(b18.getText().toString().equals(msgRead))
                                {

                                    b18.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[3][2]=1;
                                    bf[17]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b19.getText().toString().equals(msgRead))
                                {

                                    b19.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[3][3]=1;
                                    bf[18]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b20.getText().toString().equals(msgRead))
                                {

                                    b20.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[3][4]=1;
                                    bf[19]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b21.getText().toString().equals(msgRead))
                                {

                                    b21.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[4][0]=1;
                                    bf[20]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b22.getText().toString().equals(msgRead))
                                {

                                    b22.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[4][1]=1;
                                    bf[21]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b23.getText().toString().equals(msgRead))
                                {

                                    b23.setBackgroundResource(R.drawable.button_pressed);
                                    mtr[4][2]=1;
                                    bf[22]=1;
                                    performGameChecking();
                                    toggleTurns();

                                }
                                if(b24.getText().toString().equals(msgRead))
                                {

                                    b24.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[4][3]=1;
                                    bf[23]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }
                                if(b25.getText().toString().equals(msgRead))
                                {

                                    b25.setBackgroundResource(R.drawable.button_pressed);

                                    mtr[4][4]=1;
                                    bf[24]=1;
                                    performGameChecking();
                                    toggleTurns();
                                }


                            }

                            catch (Exception e)
                            {

                                Toast.makeText(getApplicationContext(),"Error",
                                        Toast.LENGTH_LONG).show();
                                Log.d(TAG, e.getMessage());

                            }
                        }




                    }//end els
                    break;
                case MESSAGE_DEVICE_NAME:
                    // save the connected device's name
                    mConnectedDeviceName = msg.getData().getString(DEVICE_NAME);
                    Toast.makeText(getApplicationContext(), "Connected to "
                            + mConnectedDeviceName, Toast.LENGTH_SHORT).show();
                    break;
                case MESSAGE_TOAST:
                    Toast.makeText(getApplicationContext(), msg.getData().getString(TOAST),
                            Toast.LENGTH_SHORT).show();
                    break;
            }
        }


    };


    void initStartButton()
    {
        ViewAnim anm=new ViewAnim();
        game_start_flag =1;
        buttonSartplay.setVisibility(View.VISIBLE);
        buttonSartplay.startAnimation(anm);


    }

    @SuppressLint("ResourceType")
    @Override
    public void onCreate(Bundle savedInstanceState) {
        Window window = getWindow();

        super.onCreate(savedInstanceState);
        if(D) Log.e(TAG, "+++ ON CREATE +++");

        // Set up the window layout
        setContentView(R.layout.main);

        //setup bingo
        imgB =(ImageView)findViewById(R.id.ImageView04);
        imgI =(ImageView)findViewById(R.id.ImageView03);
        imgN =(ImageView)findViewById(R.id.ImageView02);
        imgG =(ImageView)findViewById(R.id.ImageView01);
        imgO =(ImageView)findViewById(R.id.imageView1);

        TextView textOut=(TextView)findViewById(R.id.edit_text_out);
        textOut.setVisibility(View.GONE);
        Button btnSend=(Button)findViewById(R.id.button_send);
        btnSend.setVisibility(View.GONE);
        ListView list=(ListView)findViewById(R.id.in);
        list.setVisibility(View.GONE);
        j=Typeface.createFromAsset(getAssets(), "font/monseratt_medium.ttf");
        mTitle=(TextView) findViewById(R.id.connected_device);
        b1=(Button)findViewById(R.id.Button01);
        b1.setOnClickListener(this);
        b1.setTypeface(j);
        b2=(Button)findViewById(R.id.Button02);
        b2.setOnClickListener(this);
        b2.setTypeface(j);
        b3=(Button)findViewById(R.id.Button03);
        b3.setTypeface(j);
        b3.setOnClickListener(this);
        b4=(Button)findViewById(R.id.Button04);
        b4.setTypeface(j);
        b4.setOnClickListener(this);
        b5=(Button)findViewById(R.id.Button05);
        b5.setTypeface(j);
        b5.setOnClickListener(this);
        b6=(Button)findViewById(R.id.Button06);
        b6.setTypeface(j);
        b6.setOnClickListener(this);
        b7=(Button)findViewById(R.id.Button07);
        b7.setTypeface(j);
        b7.setOnClickListener(this);
        b8=(Button)findViewById(R.id.Button08);
        b8.setTypeface(j);
        b8.setOnClickListener(this);
        b9=(Button)findViewById(R.id.Button09);
        b9.setOnClickListener(this);
        b9.setTypeface(j);
        b10=(Button)findViewById(R.id.Button10);
        b10.setOnClickListener(this);
        b10.setTypeface(j);
        b11=(Button)findViewById(R.id.Button11);
        b11.setTypeface(j);
        b11.setOnClickListener(this);
        b12=(Button)findViewById(R.id.Button12);
        b12.setTypeface(j);
        b12.setOnClickListener(this);
        b13=(Button)findViewById(R.id.Button13);
        b13.setTypeface(j);
        b13.setOnClickListener(this);
        b14=(Button)findViewById(R.id.Button14);
        b14.setTypeface(j);
        b14.setOnClickListener(this);
        b15=(Button)findViewById(R.id.Button15);
        b15.setTypeface(j);
        b15.setOnClickListener(this);
        b16=(Button)findViewById(R.id.Button16);
        b16.setTypeface(j);
        b16.setOnClickListener(this);
        b17=(Button)findViewById(R.id.Button17);
        b17.setTypeface(j);
        b17.setOnClickListener(this);
        b18=(Button)findViewById(R.id.Button18);
        b18.setTypeface(j);
        b18.setOnClickListener(this);
        b19=(Button)findViewById(R.id.Button19);
        b19.setOnClickListener(this);
        b19.setTypeface(j);
        b20=(Button)findViewById(R.id.Button20);
        b20.setTypeface(j);
        b20.setOnClickListener(this);
        b21=(Button)findViewById(R.id.Button21);
        b21.setTypeface(j);
        b21.setOnClickListener(this);
        b22=(Button)findViewById(R.id.Button22);
        b22.setOnClickListener(this);
        b22.setTypeface(j);
        b23=(Button)findViewById(R.id.Button23);
        b23.setOnClickListener(this);
        b23.setTypeface(j);
        b24=(Button)findViewById(R.id.Button24);
        b24.setTypeface(j);
        b24.setOnClickListener(this);
        b25=(Button)findViewById(R.id.Button25);
        b24.setTypeface(j);
        b25.setOnClickListener(this);
        b25.setTypeface(j);
        buttonSartplay =(Button)findViewById(R.id.button_start_play);
        anm=AnimationUtils.loadAnimation(this,R.animator.push_down_in);

        //s1=(Button)findViewById(R.id.Button26);
        //s1.setTypeface(j);
        anm2=AnimationUtils.loadAnimation(this,R.animator.fadeout);
        playButon =(TextView)findViewById(R.id.textView2);
        playButon.setTypeface(j);
        you_text=(TextView)findViewById(R.id.you_text);
        your_score=(TextView)findViewById(R.id.your_score);
        header=(TextView)findViewById(R.id.header);
        his_text=(TextView)findViewById(R.id.his_text);
        his_score=(TextView)findViewById(R.id.his_score);

        you_text.setTypeface(j);
        your_score.setTypeface(j);
        header.setTypeface(j);
        his_text.setTypeface(j);
        his_score.setTypeface(j);
        you_text.setVisibility(View.GONE);
        your_score.setVisibility(View.GONE);
        his_score.setVisibility(View.GONE);
        his_text.setVisibility(View.GONE);
        crazy=new Random();
        // s2=(Button)findViewById(R.id.button2);
        //s2.setTypeface(j);
        //
        //s1.startAnimation(anm2);
        //s2.startAnimation(anm2);
        // TextView t5=(TextView)findViewById(R.id.textView4);
        //t5.setTypeface(j);


        // Get local Bluetooth adapter
        mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

        // If the adapter is null, then Bluetooth is not supported
        if (mBluetoothAdapter == null) {
            Toast.makeText(this, "Bluetooth is not available", Toast.LENGTH_LONG).show();
            finish();
            return;
        }
    }

    @SuppressLint("ResourceType")
    @TargetApi(Build.VERSION_CODES.ECLAIR) @Override
    public void onStart() {
        super.onStart();
        if(D) Log.e(TAG, "++ ON START ++");

        // If BT is not on, request that it be enabled.
        // setupChat() will then be called during onActivityResult

        filledCellcount =0;
        ViewAnim obd=new ViewAnim();
        anm=AnimationUtils.loadAnimation(this,R.animator.push_up_in);
        buttonSartplay.setTypeface(j);
        buttonSartplay.setOnClickListener(this);
        buttonSartplay.setVisibility(View.GONE);
        buttonSartplay.startAnimation(obd);
        imgB.startAnimation(anm);

        imgI.startAnimation(anm);
        imgN.startAnimation(anm);
        imgG.startAnimation(anm);
        imgO.startAnimation(anm);
        if (!mBluetoothAdapter.isEnabled()) {
            Intent enableIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivityForResult(enableIntent, REQUEST_ENABLE_BT);
            // Otherwise, setup the chat session
        } else {
            if (mChatService == null) setupChat();
        }
    }

    @Override
    public synchronized void onResume() {
        super.onResume();
        if(D) Log.e(TAG, "+ ON RESUME +");
        // resetGame(1);
        filledCellcount =stk[0];



        // Performing this performGameChecking in onResume() covers the case in which BT was
        // not enabled during onStart(), so we were paused to enable it...
        // onResume() will be called when ACTION_REQUEST_ENABLE activity returns.
        if (mChatService != null) {
            // Only if the state is STATE_NONE, do we know that we haven't started already
            if (mChatService.getState() == BluetoothConnectivityService.STATE_NONE) {
                // Start the Bluetooth chat services
                mChatService.start();
            }
        }
    }

    private void setupChat() {
        Log.d(TAG, "setupChat()");

        // Initialize the BluetoothConnectivityService to perform bluetooth connections
        mChatService = new BluetoothConnectivityService(this, mHandler);

        // Initialize the buffer for outgoing messages
        mOutStringBuffer = new StringBuffer("");
    }

    @Override
    public synchronized void onPause() {
        super.onPause();
        if(D) Log.e(TAG, "- ON PAUSE -");
        stk[0]= filledCellcount;

    }

    @Override
    public void onStop() {
        super.onStop();
        if(D) Log.e(TAG, "-- ON STOP --");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        // Stop the Bluetooth chat services
        if (mChatService != null) mChatService.stop();
        if(D) Log.e(TAG, "--- ON DESTROY ---");
    }

    private void ensureDiscoverable() {
        if(D) Log.d(TAG, "ensure discoverable");
        if (mBluetoothAdapter.getScanMode() !=
                BluetoothAdapter.SCAN_MODE_CONNECTABLE_DISCOVERABLE) {
            Intent discoverableIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_DISCOVERABLE);
            discoverableIntent.putExtra(BluetoothAdapter.EXTRA_DISCOVERABLE_DURATION, 300);
            startActivity(discoverableIntent);
        }
    }

    void sendCommand(String fm)
    {
        sendMessage(fm);
    }

    /**
     * Sends a message.
     * @param message  A string of text to send.
     */
    private void sendMessage(String message) {
        // Check that we're actually connected before trying anything
        lastDeliveredMsg=message;
        if (mChatService.getState() != BluetoothConnectivityService.STATE_CONNECTED) {
            Toast.makeText(this, R.string.not_connected, Toast.LENGTH_SHORT).show();
            return;
        }

        // Check that there's actually something to send
        if (message.length() > 0) {
            // Get the message bytes and tell the BluetoothConnectivityService to write
            byte[] send = message.getBytes();
            mChatService.write(send);

            // Reset out string buffer to zero and clear the edit text field
            mOutStringBuffer.setLength(0);
//            mOutEditText.setText(mOutStringBuffer);
        }
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if(D) Log.d(TAG, "onActivityResult " + resultCode);
        switch (requestCode) {
            case REQUEST_CONNECT_DEVICE_SECURE:
                // When DeviceListActivity returns with a device to connect
                if (resultCode == Activity.RESULT_OK) {
                    connectDevice(data, true);
                }
                break;
            case REQUEST_CONNECT_DEVICE_INSECURE:
                // When DeviceListActivity returns with a device to connect
                if (resultCode == Activity.RESULT_OK) {
                    connectDevice(data, false);
                }
                break;
            case REQUEST_ENABLE_BT:
                // When the request to enable Bluetooth returnsf
                if (resultCode == Activity.RESULT_OK) {
                    // Bluetooth is now enabled, so set up a chat session
                    setupChat();
                } else {
                    // User did not enable Bluetooth or an error occured
                    Log.d(TAG, "BT not enabled");
                    Toast.makeText(this, R.string.bt_not_enabled_leaving, Toast.LENGTH_SHORT).show();
                    finish();
                }
        }
    }

    private void connectDevice(Intent data, boolean secure) {
        // Get the device MAC address
        String address = data.getExtras()
                .getString(DeviceListActivity.EXTRA_DEVICE_ADDRESS);
        // Get the BLuetoothDevice object
        BluetoothDevice device = mBluetoothAdapter.getRemoteDevice(address);
        // Attempt to connect to the device
        mChatService.connect(device, secure);
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater inflater = getMenuInflater();
        inflater.inflate(R.menu.option_menu, menu);
        return true;
    }

    void makeBtConnection(){ Intent serverIntent = new Intent(this, DeviceListActivity.class);
        startActivityForResult(serverIntent, REQUEST_CONNECT_DEVICE_SECURE);}
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        Intent serverIntent = null;
        switch (item.getItemId()) {
            case R.id.secure_connect_scan:
                // Launch the DeviceListActivity to see devices and do scan
                serverIntent = new Intent(this, DeviceListActivity.class);
                startActivityForResult(serverIntent, REQUEST_CONNECT_DEVICE_SECURE);

                return true;

            case R.id.insecure_connect_scan:
                // Launch the DeviceListActivity to see devices and do scan
                serverIntent = new Intent(this, DeviceListActivity.class);
                startActivityForResult(serverIntent, REQUEST_CONNECT_DEVICE_INSECURE);
                return true;
            case R.id.discoverable:
                // Ensure this device is discoverable by others
                ensureDiscoverable();
                return true;
        }
        return false;
    }


 // logic to performGameChecking game over logic
    String lastDeliveredMsg="";

    void checkForGameover(int fla)
    {
        if (fla == 1)
        {
            GAME_PONTS++;
            switch (GAME_PONTS)
            {
                case 1:
                    imgB.setVisibility(View.VISIBLE);
                    break;
                case 2:
                    imgI.setVisibility(View.VISIBLE);
                    break;
                case 3:
                    imgN.setVisibility(View.VISIBLE);
                    break;
                case 4:
                    imgG.setVisibility(View.VISIBLE);
                    break;
                case 5:
                    sendMessage(eof);
                    gameOverFalg=true;
                    imgO.setVisibility(View.VISIBLE);
                    WON = WON +1;
                    int total=WON+FAILD;
                    his_score.setText(String.valueOf(total-WON)+"/"+String.valueOf(total));
                    your_score.setText(String.valueOf(WON)+"/"+String.valueOf(total));
                    new MyDialog().showDialog(BluetoothCommunication.this, "Yow won the game, Do you Want Play Again ?",
                            R.drawable.you_won, "No, Verify", "Yes, Play", new MyDialog.DailogCallback() {
                                @Override
                                public void onOkayClick() {
                                    resetGame(0);

                                }

                                @Override
                                public void onCancelClick() {
                                    verifyFlag =1;
                                    buttonSartplay.setVisibility(View.VISIBLE);

                                }
                            });

                    break;
            }
        }
    }

    // traverse  and check for completed rows

    void performGameChecking()
    {
        v1=v2=v3=v4=v5=h1=h2=h3=h4=h5=d1=d2=0;



        int i,j,f=4;
        if (fd1 == 0)
        {
            for (i = 0; i <= 4; i++)
            {
                for (j = i; j <= i; j++)
                {

                    if (mtr[i][j] == 1)
                    {
                        d1++;
                        if (d1 == 5)
                        {
                            checkForGameover(1);

                            fd1 = 1;
                        }
                    }

                }
            }
        }




        if (fd2 == 0)
        {
            for (i = 0; i <= 4; i++)
            {
                for (j = i; j <= i; j++)
                {

                    if (mtr[f][ j] == 1)
                    {
                        d2++;
                        if (d2== 5)
                        {
                            checkForGameover(1);
                            fd2 = 1;
                        }

                    }
                    f--;
                }
            }
        }
        for( i=0;i<=4;i++)
        {
            for(j=0;j<=4;j++)
            {

                if (mtr[i][ j] == 1) {
                    if (fv1==0&&i==0)
                    {
                        v1++;
                        if (v1 == 5) {   checkForGameover(1); fv1 = 1; }
                    }
                    if (fv2 == 0 && i == 1)
                    {
                        v2++;
                        if (v2 == 5) {   checkForGameover(1); fv2 = 1; }
                    }
                    if (fv3 == 0 && i == 2)
                    {
                        v3++;
                        if (v3 == 5) {   checkForGameover(1); fv3= 1; }
                    }

                    if (fv4 == 0 && i == 3)
                    {
                        v4++;
                        if (v4== 5) {   checkForGameover(1); fv4 = 1; }
                    }
                    if (fv5 == 0 && i == 4)
                    {
                        v5++;
                        if (v5 == 5) {   checkForGameover(1); fv5 = 1; }
                    }



                }

                if (mtr[i][ j] == 1)
                {
                    if (fh1 == 0 && j == 0)
                    {
                        h1++;
                        if (h1 == 5) {   checkForGameover(1); fh1 = 1; }
                    }
                    if (fh2 == 0 && j == 1)
                    {
                        h2++;
                        if (h2 == 5) {   checkForGameover(1); fh2 = 1; }
                    }
                    if (fh3 == 0 && j == 2)
                    {
                        h3++;
                        if (h3 == 5) {   checkForGameover(1); fh3 = 1; }
                    }
                    if (fh4 == 0 && j == 3)
                    {
                        h4++;
                        if (h4 == 5) {   checkForGameover(1); fh4 = 1; }
                    }
                    if (fh5 == 0 && j == 4)
                    {
                        h5++;
                        if (h5 == 5) {   checkForGameover(1); fh5 = 1; }
                    }
                }

            }}
    }



     String stopGame="stopGame";
    //
    //end
    // isOpenend==0 if function called in opponent
    void resetGame(int isOpenend)
    {
        buttonSartplay.setEnabled(true);
        gameOverFalg=false;
        try
        {
            if(isOpenend==0) {
            sendMessage(stopGame);
            }
                b1.setText("");
                b1.setBackgroundResource(R.drawable.button1f);
                b2.setText("");
                b2.setBackgroundResource(R.drawable.button1f);
                b3.setText("");
                b3.setBackgroundResource(R.drawable.button1f);
                b4.setText("");
                b4.setBackgroundResource(R.drawable.button1f);
                b5.setText("");
                b5.setBackgroundResource(R.drawable.button1f);
                b6.setText("");
                b6.setBackgroundResource(R.drawable.button1f);
                b7.setText("");
                b7.setBackgroundResource(R.drawable.button1f);
                b8.setText("");
                b8.setBackgroundResource(R.drawable.button1f);
                b9.setText("");
                b9.setBackgroundResource(R.drawable.button1f);
                b10.setText("");
                b10.setBackgroundResource(R.drawable.button1f);
                b11.setText("");
                b11.setBackgroundResource(R.drawable.button1f);
                b12.setText("");
                b12.setBackgroundResource(R.drawable.button1f);
                b13.setText("");
                b13.setBackgroundResource(R.drawable.button1f);
                b14.setText("");
                b14.setBackgroundResource(R.drawable.button1f);
                b15.setText("");
                b15.setBackgroundResource(R.drawable.button1f);
                b16.setText("");
                b16.setBackgroundResource(R.drawable.button1f);
                b17.setText("");
                b17.setBackgroundResource(R.drawable.button1f);
                b18.setText("");
                b18.setBackgroundResource(R.drawable.button1f);
                b19.setText("");
                b19.setBackgroundResource(R.drawable.button1f);
                b20.setText("");
                b20.setBackgroundResource(R.drawable.button1f);
                b21.setText("");
                b21.setBackgroundResource(R.drawable.button1f);
                b22.setText("");
                b22.setBackgroundResource(R.drawable.button1f);
                b23.setText("");
                b23.setBackgroundResource(R.drawable.button1f);
                b24.setText("");
                b24.setBackgroundResource(R.drawable.button1f);
                b25.setText("");
                b25.setBackgroundResource(R.drawable.button1f);

                buttonSartplay.setText("Start Play");
                buttonSartplay.setBackgroundResource(R.drawable.button);
                playButon.setText("Fill and  start");

            tf=0;
            fd1=fd2=fv1=fv2=fv3=fv4=fv5=fh1=fh2=fh3=fh4=fh5=0;
            v1=v2=v3=v4=v5=h1=h2=h3=h4=h5=d1=d2=0;
            REC=0;
            game_start_flag =0;
            isPrssedAcellORready =0;
            sf=0;
            GAME_PONTS =0;
            verifyFlag =0;
            GV=0;
            stk[0]=0;
            stk[1]=0;
            filledCellcount =0;
            msgRead =null;
            b1.setVisibility(View.VISIBLE);
            imgB.setVisibility(View.VISIBLE);
            imgI.setVisibility(View.VISIBLE);
            imgN.setVisibility(View.VISIBLE);
            imgG.setVisibility(View.VISIBLE);
            imgO.setVisibility(View.VISIBLE);

            int k=0;
            //reseting flags
            for(int i=0;i<5;i++)
            {
                for(int j=0;j<5;j++)
                {
                    bf[k]=0;
                    mtr[i][j]=0;
                    k++;
                }
            }
        }
        catch(Exception e){}
    }



    void toggleTurns()
    {
        if(GAME_TURN_FLAG ==0) {
            GAME_TURN_FLAG = 1;
            playButon.setText("Your Turn");

        }
        else
        {
            GAME_TURN_FLAG =0;
            playButon.setText("His Turn");

        }


    }




    @Override
    public void onClick(View v) {

        if(verifyFlag ==0)
        {
            if(v.getId()==R.id.button_start_play)
            {

                if (mChatService.getState() != BluetoothConnectivityService.STATE_CONNECTED) {


                  /*  AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(BluetoothCommunication.this);

                    alertDialogBuilder.setTitle("Connection Faild ");
                    alertDialogBuilder.setMessage("Please make a pair with your opponent inorder to play game");
                    // set positive button: Yes message
                    alertDialogBuilder.setIcon(R.drawable.app_icon);
                    alertDialogBuilder.setPositiveButton("Connect",new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog,int id) {
                            // go to a new activity of the app
                            makeBtConnection();
                            you_text.setVisibility(View.VISIBLE);
                            your_score.setVisibility(View.VISIBLE);
                            his_score.setVisibility(View.VISIBLE);
                            his_text.setVisibility(View.VISIBLE);
                            header.setVisibility(View.GONE);

                        }
                    });
                    // set negative button: No message
                    alertDialogBuilder.setNegativeButton("Cancel",new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog,int id) {
                            // cancel the alert box and put a Toast to the user



                            dialog.cancel();

                            Toast.makeText(getApplicationContext(), "Oops not connected",
                                    Toast.LENGTH_LONG).show();
                        }
                    });
                    // set neutral button: Exit the app message
                    //sendMessage("confi");

                    AlertDialog alertDialog = alertDialogBuilder.create();
                    // show alert
                    alertDialog.show();*/

                 new MyDialog().showDialog(this, "Please make a pair with your opponent inorder to play game",
                          R.drawable.bluttohdis, "Cancel", "Connect", new MyDialog.DailogCallback() {
                              @Override
                              public void onOkayClick() {
                                  makeBtConnection();
                                  you_text.setVisibility(View.VISIBLE);
                                  your_score.setVisibility(View.VISIBLE);
                                  his_score.setVisibility(View.VISIBLE);
                                  his_text.setVisibility(View.VISIBLE);
                                  header.setVisibility(View.GONE);

                              }

                              @Override
                              public void onCancelClick() {
                                  Toast.makeText(getApplicationContext(), "Oops not connected",
                                          Toast.LENGTH_LONG).show();
                              }
                          });

                }
                else
                {
                    if(buttonSartplay.getText().toString().equals("Stop Play"))
                    {
                        resetGame(0);


                    }
                    else if(filledCellcount==25){
                        GAME_TURN_FLAG = 1;
                        sendMessage(MSG_CONFIGOUR);
                        you_text.setVisibility(View.VISIBLE);
                        your_score.setVisibility(View.VISIBLE);
                        his_score.setVisibility(View.VISIBLE);
                        his_text.setVisibility(View.VISIBLE);
                        header.setVisibility(View.GONE);
                    }else {
                        Toast.makeText(this,"Please fill all cells ",Toast.LENGTH_LONG).show();
                    }

                }
            }
            if(v.getId()==R.id.Button01)
            {
                a=(Button)findViewById(R.id.Button01);
                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();
                    }
                }

                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[0]==0)
                    {
                        a.setBackgroundResource(R.drawable.cmp_button_pressed);
                        mtr[0][0]=1;
                        toggleTurns();
                        bf[0]=1;
                        performGameChecking();

                        sendMessage((String)(a.getText()));
                    }

                }
            }





            if(v.getId()==R.id.Button02)
            {
                a=(Button)findViewById(R.id.Button02);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }

                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[1]==0)
                    {
                        a.setBackgroundResource(R.drawable.cmp_button_pressed);
                        mtr[0][1]=1;
                        bf[1]=1;
                        toggleTurns();
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }

            }


            if(v.getId()==R.id.Button03)
            {

                a=(Button)findViewById(R.id.Button03);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();
                    }

                }


                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[2]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);

                        toggleTurns();
                        mtr[0][2]=1;

                        bf[2]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));

                    }

                }



            }
            if(v.getId()==R.id.Button04)
            {

                a=(Button)findViewById(R.id.Button04);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();
                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[3]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);

                        toggleTurns();
                        mtr[0][3]=1;
                        bf[3]=1;
                        performGameChecking();

                        sendMessage((String)(a.getText()));
                    }
                }
            }

            if(v.getId()==R.id.Button05)
            {

                a=(Button)findViewById(R.id.Button05);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[4]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);

                        toggleTurns();
                        mtr[0][4]=1;
                        bf[4]=0;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }
            }



            if(v.getId()==R.id.Button06)
            {

                a=(Button)findViewById(R.id.Button06);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();
                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[5]==0)
                    {
                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[1][0]=1;
                        bf[5]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }
            }


            if(v.getId()==R.id.Button07)
            {

                a=(Button)findViewById(R.id.Button07);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();
                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[6]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);

                        toggleTurns();

                        mtr[1][1]=1;
                        bf[6]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }

                }
            }

            if(v.getId()==R.id.Button08)
            {

                a=(Button)findViewById(R.id.Button08);
                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {

                    if(bf[7]==0)
                    {
                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[1][2]=1;
                        bf[7]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }

                }


            }

            if(v.getId()==R.id.Button09)
            {

                a=(Button)findViewById(R.id.Button09);
                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)

                    {
                        initStartButton();
                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[8]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);

                        toggleTurns();

                        mtr[1][3]=1;
                        bf[8]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }

                }
            }


            if(v.getId()==R.id.Button10)
            {

                a=(Button)findViewById(R.id.Button10);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)

                {
                    if(bf[9]==0)
                    {


                        a.setBackgroundResource(R.drawable.cmp_button_pressed);
                        sendMessage((String)(a.getText()));

                        toggleTurns();
                        mtr[1][4]=1;
                        bf[9]=1;
                        performGameChecking();
                    }

                }
            }

            if(v.getId()==R.id.Button11)
            {

                a=(Button)findViewById(R.id.Button11);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[10]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[2][0]=1;
                        bf[10]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }

                }

            }

            if(v.getId()==R.id.Button12)
            {

                a=(Button)findViewById(R.id.Button12);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[11]==0)
                    {
                        a.setBackgroundResource(R.drawable.cmp_button_pressed);
                        toggleTurns();
                        mtr[2][1]=1;
                        bf[11]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }


                }
            }
            if(v.getId()==R.id.Button13)
            {

                a=(Button)findViewById(R.id.Button13);
                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[12]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[2][2]=1;
                        bf[12]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }

            }
            if(v.getId()==R.id.Button14)
            {

                a=(Button)findViewById(R.id.Button14);
                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {

                        initStartButton();
                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[13]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[2][3]=1;
                        bf[13]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }

                }

            }
            if(v.getId()==R.id.Button15)
            {

                a=(Button)findViewById(R.id.Button15);

                if(a.getText().equals("")&& game_start_flag ==0)
                {

                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }


                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[14]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[2][4]=1;
                        bf[14]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }

            }

            if(v.getId()==R.id.Button16)
            {
                a=(Button)findViewById(R.id.Button16);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();
                    }


                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[15]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[3][0]=1;
                        bf[15]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }

                }
            }


            if(v.getId()==R.id.Button17)
            {

                a=(Button)findViewById(R.id.Button17);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[16]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[3][1]=1;
                        bf[16]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }

            }
            if(v.getId()==R.id.Button18)
            {

                a=(Button)findViewById(R.id.Button18);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[17]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[3][2]=1;
                        bf[17]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }
            }


            if(v.getId()==R.id.Button19)
            {

                a=(Button)findViewById(R.id.Button19);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[18]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[3][3]=1;
                        bf[18]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }
            }

            if(v.getId()==R.id.Button20)
            {

                a=(Button)findViewById(R.id.Button20);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[19]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[3][4]=1;
                        bf[19]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }

                }
            }


            if(v.getId()==R.id.Button21)
            {

                a=(Button)findViewById(R.id.Button21);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();
                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[20]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[4][0]=1;
                        bf[20]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }

                }

            }
            if(v.getId()==R.id.Button22)
            {

                a=(Button)findViewById(R.id.Button22);
                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[21]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[4][1]=1;
                        bf[21]=1;
                        performGameChecking();

                        sendMessage((String)(a.getText()));
                    }
                }
            }

            if(v.getId()==R.id.Button23)
            {
                a=(Button)findViewById(R.id.Button23);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[22]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);


                        toggleTurns();
                        mtr[4][2]=1;
                        bf[22]=1;
                        performGameChecking();
                        sendMessage((String)(a.getText()));
                    }
                }

            }

            if(v.getId()==R.id.Button24)
            {

                a=(Button)findViewById(R.id.Button24);

                if(a.getText().equals("")&& game_start_flag ==0)
                {
                    filledCellcount++;
                    a.setText(String.valueOf(filledCellcount));
                    if(filledCellcount ==25)
                    {
                        initStartButton();

                    }

                }
                if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
                {
                    if(bf[23]==0)
                    {

                        a.setBackgroundResource(R.drawable.cmp_button_pressed);
                        toggleTurns();
                        mtr[4][3]=1;
                        bf[23]=1;
                        performGameChecking();

                        sendMessage((String)(a.getText()));
                    }
                }

            }if(v.getId()==R.id.Button25)
        {
            a=(Button)findViewById(R.id.Button25);

            if(a.getText().equals("")&& game_start_flag ==0)
            {
                filledCellcount++;
                a.setText(String.valueOf(filledCellcount));
                if(filledCellcount ==25)
                {
                    initStartButton();
                }
            }
            if(isPrssedAcellORready ==1&& GAME_TURN_FLAG ==1)
            {
                if(bf[24]==0)
                {

                    a.setBackgroundResource(R.drawable.cmp_button_pressed);


                    toggleTurns();
                    mtr[4][4]=1;
                    bf[24]=1;
                    performGameChecking();
                    sendMessage((String)(a.getText()));
                }

            }}

        }
        else
        {

            resetGame(0);
            buttonSartplay.setText("Start Play");
        }
    }

}
		
		

