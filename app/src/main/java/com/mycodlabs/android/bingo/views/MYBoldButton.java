package com.mycodlabs.android.bingo.views;


import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;


public class MYBoldButton extends android.support.v7.widget.AppCompatButton {


    public MYBoldButton(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(attrs);
    }

    public MYBoldButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs);

    }

    public MYBoldButton(Context context) {
        super(context);
        init(null);
    }

    private void init(AttributeSet attrs) {
        if (attrs != null) {

            try {

                    Typeface myTypeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/" + "monseratt_medium.ttf");
                    setTypeface(myTypeface);

            } catch (Exception e) {
                e.printStackTrace();
            }


        }
    }
}