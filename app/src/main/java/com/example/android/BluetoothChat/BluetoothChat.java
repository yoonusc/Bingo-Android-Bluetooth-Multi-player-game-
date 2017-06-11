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

package com.example.android.BluetoothChat;

import java.util.Random;


import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.EditorInfo;
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
public class BluetoothChat extends Activity implements OnClickListener {
    // Debugging
    private static final String TAG = "BluetoothChat";
    private static final boolean D = true;

    // Message types sent from the BluetoothChatService Handler
    public static final int MESSAGE_STATE_CHANGE = 1;
    public static final int MESSAGE_READ = 2;
    public static final int MESSAGE_WRITE = 3;
    public static final int MESSAGE_DEVICE_NAME = 4;
    public static final int MESSAGE_TOAST = 5;
    public static  int m=0;
    public Animation anm,anm2;
    public int stk[]=new int[2];
    String msgRead;
    public int flag=0,v1,v2,v3,v4,v5,h1,h2,h3,h4,h5,d1,d2,fd1,fd2,fv1,fv2,fv3,fv4,fv5,fh1,fh2,fh3,fh4,fh5;
    public int press=0,sf=0,GF,tf=0,GV=0,BF=0,GMF=0,SCR1=0,SCR2=0,REC=0;
    Random crazy;
	public int rand,CRF=0;
    public   Boolean rndb;
    Typeface j;
    public String readMessage,Re="EOF";
    ImageView im1,im2,im3,im4,im5;
    public Button b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24,b25,str,s1,s2;
    TextView t3;
    public int bf[]=new int[26];
    public int mtr[][]=new int[5][5];
  
    // Key names received from the BluetoothChatService Handler
    public static final String DEVICE_NAME = "device_name";
    public static final String TOAST = "toast";

    // Intent request codes
    private static final int REQUEST_CONNECT_DEVICE_SECURE = 1;
    private static final int REQUEST_CONNECT_DEVICE_INSECURE = 2;
    private static final int REQUEST_ENABLE_BT = 3;
   
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
    private BluetoothChatService mChatService = null;
 Button a;
    void vie()
	  {    
		   ViewAnim obd=new ViewAnim();
	       flag=1;
	        
	        str.setVisibility(View.VISIBLE);
	        str.startAnimation(obd);
	       
	        
	  }
        
        	
        	
   
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if(D) Log.e(TAG, "+++ ON CREATE +++");

        // Set up the window layout
            requestWindowFeature(Window.FEATURE_CUSTOM_TITLE);
            setContentView(R.layout.main);
            getWindow().setFeatureInt(Window.FEATURE_CUSTOM_TITLE, R.layout.custom_title);
    
            //setup bingo
            im1=(ImageView)findViewById(R.id.ImageView04);
            im2=(ImageView)findViewById(R.id.ImageView03);
            im3=(ImageView)findViewById(R.id.ImageView02);
            im4=(ImageView)findViewById(R.id.ImageView01);
            im5=(ImageView)findViewById(R.id.imageView1);
           
        
            mTitle = (TextView) findViewById(R.id.title_left_text);
            mTitle.setText(R.string.app_name);
            mTitle = (TextView) findViewById(R.id.title_right_text);
            TextView textOut=(TextView)findViewById(R.id.edit_text_out);
            textOut.setVisibility(View.GONE);
            Button btnSend=(Button)findViewById(R.id.button_send);
            btnSend.setVisibility(View.GONE);
            ListView list=(ListView)findViewById(R.id.in);
            list.setVisibility(View.GONE);
            j=Typeface.createFromAsset(getAssets(), "font/forever.TTF");
        
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
      str=(Button)findViewById(R.id.button1);
anm=AnimationUtils.loadAnimation(this,R.animator.push_down_in);

 //s1=(Button)findViewById(R.id.Button26);
 //s1.setTypeface(j);
 anm2=AnimationUtils.loadAnimation(this,R.animator.fadeout);
  t3=(TextView)findViewById(R.id.textView2);
  t3.setTypeface(j);
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

    @TargetApi(Build.VERSION_CODES.ECLAIR) @Override
    public void onStart() {
        super.onStart();
        if(D) Log.e(TAG, "++ ON START ++");
        
        // If BT is not on, request that it be enabled.
        // setupChat() will then be called during onActivityResult 
        
       m=0;
        ViewAnim obd=new ViewAnim();
        anm=AnimationUtils.loadAnimation(this,R.animator.push_up_in);
        str.setTypeface(j);
        str.setOnClickListener(this);
        str.setVisibility(View.GONE);
        str.startAnimation(obd);
      im1.startAnimation(anm);
      
      im2.startAnimation(anm); 
      im3.startAnimation(anm); 
      im4.startAnimation(anm);
      im5.startAnimation(anm);
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
      // reset(1);
     m=stk[0];
    


        // Performing this check in onResume() covers the case in which BT was
        // not enabled during onStart(), so we were paused to enable it...
        // onResume() will be called when ACTION_REQUEST_ENABLE activity returns.
        if (mChatService != null) {
            // Only if the state is STATE_NONE, do we know that we haven't started already
            if (mChatService.getState() == BluetoothChatService.STATE_NONE) {
              // Start the Bluetooth chat services
              mChatService.start();
            }
        }
    }

    private void setupChat() {
        Log.d(TAG, "setupChat()");

        // Initialize the array adapter for the conversation thread
        mConversationArrayAdapter = new ArrayAdapter<String>(this, R.layout.message);
        mConversationView = (ListView) findViewById(R.id.in);
        mConversationView.setAdapter(mConversationArrayAdapter);

        // Initialize the compose field with a listener for the return key
        mOutEditText = (EditText) findViewById(R.id.edit_text_out);
        mOutEditText.setOnEditorActionListener(mWriteListener);
        
        // Initialize the send button with a listener that for click events
       mSendButton = (Button) findViewById(R.id.button_send);
        mSendButton.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                // Send a message using content of the edit text widget
            
				TextView ff = (TextView) findViewById(R.id.edit_text_out);
                String message = ff.getText().toString();
                sendMessage(message);
            }
        });

        // Initialize the BluetoothChatService to perform bluetooth connections
        mChatService = new BluetoothChatService(this, mHandler);

        // Initialize the buffer for outgoing messages
        mOutStringBuffer = new StringBuffer("");
    }

    @Override
    public synchronized void onPause() {
        super.onPause();
        if(D) Log.e(TAG, "- ON PAUSE -");
        stk[0]=m;
        
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
    void genf(String fm)
    {
	
	
sendMessage(fm);
	}
    /**
     * Sends a message.
     * @param message  A string of text to send.
     */
    private void sendMessage(String message) {
        // Check that we're actually connected before trying anything
        if (mChatService.getState() != BluetoothChatService.STATE_CONNECTED) {
            Toast.makeText(this, R.string.not_connected, Toast.LENGTH_SHORT).show();
            return;
        }

        // Check that there's actually something to send
        if (message.length() > 0) {
            // Get the message bytes and tell the BluetoothChatService to write
            byte[] send = message.getBytes();
            mChatService.write(send);

            // Reset out string buffer to zero and clear the edit text field
            mOutStringBuffer.setLength(0);
            mOutEditText.setText(mOutStringBuffer);
        }
    }
  

    // The action listener for the EditText widget, to listen for the return key
    private TextView.OnEditorActionListener mWriteListener =
        new TextView.OnEditorActionListener() {
        public boolean onEditorAction(TextView view, int actionId, KeyEvent event) {
            // If the action is a key-up event on the return key, send the message
            if (actionId == EditorInfo.IME_NULL && event.getAction() == KeyEvent.ACTION_UP) {
                String message = view.getText().toString();
                sendMessage(message);
            }
            if(D) Log.i(TAG, "END onEditorAction");
            return true;
        }
    };

    // The Handler that gets information back from the BluetoothChatService
    private final Handler mHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
            case MESSAGE_STATE_CHANGE:
                if(D) Log.i(TAG, "MESSAGE_STATE_CHANGE: " + msg.arg1);
                switch (msg.arg1) {
                case BluetoothChatService.STATE_CONNECTED:
                    mTitle.setText(R.string.title_connected_to);
                    mTitle.append(mConnectedDeviceName);
                    mConversationArrayAdapter.clear();
                    break;
                case BluetoothChatService.STATE_CONNECTING:
                    mTitle.setText(R.string.title_connecting);
                    break;
                case BluetoothChatService.STATE_LISTEN:
                case BluetoothChatService.STATE_NONE:
                    mTitle.setText(R.string.title_not_connected);
                    break;
                }
                break;
            case MESSAGE_WRITE:
                byte[] writeBuf = (byte[]) msg.obj;
                // construct a string from the buffer
                String writeMessage = new String(writeBuf);
                mConversationArrayAdapter.add( writeMessage);
                break;
            case MESSAGE_READ:
            	
            	
                byte[] readBuf = (byte[]) msg.obj;
                // construct a string from the valid bytes in the buffer
                readMessage = new String(readBuf, 0, msg.arg1);
              
              
                msgRead =readMessage;
               
     
        		
                if(msgRead.equals("notredy"))
                {
                	Toast.makeText(getApplicationContext(), "<<Your Oponent Not Ready>>", 
								Toast.LENGTH_LONG).show();
                }
                
                else
                {
                 
              
        			if(msgRead.equals("confi"))
        			{
        			
        			
        			               	 	    
        				 if(m<25)
        				 {
        					 
        					 genf("notredy");
        				 }
                		 
        				 else
        				 {
                			                 		 
        						str.setVisibility(View.INVISIBLE);

        	        			GMF=0;
        			press=1;
        		
         	str.setEnabled(false);
        			im1.setVisibility(View.INVISIBLE);
        			im2.setVisibility(View.INVISIBLE);
        			im3.setVisibility(View.INVISIBLE);
        			im4.setVisibility(View.INVISIBLE);
        			im5.setVisibility(View.INVISIBLE);
        			t3.setText("Bingo Started");
        		    t3.startAnimation(anm);
        		    
        		
        			genf("redy");
        		
        			
        				 }
        			
        		}
        			
        			if(msgRead.equals("redy"))
        			{
        				
        				press=1;
        				str.setVisibility(View.INVISIBLE);
            			im1.setVisibility(View.INVISIBLE);
            			im2.setVisibility(View.INVISIBLE);
            			im3.setVisibility(View.INVISIBLE);
            			im4.setVisibility(View.INVISIBLE);
            			im5.setVisibility(View.INVISIBLE);
            			t3.setText("Bingo Started");
            		    t3.startAnimation(anm);
            			str.setEnabled(false);
        				
        			}
        			
        			
        		if(msgRead.equals(Re))
        				{
        			
        			reset(1);
        			 AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(BluetoothChat.this);
                  	  alertDialogBuilder.setTitle(" You Lose...! ");
                  	  alertDialogBuilder.setIcon(R.drawable.app_icon);
           			 alertDialogBuilder.setMessage("You Lose Game  .. Do you Want Play Again");
           			 // set positive button: Yes message
           			 alertDialogBuilder.setPositiveButton("Play Again",new DialogInterface.OnClickListener() {
           					public void onClick(DialogInterface dialog,int id) {
           						// go to a new activity of the app
           						SCR2=SCR2+1;
        						//s2.setText(String.valueOf(SCR2));
        					    //s1.setText(String.valueOf(SCR1));
           					
           						reset(0);
           					}
           				  });
           		   alertDialogBuilder.setNegativeButton("Verify",new DialogInterface.OnClickListener() {
    					public void onClick(DialogInterface dialog,int id) {
    						// cancel the alert box and put a Toast to the user
    						
                            BF =1;		
    						dialog.cancel();
    						
    					}
    				});
           			 
           			 AlertDialog alertDialog = alertDialogBuilder.create();
        			 // show alert
        			 alertDialog.show();
           			
					

        			 
        			
        			
                 	
          	         t3.setVisibility(View.VISIBLE);
            		 t3.setText("You Lose Bingo....!");
            		 t3.startAnimation(anm);
            		 BF=1;
					 
        				}
        		
            
        		
             
        		
       
        	
                
                	
             
               
                	
                	
        		 // set negative button: No message
            			
            			 // set neutral button: Exit the app message
            			
                     	
                     	
                     	
                 
                	
                	 else
                	 {
                
                		 try
                		 {
                if(b1.getText().toString().equals(msgRead))
                     {
                    	 
                   
                
                    	 b1.setBackgroundResource(R.drawable.button_pressed);
                 
                    	 mtr[1][3]=1;
                    	 bf[9]=1;
                    	 ck();
                    	 check();
                     
                    	 
                     }
            		 if(b2.getText().toString().equals(msgRead))
                     {
                    	
                    	 b2.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[1][0]=1;
                    	 bf[6]=1;
                    	 check();
                    	 ck();
                     
                    	 
                     }
            		 if(b3.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b3.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[1][2]=1;
                    	 bf[8]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b4.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b4.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[1][1]=1;
                    	 bf[7]=1;
                    	 check();
                    	 ck();	 
                     }
            		 if(b5.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b5.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[0][1]=1;
                    	 bf[2]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b6.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b6.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[0][2]=1;
                    	 bf[3]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b7.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b7.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[0][0]=1;
                    	 bf[1]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b8.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b8.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[0][4]=1;
                    	 bf[5]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b9.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b9.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[0][3]=1;
                    	 bf[4]=0;
                    	 check();
                    	 ck();
                     }
            		 if(b10.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b10.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[1][4]=1;
                    	 bf[10]=1;
                    	 check();
                    	 ck();
                    	 
                     }
            		 if(b11.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b11.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[2][3]=1;
                    	 bf[14]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b12.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b12.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[2][1]=1;
                    	 bf[12]=1;
                    	 check();
                    	 ck();
                    	 
                     }
            		 if(b13.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b13.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[2][2]=1;
                    	 bf[13]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b14.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b14.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[2][0]=1;
                    	 bf[11]=1;
                    	 check();
                    	 ck();
                    	 
                     }
            		 if(b15.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b15.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[2][4]=1;
                    	 bf[15]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b16.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b16.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[3][3]=1;
                    	 bf[19]=1;
                    	 check();
                    	 ck();
                    	 
                     }
            		 if(b17.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b17.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[3][1]=1;
                    	 bf[17]=1;
                    	 check();
                    	 ck();
                    	 
                     }
            		 if(b18.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b18.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[3][2]=1;
                    	 bf[18]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b19.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b19.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[3][0]=1;
                    	 bf[16]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b20.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b20.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[3][4]=1;
                    	 bf[20]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b21.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b21.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[4][3]=1;
                    	 bf[24]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b22.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b22.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[4][1]=1;
                    	 bf[22]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b23.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b23.setBackgroundResource(R.drawable.button_pressed);
                    	 mtr[4][2]=1;
                    	 bf[23]=1;
                    	 check();
                    	 ck();
                    	 
                     }
            		 if(b24.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b24.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[4][0]=1;
                    	 bf[21]=1;
                    	 check();
                    	 ck();
                     }
            		 if(b25.getText().toString().equals(msgRead))
                     {
                    	 
                    	 b25.setBackgroundResource(R.drawable.button_pressed);
                     
                    	 mtr[4][4]=1;
                    	 bf[25]=1;
                    	 check();
                    	 ck();
                     }
            		 
            		
                }
                	 
       catch (Exception e)
       {
    	   
    	   Toast.makeText(getApplicationContext(),"Eroor", 
					Toast.LENGTH_LONG).show();
    	   
       }
            }
            	
            	
            	
            	
                }//end else of not ready

                mConversationArrayAdapter.add( readMessage);
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
void fff(){ Intent serverIntent = new Intent(this, DeviceListActivity.class);
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
    
    ///game over
    
    void gameover(int fla)
    {
        if (fla == 1)
        {
            GF++;
            switch (GF)
            {
                case 1:
                    im1.setVisibility(View.VISIBLE);

                    break;
                case 2:
                	  im2.setVisibility(View.VISIBLE);
                    break;
                case 3:
                	  im3.setVisibility(View.VISIBLE);
                    break;
                case 4:
                	  im4.setVisibility(View.VISIBLE);
                    break;
                case 5:
                      sendMessage(Re);
                	  im5.setVisibility(View.VISIBLE);         
	                  AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(BluetoothChat.this);
	                  alertDialogBuilder.setTitle(" You Win.. ");
	                  alertDialogBuilder.setIcon(R.drawable.app_icon);
	                  alertDialogBuilder.setMessage(" Congrats  .. Do you Want Play Again");
	             			 // set positive button: Yes message
	             	  alertDialogBuilder.setPositiveButton("Play Again",new DialogInterface.OnClickListener() {
	             	  public void onClick(DialogInterface dialog,int id) {
	             						// go to a new activity of the app
	             						
	             		         
	             						reset(0);
	             						SCR1=SCR1+1;
	             					    //s1.setText(String.valueOf(SCR1));
	             					    //s2.setText(String.valueOf(SCR2));
	             					
	             					}
	             				  });
	         		 // set negative button: No message
	               alertDialogBuilder.setNegativeButton("Verify",new DialogInterface.OnClickListener() {
	             					public void onClick(DialogInterface dialog,int id) {
	             						// cancel the alert box and put a Toast to the user
	             						
	             						
	             					
	             						BF=1;
	             					
	             						str.setVisibility(View.VISIBLE);
	             						b1.setVisibility(View.INVISIBLE);
	             						
	             						Toast.makeText(getApplicationContext(), "Bingoooo..", 
	             							
	             					
	             					
	             								Toast.LENGTH_LONG).show();
	             						dialog.cancel();
	             					}
	             				
	             					
	             					
	             				});
	                    	  
	             			 // set neutral button: Exit the app message
	             			
	             			 
	             			 AlertDialog alertDialog = alertDialogBuilder.create();
	             			 // show alert
	             			 alertDialog.show();
	             			 
	                	  
	                 break;
            }
        }
        }
    
    //play
	
	    void check()
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
	                    gameover(1);
	
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
	                    gameover(1);
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
	          if (v1 == 5) {   gameover(1); fv1 = 1; }
	      }
	      if (fv2 == 0 && i == 1)
	      {
	          v2++;
	          if (v2 == 5) {   gameover(1); fv2 = 1; }
	      }
	      if (fv3 == 0 && i == 2)
	      {
	          v3++;
	          if (v3 == 5) {   gameover(1); fv3= 1; }
	      }
	
	      if (fv4 == 0 && i == 3)
	      {
	          v4++;
	          if (v4== 5) {   gameover(1); fv4 = 1; }
	      }
	      if (fv5 == 0 && i == 4)
	      {
	          v5++;
	          if (v5 == 5) {   gameover(1); fv5 = 1; }
	      }
	
	
	
	  }
	
	 if (mtr[i][ j] == 1) 
	  {
	      if (fh1 == 0 && j == 0)
	      {
	          h1++;
	          if (h1 == 5) {   gameover(1); fh1 = 1; }
	      }
	      if (fh2 == 0 && j == 1)
	      {
	          h2++;
	          if (h2 == 5) {   gameover(1); fh2 = 1; }
	      }
	      if (fh3 == 0 && j == 2)
	      {
	          h3++;
	          if (h3 == 5) {   gameover(1); fh3 = 1; }
	      }
	      if (fh4 == 0 && j == 3)
	      {
	          h4++;
	          if (h4 == 5) {   gameover(1); fh4 = 1; }
	      }
	      if (fh5 == 0 && j == 4)
	      {
	          h5++;
	          if (h5 == 5) {   gameover(1); fh5 = 1; }
	      }
	  }
	
	      }}
	    }




	//
    //end
    void reset(int kk)
    {
    	str.setEnabled(true);
    	try
    	{
    		if(kk!=1)
    		{
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
    		
    	str.setText("<<Start Play>>");
    	str.setBackgroundResource(R.drawable.button);
    	t3.setText("Fill and  start");
    	
    		}
    	tf=0;
    	
    	 fd1=fd2=fv1=fv2=fv3=fv4=fv5=fh1=fh2=fh3=fh4=fh5=0;
    	 v1=v2=v3=v4=v5=h1=h2=h3=h4=h5=d1=d2=0;

    	REC=0;
    	flag=0;
    	press=0;
    	sf=0;
    	GF=0;
    	BF=0;
    	GV=0;
    	stk[0]=0;
    	stk[1]=0;
    	m=0;
    	msgRead =null;
    	b1.setVisibility(View.VISIBLE);
    	im1.setVisibility(View.VISIBLE);
		im2.setVisibility(View.VISIBLE);
		im3.setVisibility(View.VISIBLE);
		im4.setVisibility(View.VISIBLE);
		im5.setVisibility(View.VISIBLE);
    
    	
    	int k=0;
    	//reseting flags
    	for(int i=0;i<5;i++)
    	{
    		
    		for(int j=0;j<5;j++)
    		{
    			k++;
    			bf[k]=0;
    			mtr[i][j]=0;
    			
    		}
    		
    	}
    	
    	
    	}
    	catch(Exception e){}
    	
    	
    	
    }
    
    void clearmat()
    {
    	
    	//reseting flags
    	for(int i=0;i<5;i++)
    	{
    		
    		for(int j=0;j<5;j++)
    		{
    			//k++;
    			//bf[k]=0;
    			mtr[i][j]=0;
    		}
    		
    	}
    	
    	
    }
    
void ck()
{
	
	if(GMF==0)
	{
		GMF=1;
		str.setText("");str.setText("");
        str.setBackgroundResource(R.drawable.ur);	}
	else
	{		
		GMF=0;
		str.setText("");
        str.setBackgroundResource(R.drawable.hi);
	}
	
	
 	  }
void ck3()
{
	  if(rndb==true&&press==1)
 	  {
 	  
		  
			Toast.makeText(getApplicationContext(), "Your Turn", 
					Toast.LENGTH_LONG).show();
	
 	  } 
			if(press==1&&rndb==false)
			{Toast.makeText(getApplicationContext(), "His Turn", 
					Toast.LENGTH_LONG).show();}
		
 	  
 	  
 	  }



 	  
 	  

 	


	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		

		if(BF==0)
		{
		
		if(v.getId()==R.id.button1)
		{
			
			
			
			
			if (mChatService.getState() != BluetoothChatService.STATE_CONNECTED) {
		            Toast.makeText(this, R.string.not_connected, Toast.LENGTH_SHORT).show();
		            
		        
	
			
			AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(BluetoothChat.this);
		     
			 alertDialogBuilder.setTitle("Connection Faild ");
			 alertDialogBuilder.setMessage("Please make a connection with your oponent before you start bingo..");
			 // set positive button: Yes message
			 alertDialogBuilder.setIcon(R.drawable.app_icon);
			 alertDialogBuilder.setPositiveButton("Connect",new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog,int id) {
						// go to a new activity of the app
				fff();
				
				
					}
				  });
			 // set negative button: No message
			 alertDialogBuilder.setNegativeButton("Cancel",new DialogInterface.OnClickListener() {
					public void onClick(DialogInterface dialog,int id) {
						// cancel the alert box and put a Toast to the user
					 
						
						
						dialog.cancel();
						
					Toast.makeText(getApplicationContext(), "You are still not connected", 
								Toast.LENGTH_LONG).show();
					}
				});
			 // set neutral button: Exit the app message
			//sendMessage("confi");
			 
			 AlertDialog alertDialog = alertDialogBuilder.create();
			 // show alert
			 alertDialog.show();
			
	
			 }
			 else
			 {
				
				 GMF=1;   
				 sendMessage("confi");
				}
				
	 		
	 		
	 	}
			

				 
			
			
		
			 
			
			
		
		
		
		
		
	
		if(v.getId()==R.id.Button01)
		{	
		 a=(Button)findViewById(R.id.Button01);
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
				 

					vie();  
				        
				}
				
			}
			 
			if(press==1&&GMF==1)
			{
				if(bf[9]==0)
				{
			
				
				 
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
			
				 mtr[1][3]=1;
			
			ck();
				 bf[9]=1;
				 check();
				 
				 sendMessage((String)(a.getText()));
				}
				
				}
			}
			
			
	
		
		
		if(v.getId()==R.id.Button02)
		{
	 a=(Button)findViewById(R.id.Button02);
			
		if(a.getText().equals("")&&flag==0)
		{
			m++;
			a.setText(String.valueOf(m));
			if(m==25)
			{
				vie();
			 
			}
			
		}

		if(press==1&&GMF==1)
		{
			if(bf[6]==0)
			{
			
			 
			 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				
				 mtr[1][0]=1;
		       
		         bf[6]=1;
		         ck();
			check();
			 sendMessage((String)(a.getText()));
		}
		}
		
		}
		
		
		if(v.getId()==R.id.Button03)
		{
			
			 a=(Button)findViewById(R.id.Button03);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie(); 
				}
				
			}
			
			
			if(press==1&&GMF==1)
			{ 
				if(bf[8]==0)
				{
			
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				 
				ck();
				 mtr[1][2]=1;
					
			    bf[8]=1;
			    check();
				 sendMessage((String)(a.getText()));
				
				}
				
				}
				
			
			
		}
		if(v.getId()==R.id.Button04)
		{
		
		 a=(Button)findViewById(R.id.Button04);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie(); 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[7]==0)
				{
				
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
				ck();
				mtr[1][1]=1;
				bf[7]=1;
				check();
			 
				 sendMessage((String)(a.getText()));
				}
				}
			}
		
		if(v.getId()==R.id.Button05)
		{
	
			a=(Button)findViewById(R.id.Button05);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[2]==0)
				{
				
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				 	 
				ck();
				mtr[0][1]=1;
				bf[2]=0;
				check();
				sendMessage((String)(a.getText()));
				}
			}
			}
		
		
		
		if(v.getId()==R.id.Button06)
		{

		 a=(Button)findViewById(R.id.Button06);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie(); 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[3]==0)
				{
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
				 
			ck();
				mtr[0][2]=1;
				bf[3]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
			}
			}
		
		
		if(v.getId()==R.id.Button07)
		{
	
			a=(Button)findViewById(R.id.Button07);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie(); 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[1]==0)
				{
			
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
	
				 ck();
			
				mtr[0][0]=1;
				bf[1]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				
			}
			}
		
		if(v.getId()==R.id.Button08)
		{
			
			a=(Button)findViewById(R.id.Button08);
			if(a.getText().equals("")&&flag==0)
			{ 
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				
					if(bf[5]==0)
					{
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				 
					 
			ck();
				mtr[0][4]=1;
				bf[5]=1;
				check();
				 sendMessage((String)(a.getText()));
				     }
				
			}
			
		
			}
		
		if(v.getId()==R.id.Button09)
		{
		
		 a=(Button)findViewById(R.id.Button09);
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				 
				{
					vie();
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[4]==0)
				{
				
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				 
				ck();	 
			
				mtr[0][3]=1;
				bf[4]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				
				}
			}
		
		
		if(v.getId()==R.id.Button10)
		{
	
		 a=(Button)findViewById(R.id.Button10);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
				vie();	
			 
				}
				
			}
			if(press==1&&GMF==1)
		
			{
				if(bf[10]==0)
				{
				

				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					 sendMessage((String)(a.getText()));
					 
			ck();
				mtr[1][4]=1;
				bf[10]=1;
				check();
				}
				
			}
			}
		
		if(v.getId()==R.id.Button11)
		{
		
			 a=(Button)findViewById(R.id.Button11);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[14]==0)
				{
	
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
				 
				ck();
				mtr[2][3]=1;
				bf[14]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				
				}
			
		}
		
		if(v.getId()==R.id.Button12)
		{
		
		 a=(Button)findViewById(R.id.Button12);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[12]==0)
				{
				
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				
				 
				ck();
				mtr[2][1]=1;
				bf[12]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				
			
			}
		}
		if(v.getId()==R.id.Button13)
		{
	
	a=(Button)findViewById(R.id.Button13);
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[13]==0)
				{
			
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
				 
				ck();
				mtr[2][2]=1;
				bf[13]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
			}
			
		}
		if(v.getId()==R.id.Button14)
		{
	
		 a=(Button)findViewById(R.id.Button14);
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
				 
					vie();	
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[11]==0)
				{
	
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					 
				 
				ck();
				mtr[2][0]=1;
				bf[11]=1;
				check();
				sendMessage((String)(a.getText()));
				}
				
				}
			
		}
		if(v.getId()==R.id.Button15)
		{
		
		 a=(Button)findViewById(R.id.Button15);
			
			if(a.getText().equals("")&&flag==0)
			{
			 
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
					
				}
				
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[15]==0)
				{
		
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					 
				 
			ck();
				mtr[2][4]=1;
				bf[15]=1;
				check();
				sendMessage((String)(a.getText()));
				}
				}
				
			}
		
		if(v.getId()==R.id.Button16)
		{
	 a=(Button)findViewById(R.id.Button16);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie(); 
				}
				
			
			}
			if(press==1&&GMF==1)
			{
				if(bf[19]==0)
				{
			
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				 
					 
				ck();
				mtr[3][3]=1;
				bf[19]=1;
				check();
				sendMessage((String)(a.getText()));
				}
				
				}
			}
			
		
		if(v.getId()==R.id.Button17)
		{
	
		 a=(Button)findViewById(R.id.Button17);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[17]==0)
				{
			
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
				 
				ck();
				mtr[3][1]=1;
				bf[17]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				}
			
		}
		if(v.getId()==R.id.Button18)
		{
		
		 a=(Button)findViewById(R.id.Button18);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[18]==0)
				{
				
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				 
					 
				ck();
				mtr[3][2]=1;
				bf[18]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				}
			}
		
		
		if(v.getId()==R.id.Button19)
		{
	
		a=(Button)findViewById(R.id.Button19);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
				 
				}

			}
			if(press==1&&GMF==1)
			{
				if(bf[16]==0)
				{

				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				 
					 
				ck();
				mtr[3][0]=1;
				bf[16]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
			}
			}
		
		if(v.getId()==R.id.Button20)
		{
	
	a=(Button)findViewById(R.id.Button20);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[20]==0)
				{
		
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
				 
				ck();
				mtr[3][4]=1;
				bf[20]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				
				}
			}
		
		
		if(v.getId()==R.id.Button21)
		{
		
		a=(Button)findViewById(R.id.Button21);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie(); 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[24]==0)
				{
			
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
				 
				ck();
				mtr[4][3]=1;
				bf[24]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				
				}
			
		}
		if(v.getId()==R.id.Button22)
		{
		
		 a=(Button)findViewById(R.id.Button22);
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();	
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[22]==0)
				{
			
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				
					 
				ck();
				mtr[4][1]=1;
				bf[22]=1;
				check();
			 
				 sendMessage((String)(a.getText()));
				}
			}
			}
		
		if(v.getId()==R.id.Button23)
		{
	 a=(Button)findViewById(R.id.Button23);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();
				 
				}
				
			}
			if(press==1&&GMF==1)
			{
				if(bf[23]==0)
				{
				
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
				 
				ck();
				mtr[4][2]=1;
				bf[23]=1;
				check();
				 sendMessage((String)(a.getText()));
				}
				}
				
			}
		
		if(v.getId()==R.id.Button24)
		{
	
		 a=(Button)findViewById(R.id.Button24);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++;
				a.setText(String.valueOf(m));
				if(m==25)
				{
				vie();
			 
				}

			}
			if(press==1&&GMF==1)
			{
				if(bf[21]==0)
				{
				
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
				ck();
				mtr[4][0]=1;
				bf[21]=1;
				check();
			 
				 sendMessage((String)(a.getText()));
				}
				}
			
		}if(v.getId()==R.id.Button25)
		{
		 a=(Button)findViewById(R.id.Button25);
			
			if(a.getText().equals("")&&flag==0)
			{
				m++; 
				a.setText(String.valueOf(m));
				if(m==25)
				{
					vie();		
				}
			}
			if(press==1&&GMF==1)
			{
				if(bf[25]==0)
				{
				 
				 a.setBackgroundResource(R.drawable.cmp_button_pressed);
					
					 
				ck();
				mtr[4][4]=1;
                bf[25]=1;
                check();
                sendMessage((String)(a.getText()));
				}
				
			}}
		
		}
		else
			{
			
			
			reset(0);
		
		str.setText("<<Start Play>>");
		}
		}
	
		}
		
		

