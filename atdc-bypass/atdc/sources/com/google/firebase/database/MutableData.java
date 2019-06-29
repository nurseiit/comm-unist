package com.google.firebase.database;

import android.support.annotation.Nullable;
import com.google.android.gms.internal.qr;
import com.google.android.gms.internal.sh;
import com.google.android.gms.internal.tn;
import com.google.android.gms.internal.wp;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xf;
import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xp;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.zf;
import com.google.android.gms.internal.zg;

public class MutableData {
    private final sh zzbZb;
    private final qr zzbZc;

    private MutableData(sh shVar, qr qrVar) {
        this.zzbZb = shVar;
        this.zzbZc = qrVar;
        tn.zza(this.zzbZc, getValue());
    }

    /* synthetic */ MutableData(sh shVar, qr qrVar, zzi zzi) {
        this(shVar, qrVar);
    }

    MutableData(xm xmVar) {
        this(new sh(xmVar), new qr(""));
    }

    public MutableData child(String str) {
        zf.zzhb(str);
        return new MutableData(this.zzbZb, this.zzbZc.zzh(new qr(str)));
    }

    public boolean equals(Object obj) {
        if (obj instanceof MutableData) {
            MutableData mutableData = (MutableData) obj;
            if (this.zzbZb.equals(mutableData.zzbZb) && this.zzbZc.equals(mutableData.zzbZc)) {
                return true;
            }
        }
        return false;
    }

    public Iterable<MutableData> getChildren() {
        xm zzFn = zzFn();
        return (zzFn.isEmpty() || zzFn.zzIQ()) ? new zzi(this) : new zzk(this, xf.zzj(zzFn).iterator());
    }

    public long getChildrenCount() {
        return (long) zzFn().getChildCount();
    }

    public String getKey() {
        return this.zzbZc.zzHf() != null ? this.zzbZc.zzHf().asString() : null;
    }

    public Object getPriority() {
        return zzFn().zzIR().getValue();
    }

    @Nullable
    public Object getValue() {
        return zzFn().getValue();
    }

    @Nullable
    public <T> T getValue(GenericTypeIndicator<T> genericTypeIndicator) {
        return zg.zza(zzFn().getValue(), (GenericTypeIndicator) genericTypeIndicator);
    }

    @Nullable
    public <T> T getValue(Class<T> cls) {
        return zg.zza(zzFn().getValue(), (Class) cls);
    }

    public boolean hasChild(String str) {
        return !zzFn().zzN(new qr(str)).isEmpty();
    }

    public boolean hasChildren() {
        xm zzFn = zzFn();
        return (zzFn.zzIQ() || zzFn.isEmpty()) ? false : true;
    }

    public void setPriority(Object obj) {
        this.zzbZb.zzg(this.zzbZc, zzFn().zzf(xs.zzc(this.zzbZc, obj)));
    }

    public void setValue(Object obj) throws DatabaseException {
        tn.zza(this.zzbZc, obj);
        obj = zg.zzan(obj);
        zf.zzam(obj);
        this.zzbZb.zzg(this.zzbZc, xp.zza(obj, xd.zzJb()));
    }

    public String toString() {
        wp zzHc = this.zzbZc.zzHc();
        Object asString = zzHc != null ? zzHc.asString() : "<none>";
        String valueOf = String.valueOf(this.zzbZb.zzHm().getValue(true));
        StringBuilder stringBuilder = new StringBuilder((String.valueOf(asString).length() + 32) + String.valueOf(valueOf).length());
        stringBuilder.append("MutableData { key = ");
        stringBuilder.append(asString);
        stringBuilder.append(", value = ");
        stringBuilder.append(valueOf);
        stringBuilder.append(" }");
        return stringBuilder.toString();
    }

    /* Access modifiers changed, original: final */
    public final xm zzFn() {
        return this.zzbZb.zzp(this.zzbZc);
    }
}
