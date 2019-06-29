package com.google.firebase.database;

import android.support.annotation.Nullable;
import com.google.android.gms.internal.qr;
import com.google.android.gms.internal.xf;
import com.google.android.gms.internal.zf;
import com.google.android.gms.internal.zg;

public class DataSnapshot {
    private final xf zzbYD;
    private final DatabaseReference zzbYE;

    DataSnapshot(DatabaseReference databaseReference, xf xfVar) {
        this.zzbYD = xfVar;
        this.zzbYE = databaseReference;
    }

    public DataSnapshot child(String str) {
        return new DataSnapshot(this.zzbYE.child(str), xf.zzj(this.zzbYD.zzFn().zzN(new qr(str))));
    }

    public boolean exists() {
        return !this.zzbYD.zzFn().isEmpty();
    }

    public Iterable<DataSnapshot> getChildren() {
        return new zza(this, this.zzbYD.iterator());
    }

    public long getChildrenCount() {
        return (long) this.zzbYD.zzFn().getChildCount();
    }

    public String getKey() {
        return this.zzbYE.getKey();
    }

    public Object getPriority() {
        Object value = this.zzbYD.zzFn().zzIR().getValue();
        return value instanceof Long ? Double.valueOf((double) ((Long) value).longValue()) : value;
    }

    public DatabaseReference getRef() {
        return this.zzbYE;
    }

    @Nullable
    public Object getValue() {
        return this.zzbYD.zzFn().getValue();
    }

    @Nullable
    public <T> T getValue(GenericTypeIndicator<T> genericTypeIndicator) {
        return zg.zza(this.zzbYD.zzFn().getValue(), (GenericTypeIndicator) genericTypeIndicator);
    }

    @Nullable
    public <T> T getValue(Class<T> cls) {
        return zg.zza(this.zzbYD.zzFn().getValue(), (Class) cls);
    }

    @Nullable
    public Object getValue(boolean z) {
        return this.zzbYD.zzFn().getValue(z);
    }

    public boolean hasChild(String str) {
        if (this.zzbYE.getParent() == null) {
            zf.zzhc(str);
        } else {
            zf.zzhb(str);
        }
        return !this.zzbYD.zzFn().zzN(new qr(str)).isEmpty();
    }

    public boolean hasChildren() {
        return this.zzbYD.zzFn().getChildCount() > 0;
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzbYE.getKey());
        String valueOf2 = String.valueOf(this.zzbYD.zzFn().getValue(true));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(valueOf).length() + 33) + String.valueOf(valueOf2).length());
        stringBuilder.append("DataSnapshot { key = ");
        stringBuilder.append(valueOf);
        stringBuilder.append(", value = ");
        stringBuilder.append(valueOf2);
        stringBuilder.append(" }");
        return stringBuilder.toString();
    }
}
