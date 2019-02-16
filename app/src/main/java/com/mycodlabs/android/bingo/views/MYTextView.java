package com.mycodlabs.android.bingo.views;


import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;


public class MYTextView extends android.support.v7.widget.AppCompatTextView {


    public MYTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(attrs);
    }

    public MYTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(attrs);

    }

    public MYTextView(Context context) {
        super(context);
        init(null);
    }

    private void init(AttributeSet attrs) {
        if (attrs != null) {

            try {

                    Typeface myTypeface = Typeface.createFromAsset(getContext().getAssets(), "fonts/" + "montserrat_regular.ttf");
                    setTypeface(myTypeface);

            } catch (Exception e) {
                e.printStackTrace();
            }


        }
    }
}