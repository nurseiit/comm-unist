package com.google.firebase.database;

import com.google.android.gms.internal.qr;
import com.google.android.gms.internal.qu;
import com.google.android.gms.internal.tn;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xp;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.za;
import com.google.android.gms.internal.zd;
import com.google.android.gms.internal.zf;
import com.google.android.gms.internal.zg;
import com.google.android.gms.tasks.Task;
import com.google.firebase.database.DatabaseReference.CompletionListener;
import java.util.Map;

public class OnDisconnect {
    private qu zzbYY;
    private qr zzbZf;

    OnDisconnect(qu quVar, qr qrVar) {
        this.zzbYY = quVar;
        this.zzbZf = qrVar;
    }

    private final Task<Void> zza(CompletionListener completionListener) {
        za zzb = zd.zzb(completionListener);
        this.zzbYY.zzq(new zzo(this, zzb));
        return (Task) zzb.getFirst();
    }

    private final Task<Void> zza(Map<String, Object> map, CompletionListener completionListener) {
        Map zzb = zf.zzb(this.zzbZf, map);
        za zzb2 = zd.zzb(completionListener);
        this.zzbYY.zzq(new zzn(this, zzb, zzb2, map));
        return (Task) zzb2.getFirst();
    }

    private final Task<Void> zzb(Object obj, xm xmVar, CompletionListener completionListener) {
        zf.zzO(this.zzbZf);
        tn.zza(this.zzbZf, obj);
        obj = zg.zzan(obj);
        zf.zzam(obj);
        xm zza = xp.zza(obj, xmVar);
        za zzb = zd.zzb(completionListener);
        this.zzbYY.zzq(new zzm(this, zza, zzb));
        return (Task) zzb.getFirst();
    }

    public Task<Void> cancel() {
        return zza(null);
    }

    public void cancel(CompletionListener completionListener) {
        zza(completionListener);
    }

    public Task<Void> removeValue() {
        return setValue(null);
    }

    public void removeValue(CompletionListener completionListener) {
        setValue(null, completionListener);
    }

    public Task<Void> setValue(Object obj) {
        return zzb(obj, xd.zzJb(), null);
    }

    public Task<Void> setValue(Object obj, double d) {
        return zzb(obj, xs.zzc(this.zzbZf, Double.valueOf(d)), null);
    }

    public Task<Void> setValue(Object obj, String str) {
        return zzb(obj, xs.zzc(this.zzbZf, str), null);
    }

    public void setValue(Object obj, double d, CompletionListener completionListener) {
        zzb(obj, xs.zzc(this.zzbZf, Double.valueOf(d)), completionListener);
    }

    public void setValue(Object obj, CompletionListener completionListener) {
        zzb(obj, xd.zzJb(), completionListener);
    }

    public void setValue(Object obj, String str, CompletionListener completionListener) {
        zzb(obj, xs.zzc(this.zzbZf, str), completionListener);
    }

    public void setValue(Object obj, Map map, CompletionListener completionListener) {
        zzb(obj, xs.zzc(this.zzbZf, map), completionListener);
    }

    public Task<Void> updateChildren(Map<String, Object> map) {
        return zza(map, null);
    }

    public void updateChildren(Map<String, Object> map, CompletionListener completionListener) {
        zza(map, completionListener);
    }
}
