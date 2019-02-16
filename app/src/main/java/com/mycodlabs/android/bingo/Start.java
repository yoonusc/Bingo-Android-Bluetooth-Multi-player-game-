 package com.example.android.BluetoothChat;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;

public class Start extends  Activity implements View.OnClickListener
{

public Animation anmf;
Button ba,ab,baa;
	
	
	protected void onCreate(Bundle savedInstanc) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanc);
		setContentView(R.layout.start);
		anmf=AnimationUtils.loadAnimation(this,R.animator.push_up_in);
		

	    Typeface j=Typeface.createFromAsset(getAssets(), "font/forever.TTF");
	
		/*Intent ob=new Intent("com.example.android.START");
		startActivity(ob);*/
		
 ab=(Button)findViewById(R.id.abo); 
		ab.setTypeface(j);
		ab.setOnClickListener(this);
		
ba=(Button)findViewById(R.id.str);
		ba.setTypeface(j);
		ba.setOnClickListener(this);
	
	 baa=(Button)findViewById(R.id.qt);
		baa.setTypeface(j);
		
		baa.setOnClickListener(this);
		 final ProgressDialog pd= ProgressDialog.show(this, "Tranquil Bingo", "Loading......",true);
	     pd.setIcon(R.drawable.app_icon);  
	 
		 new Thread(new Runnable() {
			
			@Override
			public void run() {
				try
				{
					
				 Thread.sleep(2500);
				 pd.dismiss();
				 
				
				}
				catch(InterruptedException e){}
			}
		}).start();
		   ab.startAnimation(anmf);
			 ba.startAnimation(anmf);
			 baa.startAnimation(anmf);
	
	}

	@Override
	public void onClick(View ar) {
		// TODO At-generated method stub
		switch (ar.getId()) {
	
		case R.id.abo:
			Dialog d = new Dialog(this);
        	// Have the new window tint and blur the window it
        	// obscures.
        	Window window = d.getWindow();
        	window.setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
        	WindowManager.LayoutParams.FLAG_FULLSCREEN);
        	d.setTitle("Tranqul Bingo");
        	
        d.setContentView(R.layout.abut);
       
        d.show();
       
			break;
		case R.id.str:
			
			
		Intent ob=new Intent("com.example.android.START");
	
	 startActivity(ob);		
			break;
        case R.id.qt:
        	
            Start.this.finish();
			android.os.Process.killProcess(android.os.Process.myPid());
			System.exit(0);
			
			
			
			break;
		

		default:
			break;
		}
		
		
	}


	
	

	
	}

