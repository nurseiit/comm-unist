package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzbo;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzi;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class cd {
    private final Context mContext;
    private String zzbEa;
    private final co zzbKv;
    private Map<String, cg<db>> zzbKw;
    private final Map<String, cz> zzbKx;
    private final zze zzvw;

    public cd(Context context) {
        this(context, new HashMap(), new co(context), zzi.zzrY());
    }

    private cd(Context context, Map<String, cz> map, co coVar, zze zze) {
        this.zzbEa = null;
        this.zzbKw = new HashMap();
        this.mContext = context.getApplicationContext();
        this.zzvw = zze;
        this.zzbKv = coVar;
        this.zzbKx = map;
    }

    /* Access modifiers changed, original: final */
    public final void zza(Status status, cn cnVar) {
        String containerId = cnVar.zzCU().getContainerId();
        db zzCV = cnVar.zzCV();
        if (this.zzbKw.containsKey(containerId)) {
            cg cgVar = (cg) this.zzbKw.get(containerId);
            cgVar.zzak(this.zzvw.currentTimeMillis());
            if (status == Status.zzaBm) {
                cgVar.zzJ(status);
                cgVar.zzP(zzCV);
            }
            return;
        }
        this.zzbKw.put(containerId, new cg(status, zzCV, this.zzvw.currentTimeMillis()));
    }

    /* Access modifiers changed, original: final */
    public final void zza(cl clVar, List<Integer> list, int i, ce ceVar, @Nullable zzcuo zzcuo) {
        List<Integer> list2 = list;
        int i2 = i;
        while (true) {
            if (i2 == 0) {
                zzcvk.v("Starting to fetch a new resource");
            }
            int i3 = 1;
            String str;
            if (i2 >= list.size()) {
                str = "There is no valid resource for the container: ";
                String valueOf = String.valueOf(clVar.zzCP().getContainerId());
                str = valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
                zzcvk.v(str);
                ceVar.zza(new cm(new Status(16, str), ((Integer) list2.get(i2 - 1)).intValue()));
                return;
            }
            ce ceVar2 = ceVar;
            StringBuilder stringBuilder;
            bz zzCP;
            String valueOf2;
            StringBuilder stringBuilder2;
            switch (((Integer) list2.get(i2)).intValue()) {
                case 0:
                    bz zzCP2 = clVar.zzCP();
                    cg cgVar = (cg) this.zzbKw.get(zzCP2.getContainerId());
                    if (!clVar.zzCP().zzCL()) {
                        if ((cgVar != null ? cgVar.zzCO() : this.zzbKv.zzfR(zzCP2.getContainerId())) + 900000 >= this.zzvw.currentTimeMillis()) {
                            i3 = 0;
                        }
                    }
                    if (i3 != 0) {
                        cz czVar = (cz) this.zzbKx.get(clVar.getId());
                        if (czVar == null) {
                            czVar = new cz();
                            this.zzbKx.put(clVar.getId(), czVar);
                        }
                        cz czVar2 = czVar;
                        str = String.valueOf(zzCP2.getContainerId());
                        stringBuilder = new StringBuilder(String.valueOf(str).length() + 43);
                        stringBuilder.append("Attempting to fetch container ");
                        stringBuilder.append(str);
                        stringBuilder.append(" from network");
                        zzcvk.v(stringBuilder.toString());
                        czVar2.zza(this.mContext, clVar, 0, new cf(this, 0, clVar, ci.zzbKD, list2, i2, ceVar2, zzcuo));
                        return;
                    }
                    i2++;
                case 1:
                    zzCP = clVar.zzCP();
                    valueOf2 = String.valueOf(zzCP.getContainerId());
                    stringBuilder2 = new StringBuilder(String.valueOf(valueOf2).length() + 52);
                    stringBuilder2.append("Attempting to fetch container ");
                    stringBuilder2.append(valueOf2);
                    stringBuilder2.append(" from a saved resource");
                    zzcvk.v(stringBuilder2.toString());
                    this.zzbKv.zza(zzCP.zzCK(), new cf(this, 1, clVar, ci.zzbKD, list2, i2, ceVar2, null));
                    return;
                case 2:
                    zzCP = clVar.zzCP();
                    valueOf2 = String.valueOf(zzCP.getContainerId());
                    stringBuilder2 = new StringBuilder(String.valueOf(valueOf2).length() + 56);
                    stringBuilder2.append("Attempting to fetch container ");
                    stringBuilder2.append(valueOf2);
                    stringBuilder2.append(" from the default resource");
                    zzcvk.v(stringBuilder2.toString());
                    this.zzbKv.zza(zzCP.zzCK(), zzCP.zzCI(), new cf(this, 2, clVar, ci.zzbKD, list2, i2, ceVar2, null));
                    return;
                default:
                    stringBuilder = new StringBuilder(36);
                    stringBuilder.append("Unknown fetching source: ");
                    stringBuilder.append(i2);
                    throw new UnsupportedOperationException(stringBuilder.toString());
            }
        }
    }

    public final void zza(String str, @Nullable String str2, @Nullable String str3, List<Integer> list, ce ceVar, zzcuo zzcuo) {
        String str4;
        boolean z;
        zzbo.zzaf(list.isEmpty() ^ 1);
        cl clVar = new cl();
        zzcvs zzCw = zzcvs.zzCw();
        if (zzCw.isPreview()) {
            str4 = str;
            if (str4.equals(zzCw.getContainerId())) {
                z = true;
                zza(clVar.zza(new bz(str4, str2, str3, z, zzcvs.zzCw().zzCx())), Collections.unmodifiableList(list), 0, ceVar, zzcuo);
            }
        }
        str4 = str;
        z = false;
        zza(clVar.zza(new bz(str4, str2, str3, z, zzcvs.zzCw().zzCx())), Collections.unmodifiableList(list), 0, ceVar, zzcuo);
    }
}
