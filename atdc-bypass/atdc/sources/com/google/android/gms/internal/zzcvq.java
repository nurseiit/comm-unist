package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.R;

public final class zzcvq {
    private final Intent mIntent;
    private final Context zzaSQ;
    private final Context zzapC;
    private final zzcwn zzbGZ;

    public zzcvq(Intent intent, Context context, Context context2, zzcwn zzcwn) {
        this.zzapC = context;
        this.zzaSQ = context2;
        this.mIntent = intent;
        this.zzbGZ = zzcwn;
    }

    public final void zzCv() {
        String string;
        String string2;
        try {
            this.zzbGZ.zzs(this.mIntent.getData());
            string = this.zzaSQ.getResources().getString(R.string.tagmanager_preview_dialog_title);
            string2 = this.zzaSQ.getResources().getString(R.string.tagmanager_preview_dialog_message);
            String string3 = this.zzaSQ.getResources().getString(R.string.tagmanager_preview_dialog_button);
            AlertDialog create = new Builder(this.zzapC).create();
            create.setTitle(string);
            create.setMessage(string2);
            create.setButton(-1, string3, new zzcvr(this));
            create.show();
        } catch (Exception e) {
            string2 = "Calling preview threw an exception: ";
            string = String.valueOf(e.getMessage());
            zzcvk.e(string.length() != 0 ? string2.concat(string) : new String(string2));
        }
    }
}
