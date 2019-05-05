package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class TagManagerPreviewActivity extends Activity {
    public void onCreate(Bundle bundle) {
        Log.v("GoogleTagManager", "TagManagerPreviewActivity created.");
        super.onCreate(bundle);
        if (getIntent().getData() == null) {
            Log.e("GoogleTagManager", "Activity intent has no data.");
        } else {
            zzbf.zza(getIntent(), this);
        }
    }
}
