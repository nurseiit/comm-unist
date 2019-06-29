package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.zzbrc;
import com.google.android.gms.internal.zzbrn;
import com.google.android.gms.internal.zzbrp;
import com.google.android.gms.internal.zzbrx;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class zzf {
    private static final Map<String, MetadataField<?>> zzaPK = new HashMap();
    private static final Map<String, zzg> zzaPL = new HashMap();

    static {
        zzb(zzbrc.zzaPQ);
        zzb(zzbrc.zzaQw);
        zzb(zzbrc.zzaQn);
        zzb(zzbrc.zzaQu);
        zzb(zzbrc.zzaQx);
        zzb(zzbrc.zzaQd);
        zzb(zzbrc.zzaQc);
        zzb(zzbrc.zzaQe);
        zzb(zzbrc.zzaQf);
        zzb(zzbrc.zzaQg);
        zzb(zzbrc.zzaQa);
        zzb(zzbrc.zzaQi);
        zzb(zzbrc.zzaQj);
        zzb(zzbrc.zzaQk);
        zzb(zzbrc.zzaQs);
        zzb(zzbrc.zzaPR);
        zzb(zzbrc.zzaQp);
        zzb(zzbrc.zzaPT);
        zzb(zzbrc.zzaQb);
        zzb(zzbrc.zzaPU);
        zzb(zzbrc.zzaPV);
        zzb(zzbrc.zzaPW);
        zzb(zzbrc.zzaPX);
        zzb(zzbrc.zzaQm);
        zzb(zzbrc.zzaQh);
        zzb(zzbrc.zzaQo);
        zzb(zzbrc.zzaQq);
        zzb(zzbrc.zzaQr);
        zzb(zzbrc.zzaQt);
        zzb(zzbrc.zzaQy);
        zzb(zzbrc.zzaQz);
        zzb(zzbrc.zzaPZ);
        zzb(zzbrc.zzaPY);
        zzb(zzbrc.zzaQv);
        zzb(zzbrc.zzaQl);
        zzb(zzbrc.zzaPS);
        zzb(zzbrc.zzaQA);
        zzb(zzbrc.zzaQB);
        zzb(zzbrc.zzaQC);
        zzb(zzbrc.zzaQD);
        zzb(zzbrc.zzaQE);
        zzb(zzbrc.zzaQF);
        zzb(zzbrc.zzaQG);
        zzb(zzbrp.zzaQI);
        zzb(zzbrp.zzaQK);
        zzb(zzbrp.zzaQL);
        zzb(zzbrp.zzaQM);
        zzb(zzbrp.zzaQJ);
        zzb(zzbrp.zzaQN);
        zzb(zzbrx.zzaQP);
        zzb(zzbrx.zzaQQ);
        zza(zzo.zzaPP);
        zza(zzbrn.zzaQH);
    }

    private static void zza(zzg zzg) {
        if (zzaPL.put(zzg.zzto(), zzg) != null) {
            String valueOf = String.valueOf(zzg.zzto());
            StringBuilder stringBuilder = new StringBuilder(String.valueOf(valueOf).length() + 46);
            stringBuilder.append("A cleaner for key ");
            stringBuilder.append(valueOf);
            stringBuilder.append(" has already been registered");
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    public static void zzb(DataHolder dataHolder) {
        for (zzg zzc : zzaPL.values()) {
            zzc.zzc(dataHolder);
        }
    }

    private static void zzb(MetadataField<?> metadataField) {
        if (zzaPK.containsKey(metadataField.getName())) {
            String str = "Duplicate field name registered: ";
            String valueOf = String.valueOf(metadataField.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? str.concat(valueOf) : new String(str));
        }
        zzaPK.put(metadataField.getName(), metadataField);
    }

    public static MetadataField<?> zzcR(String str) {
        return (MetadataField) zzaPK.get(str);
    }

    public static Collection<MetadataField<?>> zztn() {
        return Collections.unmodifiableCollection(zzaPK.values());
    }
}
