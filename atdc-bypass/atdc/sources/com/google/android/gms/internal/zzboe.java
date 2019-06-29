package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.CompletionEvent;
import com.google.android.gms.drive.events.CompletionListener;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.zzb;
import com.google.android.gms.drive.events.zzd;
import com.google.android.gms.drive.events.zzi;
import com.google.android.gms.drive.events.zzl;
import com.google.android.gms.drive.events.zzn;

final class zzboe extends Handler {
    private final Context mContext;

    private zzboe(Looper looper, Context context) {
        super(looper);
        this.mContext = context;
    }

    public final void handleMessage(Message message) {
        if (message.what != 1) {
            zzbng.zzm(this.mContext, "EventCallback", "Don't know how to handle this event");
            return;
        }
        Pair pair = (Pair) message.obj;
        zzi zzi = (zzi) pair.first;
        DriveEvent driveEvent = (DriveEvent) pair.second;
        int type = driveEvent.getType();
        if (type != 8) {
            switch (type) {
                case 1:
                    ((ChangeListener) zzi).onChange((ChangeEvent) driveEvent);
                    return;
                case 2:
                    ((CompletionListener) zzi).onCompletion((CompletionEvent) driveEvent);
                    return;
                case 3:
                    zzl zzl = (zzl) driveEvent;
                    DataHolder zztb = zzl.zztb();
                    if (zztb != null) {
                        zzbof zzbof = new zzbof(new MetadataBuffer(zztb));
                    }
                    if (zzl.zztc()) {
                        zzl.zztd();
                    }
                    return;
                case 4:
                    ((zzd) zzi).zza((zzb) driveEvent);
                    return;
                default:
                    String valueOf = String.valueOf(driveEvent);
                    StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 18);
                    stringBuilder.append("Unexpected event: ");
                    stringBuilder.append(valueOf);
                    zzbng.zzy("EventCallback", stringBuilder.toString());
                    return;
            }
        }
        zzbkn zzbkn = new zzbkn(((zzn) driveEvent).zzte());
    }
}
