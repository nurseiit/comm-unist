package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;

public abstract class zzacz extends zzee implements zzacy {
    public zzacz() {
        attachInterface(this, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public static zzacy zzv(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return queryLocalInterface instanceof zzacy ? (zzacy) queryLocalInterface : new zzada(iBinder);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:32:0x009b in {2, 7, 9, 10, 11, 12, 13, 14, 15, 17, 18, 21, 24, 25, 26, 27, 28, 30, 31} preds:[]
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:242)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:42)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(ArrayList.java:1257)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.ProcessClass.process(ProcessClass.java:32)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:292)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
        */
    public boolean onTransact(int r2, android.os.Parcel r3, android.os.Parcel r4, int r5) throws android.os.RemoteException {
        /*
        r1 = this;
        r5 = r1.zza(r2, r3, r4, r5);
        r0 = 1;
        if (r5 == 0) goto L_0x0008;
        return r0;
        r5 = 34;
        if (r2 == r5) goto L_0x0093;
        switch(r2) {
            case 1: goto L_0x0084;
            case 2: goto L_0x0080;
            case 3: goto L_0x0060;
            case 4: goto L_0x0058;
            case 5: goto L_0x004d;
            case 6: goto L_0x0049;
            case 7: goto L_0x0045;
            case 8: goto L_0x0041;
            case 9: goto L_0x0035;
            case 10: goto L_0x0029;
            case 11: goto L_0x001c;
            case 12: goto L_0x0011;
            default: goto L_0x000f;
        };
        r2 = 0;
        return r2;
        r2 = r1.getMediationAdapterClassName();
        r4.writeNoException();
        r4.writeString(r2);
        return r0;
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzh(r2);
        goto L_0x008f;
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzg(r2);
        goto L_0x008f;
        r2 = r3.readStrongBinder();
        r2 = com.google.android.gms.dynamic.IObjectWrapper.zza.zzM(r2);
        r1.zzf(r2);
        goto L_0x008f;
        r1.destroy();
        goto L_0x008f;
        r1.resume();
        goto L_0x008f;
        r1.pause();
        goto L_0x008f;
        r2 = r1.isLoaded();
        r4.writeNoException();
        com.google.android.gms.internal.zzef.zza(r4, r2);
        return r0;
        r2 = r3.readString();
        r1.setUserId(r2);
        goto L_0x008f;
        r2 = r3.readStrongBinder();
        if (r2 != 0) goto L_0x0068;
        r2 = 0;
        goto L_0x007c;
        r3 = "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener";
        r3 = r2.queryLocalInterface(r3);
        r5 = r3 instanceof com.google.android.gms.internal.zzadd;
        if (r5 == 0) goto L_0x0076;
        r2 = r3;
        r2 = (com.google.android.gms.internal.zzadd) r2;
        goto L_0x007c;
        r3 = new com.google.android.gms.internal.zzadf;
        r3.<init>(r2);
        r2 = r3;
        r1.zza(r2);
        goto L_0x008f;
        r1.show();
        goto L_0x008f;
        r2 = com.google.android.gms.internal.zzadj.CREATOR;
        r2 = com.google.android.gms.internal.zzef.zza(r3, r2);
        r2 = (com.google.android.gms.internal.zzadj) r2;
        r1.zza(r2);
        r4.writeNoException();
        return r0;
        r2 = com.google.android.gms.internal.zzef.zza(r3);
        r1.setImmersiveMode(r2);
        goto L_0x008f;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzacz.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
    }
}
