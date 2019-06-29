package com.google.firebase.database;

import com.google.android.gms.internal.px;
import com.google.android.gms.internal.qi;
import com.google.android.gms.internal.qr;
import com.google.android.gms.internal.qu;
import com.google.android.gms.internal.to;
import com.google.android.gms.internal.tt;
import com.google.android.gms.internal.vq;
import com.google.android.gms.internal.vt;
import com.google.android.gms.internal.wo;
import com.google.android.gms.internal.wp;
import com.google.android.gms.internal.xc;
import com.google.android.gms.internal.xd;
import com.google.android.gms.internal.xg;
import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xq;
import com.google.android.gms.internal.xr;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.xu;
import com.google.android.gms.internal.xw;
import com.google.android.gms.internal.zd;
import com.google.android.gms.internal.zf;

public class Query {
    protected final qu zzbYY;
    protected final qr zzbZf;
    private vq zzbZj;
    private final boolean zzbZk;

    Query(qu quVar, qr qrVar) {
        this.zzbYY = quVar;
        this.zzbZf = qrVar;
        this.zzbZj = vq.zzcgZ;
        this.zzbZk = false;
    }

    private Query(qu quVar, qr qrVar, vq vqVar, boolean z) throws DatabaseException {
        this.zzbYY = quVar;
        this.zzbZf = qrVar;
        this.zzbZj = vqVar;
        this.zzbZk = z;
        boolean z2 = (vqVar.zzIe() && vqVar.zzIh() && vqVar.zzIk() && !vqVar.zzIl()) ? false : true;
        zd.zzb(z2, "Validation of queries failed.");
    }

    private final void zzFo() {
        if (this.zzbZj.zzIe()) {
            throw new IllegalArgumentException("Can't call equalTo() and startAt() combined");
        } else if (this.zzbZj.zzIh()) {
            throw new IllegalArgumentException("Can't call equalTo() and endAt() combined");
        }
    }

    private final void zzFp() {
        if (this.zzbZk) {
            throw new IllegalArgumentException("You can't combine multiple orderBy calls!");
        }
    }

    private final Query zza(xm xmVar, String str) {
        zf.zzhd(str);
        if (!xmVar.zzIQ() && !xmVar.isEmpty()) {
            throw new IllegalArgumentException("Can only use simple values for startAt()");
        } else if (this.zzbZj.zzIe()) {
            throw new IllegalArgumentException("Can't call startAt() or equalTo() multiple times");
        } else {
            vq zza = this.zzbZj.zza(xmVar, str != null ? wp.zzgT(str) : null);
            zzb(zza);
            zza(zza);
            return new Query(this.zzbYY, this.zzbZf, zza, this.zzbZk);
        }
    }

    private final void zza(qi qiVar) {
        tt.zzHA().zzj(qiVar);
        this.zzbYY.zzq(new zzq(this, qiVar));
    }

    private static void zza(vq vqVar) {
        if (vqVar.zzIm().equals(xg.zzJh())) {
            xm zzIf;
            String str = "You must use startAt(String value), endAt(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported";
            if (vqVar.zzIe()) {
                zzIf = vqVar.zzIf();
                if (!(vqVar.zzIg() == wp.zzIJ() && (zzIf instanceof xu))) {
                    throw new IllegalArgumentException(str);
                }
            }
            if (vqVar.zzIh()) {
                zzIf = vqVar.zzIi();
                if (!(vqVar.zzIj() == wp.zzIK() && (zzIf instanceof xu))) {
                    throw new IllegalArgumentException(str);
                }
            }
        } else if (vqVar.zzIm().equals(xr.zzJl()) && ((vqVar.zzIe() && !xs.zzl(vqVar.zzIf())) || (vqVar.zzIh() && !xs.zzl(vqVar.zzIi())))) {
            throw new IllegalArgumentException("When using orderByPriority(), values provided to startAt(), endAt(), or equalTo() must be valid priorities.");
        }
    }

    private final Query zzb(xm xmVar, String str) {
        zf.zzhd(str);
        if (xmVar.zzIQ() || xmVar.isEmpty()) {
            wp zzgT = str != null ? wp.zzgT(str) : null;
            if (this.zzbZj.zzIh()) {
                throw new IllegalArgumentException("Can't call endAt() or equalTo() multiple times");
            }
            vq zzb = this.zzbZj.zzb(xmVar, zzgT);
            zzb(zzb);
            zza(zzb);
            return new Query(this.zzbYY, this.zzbZf, zzb, this.zzbZk);
        }
        throw new IllegalArgumentException("Can only use simple values for endAt()");
    }

    private final void zzb(qi qiVar) {
        tt.zzHA().zzi(qiVar);
        this.zzbYY.zzq(new zzr(this, qiVar));
    }

    private static void zzb(vq vqVar) {
        if (vqVar.zzIe() && vqVar.zzIh() && vqVar.zzIk() && !vqVar.zzIl()) {
            throw new IllegalArgumentException("Can't combine startAt(), endAt() and limit(). Use limitToFirst() or limitToLast() instead");
        }
    }

    public ChildEventListener addChildEventListener(ChildEventListener childEventListener) {
        zzb(new px(this.zzbYY, childEventListener, zzFr()));
        return childEventListener;
    }

    public void addListenerForSingleValueEvent(ValueEventListener valueEventListener) {
        zzb(new to(this.zzbYY, new zzp(this, valueEventListener), zzFr()));
    }

    public ValueEventListener addValueEventListener(ValueEventListener valueEventListener) {
        zzb(new to(this.zzbYY, valueEventListener, zzFr()));
        return valueEventListener;
    }

    public Query endAt(double d) {
        return endAt(d, null);
    }

    public Query endAt(double d, String str) {
        return zzb(new xc(Double.valueOf(d), xd.zzJb()), str);
    }

    public Query endAt(String str) {
        return endAt(str, null);
    }

    public Query endAt(String str, String str2) {
        return zzb(str != null ? new xu(str, xd.zzJb()) : xd.zzJb(), str2);
    }

    public Query endAt(boolean z) {
        return endAt(z, null);
    }

    public Query endAt(boolean z, String str) {
        return zzb(new wo(Boolean.valueOf(z), xd.zzJb()), str);
    }

    public Query equalTo(double d) {
        zzFo();
        return startAt(d).endAt(d);
    }

    public Query equalTo(double d, String str) {
        zzFo();
        return startAt(d, str).endAt(d, str);
    }

    public Query equalTo(String str) {
        zzFo();
        return startAt(str).endAt(str);
    }

    public Query equalTo(String str, String str2) {
        zzFo();
        return startAt(str, str2).endAt(str, str2);
    }

    public Query equalTo(boolean z) {
        zzFo();
        return startAt(z).endAt(z);
    }

    public Query equalTo(boolean z, String str) {
        zzFo();
        return startAt(z, str).endAt(z, str);
    }

    public DatabaseReference getRef() {
        return new DatabaseReference(this.zzbYY, this.zzbZf);
    }

    public void keepSynced(boolean z) {
        if (this.zzbZf.isEmpty() || !this.zzbZf.zzHc().equals(wp.zzIM())) {
            this.zzbYY.zzq(new zzs(this, z));
            return;
        }
        throw new DatabaseException("Can't call keepSynced() on .info paths.");
    }

    public Query limitToFirst(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Limit must be a positive integer!");
        } else if (!this.zzbZj.zzIk()) {
            return new Query(this.zzbYY, this.zzbZf, this.zzbZj.zzbW(i), this.zzbZk);
        } else {
            throw new IllegalArgumentException("Can't call limitToLast on query with previously set limit!");
        }
    }

    public Query limitToLast(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Limit must be a positive integer!");
        } else if (!this.zzbZj.zzIk()) {
            return new Query(this.zzbYY, this.zzbZf, this.zzbZj.zzbX(i), this.zzbZk);
        } else {
            throw new IllegalArgumentException("Can't call limitToLast on query with previously set limit!");
        }
    }

    public Query orderByChild(String str) {
        StringBuilder stringBuilder;
        if (str == null) {
            throw new NullPointerException("Key can't be null");
        } else if (str.equals("$key") || str.equals(".key")) {
            stringBuilder = new StringBuilder(String.valueOf(str).length() + 54);
            stringBuilder.append("Can't use '");
            stringBuilder.append(str);
            stringBuilder.append("' as path, please use orderByKey() instead!");
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (str.equals("$priority") || str.equals(".priority")) {
            stringBuilder = new StringBuilder(String.valueOf(str).length() + 59);
            stringBuilder.append("Can't use '");
            stringBuilder.append(str);
            stringBuilder.append("' as path, please use orderByPriority() instead!");
            throw new IllegalArgumentException(stringBuilder.toString());
        } else if (str.equals("$value") || str.equals(".value")) {
            stringBuilder = new StringBuilder(String.valueOf(str).length() + 56);
            stringBuilder.append("Can't use '");
            stringBuilder.append(str);
            stringBuilder.append("' as path, please use orderByValue() instead!");
            throw new IllegalArgumentException(stringBuilder.toString());
        } else {
            zf.zzhb(str);
            zzFp();
            qr qrVar = new qr(str);
            if (qrVar.size() == 0) {
                throw new IllegalArgumentException("Can't use empty path, use orderByValue() instead!");
            }
            return new Query(this.zzbYY, this.zzbZf, this.zzbZj.zza(new xq(qrVar)), true);
        }
    }

    public Query orderByKey() {
        zzFp();
        vq zza = this.zzbZj.zza(xg.zzJh());
        zza(zza);
        return new Query(this.zzbYY, this.zzbZf, zza, true);
    }

    public Query orderByPriority() {
        zzFp();
        vq zza = this.zzbZj.zza(xr.zzJl());
        zza(zza);
        return new Query(this.zzbYY, this.zzbZf, zza, true);
    }

    public Query orderByValue() {
        zzFp();
        return new Query(this.zzbYY, this.zzbZf, this.zzbZj.zza(xw.zzJm()), true);
    }

    public void removeEventListener(ChildEventListener childEventListener) {
        if (childEventListener == null) {
            throw new NullPointerException("listener must not be null");
        }
        zza(new px(this.zzbYY, childEventListener, zzFr()));
    }

    public void removeEventListener(ValueEventListener valueEventListener) {
        if (valueEventListener == null) {
            throw new NullPointerException("listener must not be null");
        }
        zza(new to(this.zzbYY, valueEventListener, zzFr()));
    }

    public Query startAt(double d) {
        return startAt(d, null);
    }

    public Query startAt(double d, String str) {
        return zza(new xc(Double.valueOf(d), xd.zzJb()), str);
    }

    public Query startAt(String str) {
        return startAt(str, null);
    }

    public Query startAt(String str, String str2) {
        return zza(str != null ? new xu(str, xd.zzJb()) : xd.zzJb(), str2);
    }

    public Query startAt(boolean z) {
        return startAt(z, null);
    }

    public Query startAt(boolean z, String str) {
        return zza(new wo(Boolean.valueOf(z), xd.zzJb()), str);
    }

    public final qr zzFq() {
        return this.zzbZf;
    }

    public final vt zzFr() {
        return new vt(this.zzbZf, this.zzbZj);
    }
}
