package com.google.android.gms.location.places.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.zze;

public class zzb {
    protected final Intent mIntent;

    public zzb(String str) {
        this.mIntent = new Intent(str);
        this.mIntent.setPackage("com.google.android.gms");
    }

    /* Access modifiers changed, original: protected */
    public Intent build(Activity activity) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        Theme theme = activity.getTheme();
        TypedValue typedValue = new TypedValue();
        TypedValue typedValue2 = new TypedValue();
        if (theme.resolveAttribute(16843827, typedValue, true) && !this.mIntent.hasExtra("primary_color")) {
            this.mIntent.putExtra("primary_color", typedValue.data);
        }
        if (theme.resolveAttribute(16843828, typedValue2, true) && !this.mIntent.hasExtra("primary_color_dark")) {
            this.mIntent.putExtra("primary_color_dark", typedValue2.data);
        }
        GoogleApiAvailability.getInstance();
        zze.zzas(activity);
        return this.mIntent;
    }
}
