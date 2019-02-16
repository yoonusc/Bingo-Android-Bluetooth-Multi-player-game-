 package com.mycodlabs.android.bingo;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
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
		

	    Typeface j=Typeface.createFromAsset(getAssets(), "font/monseratt_medium.ttf");
		/*Intent ob=new Intent("com.example.android.START");
		startActivity(ob);*/
		
 ab=(Button)findViewById(R.id.abo);
		ab.setOnClickListener(this);
		
ba=(Button)findViewById(R.id.str);
		ba.setOnClickListener(this);
	
	 baa=(Button)findViewById(R.id.qt);
		baa.setOnClickListener(this);
		/// final ProgressDialog pd= ProgressDialog.show(this, "Bingo", "Loading.",true);
	 //    pd.setIcon(R.drawable.app_icon);
	 
//		 new Thread(new Runnable() {
//
//			@Override
//			public void run() {
//				try
//				{
//
//				}
//				catch(InterruptedException e){}
//			}
//		}).start();
		   ab.startAnimation(anmf);
		   ab.setTypeface(j);
			 ba.startAnimation(anmf);
			 ba.setTypeface(j);
			 baa.startAnimation(anmf);
			 baa.setTypeface(j);
	
	}

	@Override
	public void onClick(View ar) {
		// TODO At-generated method stub
		switch (ar.getId()) {
	
		case R.id.abo:

			new MyDialog().showDialog(Start.this, "Bingo is famous backbencher's game, this game is developed from open source bluetooth chat application,source code is available in mycodlabs.com, to know more about us and  if " +
							" you need contribute  please visit our website",
					R.drawable.about, "Cancel", "Yes,Visit", new MyDialog.DailogCallback() {
						@Override
						public void onOkayClick() {
							String url = "http://www.mycodlabs.com/";
							Intent i = new Intent(Intent.ACTION_VIEW);
							i.setData(Uri.parse(url));
							startActivity(i);
						}

						@Override
						public void onCancelClick() {


						}
					});


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

