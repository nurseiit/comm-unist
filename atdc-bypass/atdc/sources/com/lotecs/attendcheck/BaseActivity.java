package com.lotecs.attendcheck;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import kr.ac.unist.atdc.R;
import roboguice.activity.RoboActivity;

public class BaseActivity extends RoboActivity {
    public static Typeface mTypeface;

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (mTypeface == null) {
            mTypeface = Typeface.createFromAsset(getAssets(), "Roboto-Regular.ttf");
        }
        setGlobalFont((ViewGroup) findViewById(16908290));
    }

    /* Access modifiers changed, original: 0000 */
    public void setGlobalFont(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof TextView) {
                ((TextView) childAt).setTypeface(mTypeface);
            } else if (childAt instanceof ViewGroup) {
                setGlobalFont((ViewGroup) childAt);
            }
        }
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.normal, menu);
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
        } else if (itemId != R.id.refresh) {
            return false;
        }
        return true;
    }
}
