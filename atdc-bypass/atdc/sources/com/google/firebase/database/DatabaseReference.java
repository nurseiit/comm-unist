package com.google.firebase.database;

import com.bumptech.glide.load.Key;
import com.google.android.gms.internal.pz;
import com.google.android.gms.internal.qg;
import com.google.android.gms.internal.qr;
import com.google.android.gms.internal.qu;
import com.google.android.gms.internal.ry;
import com.google.android.gms.internal.tn;
import com.google.android.gms.internal.wp;
import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xp;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.za;
import com.google.android.gms.internal.zc;
import com.google.android.gms.internal.zd;
import com.google.android.gms.internal.zf;
import com.google.android.gms.internal.zg;
import com.google.android.gms.tasks.Task;
import com.google.firebase.database.Transaction.Handler;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

public class DatabaseReference extends Query {
    private static qg zzbYL;

    public interface CompletionListener {
        void onComplete(DatabaseError databaseError, DatabaseReference databaseReference);
    }

    DatabaseReference(qu quVar, qr qrVar) {
        super(quVar, qrVar);
    }

    public static void goOffline() {
        ry.zzd(zzFl());
    }

    public static void goOnline() {
        ry.zze(zzFl());
    }

    private static synchronized qg zzFl() {
        qg qgVar;
        synchronized (DatabaseReference.class) {
            if (zzbYL == null) {
                zzbYL = new qg();
            }
            qgVar = zzbYL;
        }
        return qgVar;
    }

    private final Task<Void> zza(xm xmVar, CompletionListener completionListener) {
        zf.zzO(this.zzbZf);
        za zzb = zd.zzb(completionListener);
        this.zzbYY.zzq(new zzd(this, xmVar, zzb));
        return (Task) zzb.getFirst();
    }

    private final Task<Void> zza(Object obj, xm xmVar, CompletionListener completionListener) {
        zf.zzO(this.zzbZf);
        tn.zza(this.zzbZf, obj);
        obj = zg.zzan(obj);
        zf.zzam(obj);
        xm zza = xp.zza(obj, xmVar);
        za zzb = zd.zzb(completionListener);
        this.zzbYY.zzq(new zzc(this, zza, zzb));
        return (Task) zzb.getFirst();
    }

    private final Task<Void> zza(Map<String, Object> map, CompletionListener completionListener) {
        if (map == null) {
            throw new NullPointerException("Can't pass null for argument 'update' in updateChildren()");
        }
        Map zzG = zg.zzG(map);
        pz zzE = pz.zzE(zf.zzb(this.zzbZf, zzG));
        za zzb = zd.zzb(completionListener);
        this.zzbYY.zzq(new zze(this, zzE, zzb, zzG));
        return (Task) zzb.getFirst();
    }

    public DatabaseReference child(String str) {
        if (str == null) {
            throw new NullPointerException("Can't pass null for argument 'pathString' in child()");
        }
        if (this.zzbZf.isEmpty()) {
            zf.zzhc(str);
        } else {
            zf.zzhb(str);
        }
        return new DatabaseReference(this.zzbYY, this.zzbZf.zzh(new qr(str)));
    }

    public boolean equals(Object obj) {
        return (obj instanceof DatabaseReference) && toString().equals(obj.toString());
    }

    public FirebaseDatabase getDatabase() {
        return this.zzbYY.getDatabase();
    }

    public String getKey() {
        return this.zzbZf.isEmpty() ? null : this.zzbZf.zzHf().asString();
    }

    public DatabaseReference getParent() {
        qr zzHe = this.zzbZf.zzHe();
        return zzHe != null ? new DatabaseReference(this.zzbYY, zzHe) : null;
    }

    public DatabaseReference getRoot() {
        return new DatabaseReference(this.zzbYY, new qr(""));
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public OnDisconnect onDisconnect() {
        zf.zzO(this.zzbZf);
        return new OnDisconnect(this.zzbYY, this.zzbZf);
    }

    public DatabaseReference push() {
        return new DatabaseReference(this.zzbYY, this.zzbZf.zza(wp.zzgT(zc.zzaz(this.zzbYY.zzHi()))));
    }

    public Task<Void> removeValue() {
        return setValue(null);
    }

    public void removeValue(CompletionListener completionListener) {
        setValue(null, completionListener);
    }

    public void runTransaction(Handler handler) {
        runTransaction(handler, true);
    }

    public void runTransaction(Handler handler, boolean z) {
        if (handler == null) {
            throw new NullPointerException("Can't pass null for argument 'handler' in runTransaction()");
        }
        zf.zzO(this.zzbZf);
        this.zzbYY.zzq(new zzf(this, handler, z));
    }

    public Task<Void> setPriority(Object obj) {
        return zza(xs.zzc(this.zzbZf, obj), null);
    }

    public void setPriority(Object obj, CompletionListener completionListener) {
        zza(xs.zzc(this.zzbZf, obj), completionListener);
    }

    public Task<Void> setValue(Object obj) {
        return zza(obj, xs.zzc(this.zzbZf, null), null);
    }

    public Task<Void> setValue(Object obj, Object obj2) {
        return zza(obj, xs.zzc(this.zzbZf, obj2), null);
    }

    public void setValue(Object obj, CompletionListener completionListener) {
        zza(obj, xs.zzc(this.zzbZf, null), completionListener);
    }

    public void setValue(Object obj, Object obj2, CompletionListener completionListener) {
        zza(obj, xs.zzc(this.zzbZf, obj2), completionListener);
    }

    public String toString() {
        DatabaseReference parent = getParent();
        if (parent == null) {
            return this.zzbYY.toString();
        }
        try {
            String valueOf = String.valueOf(parent.toString());
            String valueOf2 = String.valueOf(URLEncoder.encode(getKey(), Key.STRING_CHARSET_NAME).replace("+", "%20"));
            StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 1) + String.valueOf(valueOf2).length());
            stringBuilder.append(valueOf);
            stringBuilder.append("/");
            stringBuilder.append(valueOf2);
            return stringBuilder.toString();
        } catch (UnsupportedEncodingException e) {
            String str = "Failed to URLEncode key: ";
            String valueOf3 = String.valueOf(getKey());
            throw new DatabaseException(valueOf3.length() != 0 ? str.concat(valueOf3) : new String(str), e);
        }
    }

    public Task<Void> updateChildren(Map<String, Object> map) {
        return zza((Map) map, null);
    }

    public void updateChildren(Map<String, Object> map, CompletionListener completionListener) {
        zza((Map) map, completionListener);
    }
}
