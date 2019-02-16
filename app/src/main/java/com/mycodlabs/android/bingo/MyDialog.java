package com.mycodlabs.android.bingo;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.mycodlabs.android.bingo.R;

import pl.droidsonroids.gif.GifDrawable;

public class MyDialog {
        Dialog dialog;
        public  void showDialog(Activity activity, String msg, int icon,String negativeText,String positiveText,final DailogCallback callback){
            dialog = new Dialog(activity);
            dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
            dialog.setCancelable(false);
            LayoutInflater inflater = (LayoutInflater) activity.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            View view = inflater.inflate(R.layout.my_dailog, null, false);
            dialog.setContentView(view);
            ImageView iconImage = (ImageView) dialog.findViewById(R.id.icon);
            iconImage.setImageResource(icon);
            TextView text = (TextView) dialog.findViewById(R.id.text_msg);
            text.setText(msg);
            TextView dialogButton = (TextView) dialog.findViewById(R.id.negative_button);
            dialogButton.setText(negativeText);
            dialogButton.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                  dialog.dismiss();
                  callback.onCancelClick();
                }
            });

            TextView dialogPositive= (TextView) dialog.findViewById(R.id.positive_button);
            dialogPositive.setText(positiveText);
            dialogPositive.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    dialog.dismiss();
                    callback.onOkayClick();
                }
            });

            WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
            WindowManager vm=(WindowManager)activity.getSystemService(Context.WINDOW_SERVICE)  ;
            Display dis=vm.getDefaultDisplay();
            Point size = new Point();
            dis.getSize(size);
            lp.copyFrom(dialog.getWindow().getAttributes());
            lp.width = WindowManager.LayoutParams.MATCH_PARENT;
            lp.height = WindowManager.LayoutParams.WRAP_CONTENT;
            dialog.getWindow().setAttributes(lp);
            dialog.getWindow().setBackgroundDrawable(new ColorDrawable(android.graphics.Color.TRANSPARENT));
            dialog.show();

        }

    interface  DailogCallback
    {
        public void onOkayClick();
        public  void onCancelClick();

    }
}
