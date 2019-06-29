package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import org.roboguice.shaded.goole.common.primitives.Ints;

public final class zzcbf extends zzcbh {
    private Activity mActivity;
    private final int zzaBk;

    public zzcbf(int i, Activity activity) {
        this.zzaBk = i;
        this.mActivity = activity;
    }

    private final void setActivity(Activity activity) {
        this.mActivity = null;
    }

    public final void zze(int i, Bundle bundle) {
        Throwable e;
        String str;
        String str2;
        PendingIntent createPendingResult;
        if (i == 1) {
            Intent intent = new Intent();
            intent.putExtras(bundle);
            createPendingResult = this.mActivity.createPendingResult(this.zzaBk, intent, Ints.MAX_POWER_OF_TWO);
            if (createPendingResult != null) {
                try {
                    createPendingResult.send(1);
                    return;
                } catch (CanceledException e2) {
                    e = e2;
                    str = "AddressClientImpl";
                    str2 = "Exception settng pending result";
                    Log.w(str, str2, e);
                }
            }
            return;
        }
        PendingIntent pendingIntent = null;
        if (bundle != null) {
            pendingIntent = (PendingIntent) bundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT");
        }
        ConnectionResult connectionResult = new ConnectionResult(i, pendingIntent);
        if (connectionResult.hasResolution()) {
            try {
                connectionResult.startResolutionForResult(this.mActivity, this.zzaBk);
                return;
            } catch (SendIntentException e3) {
                e = e3;
                str = "AddressClientImpl";
                str2 = "Exception starting pending intent";
                Log.w(str, str2, e);
            }
        }
        try {
            createPendingResult = this.mActivity.createPendingResult(this.zzaBk, new Intent(), Ints.MAX_POWER_OF_TWO);
            if (createPendingResult != null) {
                createPendingResult.send(1);
            }
        } catch (CanceledException e4) {
            e = e4;
            str = "AddressClientImpl";
            str2 = "Exception setting pending result";
            Log.w(str, str2, e);
        }
    }
}
