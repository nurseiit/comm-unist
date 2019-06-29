package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.zzg;
import com.google.android.gms.drive.metadata.internal.zzm;
import java.util.Arrays;

public class zzbrn extends zzm<AppVisibleCustomProperties> {
    public static final zzg zzaQH = new zzbro();

    public zzbrn(int i) {
        super("customProperties", Arrays.asList(new String[]{"hasCustomProperties", "sqlId"}), Arrays.asList(new String[]{"customPropertiesExtra", "customPropertiesExtraHolder"}), 5000000);
    }

    private static void zzd(DataHolder dataHolder) {
        Bundle zzqN = dataHolder.zzqN();
        if (zzqN != null) {
            synchronized (dataHolder) {
                DataHolder dataHolder2 = (DataHolder) zzqN.getParcelable("customPropertiesExtraHolder");
                if (dataHolder2 != null) {
                    dataHolder2.close();
                    zzqN.remove("customPropertiesExtraHolder");
                }
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: SSATransform
        jadx.core.utils.exceptions.JadxRuntimeException: Not initialized variable reg: 16, insn: 0x0085: MOVE  (r4 ?[OBJECT, ARRAY]) = (r16 ?[OBJECT, ARRAY]), block:B:16:0x0080, method: com.google.android.gms.internal.zzbrn.zzf(com.google.android.gms.common.data.DataHolder, int, int):com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:162)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:184)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:184)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:184)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:184)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:184)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:184)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVar(SSATransform.java:184)
        	at jadx.core.dex.visitors.ssa.SSATransform.renameVariables(SSATransform.java:133)
        	at jadx.core.dex.visitors.ssa.SSATransform.process(SSATransform.java:52)
        	at jadx.core.dex.visitors.ssa.SSATransform.visit(SSATransform.java:42)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:51)
        	at java.lang.Iterable.forEach(Iterable.java:75)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:51)
        	at jadx.core.ProcessClass.process(ProcessClass.java:37)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    private static com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties zzf(com.google.android.gms.common.data.DataHolder r17, int r18, int r19) {
        /*
        r1 = r17;
        r2 = r17.zzqN();
        r3 = "customPropertiesExtra";
        r3 = r2.getSparseParcelableArray(r3);
        if (r3 != 0) goto L_0x00e7;
        r4 = "customPropertiesExtraHolder";
        r4 = r2.getParcelable(r4);
        if (r4 == 0) goto L_0x00e2;
        monitor-enter(r17);
        r3 = r17.zzqN();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = "customPropertiesExtraHolder";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r3 = r3.getParcelable(r4);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r3 = (com.google.android.gms.common.data.DataHolder) r3;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        if (r3 != 0) goto L_0x0028;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        monitor-exit(r17);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        goto L_0x00c7;
        r4 = r3.zzqN();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r5 = "entryIdColumn";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r5 = r4.getString(r5);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = "keyColumn";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = r4.getString(r6);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r7 = "visibilityColumn";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r7 = r4.getString(r7);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r8 = "valueColumn";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = r4.getString(r8);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r8 = new android.support.v4.util.LongSparseArray;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r8.<init>();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r10 = 0;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r11 = r3.getCount();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        if (r10 >= r11) goto L_0x0088;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r11 = r3.zzat(r10);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r12 = r3.zzb(r5, r10, r11);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r14 = r3.zzd(r6, r10, r11);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r15 = r3.zzc(r7, r10, r11);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r11 = r3.zzd(r4, r10, r11);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r9 = new com.google.android.gms.drive.metadata.internal.zzc;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r16 = r4;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = new com.google.android.gms.drive.metadata.CustomPropertyKey;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4.<init>(r14, r15);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r9.<init>(r4, r11);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = r8.get(r12);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = (com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zza) r4;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        if (r4 != 0) goto L_0x0080;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = new com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties$zza;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4.<init>();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r8.put(r12, r4);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4.zza(r9);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r10 = r10 + 1;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = r16;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        goto L_0x004a;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = new android.util.SparseArray;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4.<init>();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r5 = 0;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = r17.getCount();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        if (r5 >= r6) goto L_0x00b0;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = "sqlId";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r7 = r1.zzat(r5);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = r1.zzb(r6, r5, r7);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = r8.get(r6);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = (com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zza) r6;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        if (r6 == 0) goto L_0x00ad;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = r6.zztm();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4.append(r5, r6);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r5 = r5 + 1;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        goto L_0x008e;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r5 = r17.zzqN();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r6 = "customPropertiesExtra";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r5.putSparseParcelableArray(r6, r4);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r3.close();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r3 = r17.zzqN();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = "customPropertiesExtraHolder";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r3.remove(r4);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        goto L_0x0025;
        r1 = "customPropertiesExtra";
        r1 = r2.getSparseParcelableArray(r1);
        r3 = r1;
        goto L_0x00e2;
        r0 = move-exception;
        r2 = r0;
        r3.close();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r3 = r17.zzqN();	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r4 = "customPropertiesExtraHolder";	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r3.remove(r4);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        throw r2;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r0 = move-exception;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        r2 = r0;	 Catch:{ all -> 0x00cf, all -> 0x00de }
        monitor-exit(r17);	 Catch:{ all -> 0x00cf, all -> 0x00de }
        throw r2;
        if (r3 != 0) goto L_0x00e7;
        r1 = com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zzaPG;
        return r1;
        r1 = com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zzaPG;
        r2 = r18;
        r1 = r3.get(r2, r1);
        r1 = (com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties) r1;
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbrn.zzf(com.google.android.gms.common.data.DataHolder, int, int):com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties");
    }

    /* Access modifiers changed, original: protected|final|synthetic */
    public final /* synthetic */ Object zzc(DataHolder dataHolder, int i, int i2) {
        return zzf(dataHolder, i, i2);
    }
}
