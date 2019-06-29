package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import com.google.android.gms.drive.DriveFile;

@zzzn
public final class zzakr extends MutableContextWrapper {
    private Context mApplicationContext;
    private Activity zzaaC;
    private Context zzacs;

    public zzakr(Context context) {
        super(context);
        setBaseContext(context);
    }

    public final Object getSystemService(String str) {
        return this.zzacs.getSystemService(str);
    }

    public final void setBaseContext(Context context) {
        this.mApplicationContext = context.getApplicationContext();
        this.zzaaC = context instanceof Activity ? (Activity) context : null;
        this.zzacs = context;
        super.setBaseContext(this.mApplicationContext);
    }

    public final void startActivity(Intent intent) {
        if (this.zzaaC != null) {
            this.zzaaC.startActivity(intent);
            return;
        }
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        this.mApplicationContext.startActivity(intent);
    }

    public final Activity zzis() {
        return this.zzaaC;
    }

    public final Context zzit() {
        return this.zzacs;
    }
}
